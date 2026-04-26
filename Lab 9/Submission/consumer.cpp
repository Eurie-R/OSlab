#include "shared.h"
#include <iostream>
#include <cstring>
#include <sys/types.h>
#include <sys/ipc.h>
#include <sys/shm.h>
#include <sys/sem.h>
#include <thread>
#include <chrono>
#include <atomic>

using namespace std;

atomic<bool> running(true);

// Function that runs in a separate thread to listen for exit command
// It simply blocks (waits) until the user presses the Enter key,
// then flips our global flag to false to stop the consumer loop.
void listenForExit() {
    cin.get();
    running = false;
}

int main(int argc, char* argv[]) {

    // Command-line argument parsing
    if (argc != 2) {
        cerr << "Usage: " << argv[0] << " <fps>" << endl;
        return 1;
    }

    int fps = stoi(argv[1]); // argv[1] is the target FPS for the consumer

    if (fps < 0) {
        cerr << "FPS cannot be negative." << endl;
        return 1;
    }

    int sleep_ms = 0; 
    // Sleep duration in milliseconds between frame reads, derived from FPS
    // Protected against division by zero if auto-sync (0 FPS) is requested
    if (fps > 0) {
        sleep_ms = 1000 / fps; 
    }

    // System V Shared Memory
    // shmget attempts to access the existing shared memory segment
    // We use the same SHM_KEY and 0666 read/write permissions
    int shmId = shmget(SHM_KEY, sizeof(SharedData), 0666);
    if (shmId == -1) {
        cerr << "Failed to access shared memory segment (shmget)." << endl;
        cerr << "Please ensure the producer is running." << endl;
        return 1;
    }

    // shmat attaches the shared memory segment to the process's address space
    SharedData* shared_data = (SharedData*)shmat(shmId, NULL, 0);
    if (shared_data == (void*)-1) {
        cerr << "Failed to attach shared memory segment (shmat)." << endl;
        return 1;
    }

    // Access the existing semaphore set created by the producer
    // We use the same SEM_KEY to access the set of 2 semaphores
    int semId = semget(SEM_KEY, 2, 0666);
    if (semId == -1) {
        cerr << "Failed to access semaphore set (semget)." << endl;
        return 1;
    }

    // Start the concurrent thread to listen for user input to exit
    thread input_thread(listenForExit);
    input_thread.detach(); // Detach the thread since we don't need to join it later

    cout << "Consumer started. Press Enter to exit." << endl;

    unsigned int last_frame_id = -1;
    int last_current_frame = -1; 
    unsigned int frames_skipped = 0; // Tracks the number of frames skipped by the consumer

    // Main consumer loop
    while (running) {
        
        // Wait on the sync semaphore ONLY if auto-syncing (FPS == 0)
        // sem_num = 1 (targeting the sync semaphore)
        // sem_op = -1 (decrement to wait until the producer increments it)
        // sem_flg = SEM_UNDO (automatically release if the process exits)
        if (fps == 0) {
            struct sembuf sem_wait_sync = {1, -1, SEM_UNDO};
            if (semop(semId, &sem_wait_sync, 1) == -1) {
                // Ignore error if it was caused by the program exiting
                if (!running) break;
                cerr << "Error waiting on sync semaphore." << endl;
                break;
            }
        }

        // Enter critical section by waiting on the mutex semaphore
        // sem_num = 0 (targeting the mutex)
        // sem_op = -1 (decrement to acquire the lock)
        // sem_flg = SEM_UNDO (automatically release the lock if the process exits)
        struct sembuf sem_wait_mutex = {0, -1, SEM_UNDO};
        if (semop(semId, &sem_wait_mutex, 1) == -1) {
            if (!running) break;
            cerr << "Error waiting on mutex semaphore." << endl;
            break;
        }

        // Critical section

        // Check if we have a new frame to display (in case sync signaled multiple times without us reading)
        if (shared_data->frame_id != last_frame_id) {
            
            // Check if the video looped back to the beginning to reset skip tally
            if (last_current_frame != -1 && shared_data->current_frame < last_current_frame) {
                frames_skipped = 0; 
            }
            // Calculate how many frames were skipped since the last read
            else if (last_frame_id != (unsigned int)-1 && shared_data->frame_id > last_frame_id + 1) {
                frames_skipped += shared_data->frame_id - last_frame_id - 1;
            }

            // Print the frame. The frame_data contains the ANSI clear screen sequence.
            cout << shared_data->frame_data << flush;
            cout << "Current frame: " << shared_data->current_frame << " / " << shared_data->total_frames
                 << " (" << frames_skipped << " frames skipped)\n" << flush;
                 
            last_frame_id = shared_data->frame_id;
            last_current_frame = shared_data->current_frame;
        }

        // Critical section end

        // Exit critical section by signaling the mutex semaphore
        struct sembuf sem_signal_mutex = {0, 1, SEM_UNDO};
        if (semop(semId, &sem_signal_mutex, 1) == -1) {
            if (!running) break;
            cerr << "Error signaling mutex semaphore." << endl;
            break;
        }

        // Wait for the next frame read cycle based on the consumer's FPS rate
        if (fps > 0) {
            this_thread::sleep_for(chrono::milliseconds(sleep_ms));
        }
    }

    // Cleanup
    shmdt(shared_data); // Detach from shared memory
    cout << "Consumer exiting safely." << endl;

    return 0;
}