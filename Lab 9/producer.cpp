#include "shared.h"
#include <sys/types.h>
#include <sys/ipc.h>
#include <sys/sem.h>
#include <sys/shm.h>
#include <iostream>
#include <fstream>
#include <vector>
#include <string>
#include <thread>      // std::thread, std::this_thread::sleep_for
#include <chrono>      // std::chrono::milliseconds
#include <atomic>      // std::atomic<bool> for thread-safe flags
#include <cstring>     // strncpy

using namespace std;

atomic <bool> running(true); // Flag to control the producer thread

// Function that runs in a separate thread to produce video frames
// It simply blocks (waits) until the user presses the Enter key, 
// then flips our global flag to false to stop the producer loop.
void listenForExit() {
    cin.get(); // Blocks until Enter is pressed
    running = false;
}

int main(int argc, char* argv[]) {

    // Command-line argument parsing
    
    if (argc != 3) {
        cerr << "Usage: " << argv[0] << " <video.txt> <total_frames>" << endl;
        return 1;
    }

    string file_path = argv[1];
    int total_frames = stoi(argv[2]);

    if (total_frames <= 0) {
        cerr << "Total frames must be a positive integer." << endl;
        return 1;
    }

    // Video file parsing
    vector<string> frames;
    ifstream file(file_path);

    if (!file.is_open()) {
        cerr << "Error opening file: " << file_path << endl;
        return 1;
    }

    string current_frame = "";
    char c;

    while (file.get(c)) {
        // Check for ASCII 27 (ESC) to denote the end of a frame
        if (c == 27) {
            if (file.peek() == 'c') {
                file.get(c); // Consume the 'c' character

                if (!current_frame.empty()) {
                frames.push_back(current_frame);
                current_frame.clear();
            }

            // Start with a new frame after the ESC character
            current_frame += "\033c";
            continue; 
            }
        }
        // Append the character to the current frame
        current_frame += c;
    }

    // Push the last frame if it exists
    if (!current_frame.empty()) {
        frames.push_back(current_frame);
    }

    file.close();

    if (frames.empty()) {
        cerr << "No frames found in the file." << endl;
        return 1;
    }

    cout << "Successfully loaded " << frames.size() << " frames from the file." << endl;

    // System V Shared Memory
    // shmget attempts to create a shared memory segment
    // IPC_CREAT creates the segment if it doesn't exist, and returns its identifier (shmid)
    // 0666 read/write permissions for everyone
    int shmId = shmget(SHM_KEY, sizeof(SharedData), IPC_CREAT | 0666);
    if (shmId == -1) {
        cerr << "Failed to create shared memory segment (shmget)." << endl;
        return 1;
    }

    // shmat attaches the shared memory segment to the process's address space
    SharedData* shared_data = (SharedData*)shmat(shmId, NULL, 0);
    if (shared_data == (void*)-1) {
        cerr << "Failed to attach shared memory segment (shmat)." << endl;
        return 1;
    }

    int semId = semget(SEM_KEY, 2, IPC_CREAT | 0666);
    if (semId == -1) {
        cerr << "Failed to create semaphore set (semget)." << endl;
        return 1;
    }

    // Initialize the starting values of semaphores
    // Mutex starts at 1 (unlocked state)
    // Sync starts at 0 (producer will wait until consumer signals)
    union semun sem_union;

    sem_union.val = 1; // Mutex starts unlocked
    semctl(semId, 0, SETVAL, sem_union); // Initialize mutex semaphore
    sem_union.val = 0; // Sync starts at 0
    semctl(semId, 1, SETVAL, sem_union); // Initialize sync semaphore

    // Start the concurrent thread to listen for user input to exit
    thread input_thread(listenForExit);
    input_thread.detach(); // Detach the thread since we don't need to join it later

    // Main producer loop
    unsigned int global_frame_id = 0; // Unique identifier for each frame
    int sleep_ms = 100; // Sleep duration in milliseconds between frame productions

    while (running) {

        // Loop through the pre-laoded frames 
        for (size_t i = 0; i < frames.size() && running; ++i) {

            // Enter critical section by waiting on the mutex semaphore
            // sem_num = 0 (targeting the mutex)
            // sem_op = -1 (decrement to acquire the lock)
            // sem_flg = SEM_UNDO (automatically release the lock if the process exits)
            
            struct sembuf sem_wait_mutex = {0, -1, SEM_UNDO};

            semop(semId, &sem_wait_mutex, 1); // Wait

            // Write to shared memory
            shared_data->current_frame = i + 1; // Current frame index (1-based)
            shared_data->total_frames = frames.size(); // Total number of frames
            shared_data->frame_id = global_frame_id++; // Unique identifier for the frame

            // Copy the string frame data into the shared memory buffer
            strncpy(shared_data->frame_data, frames[i].c_str(), MAX_FRAME_SIZE - 1);
            shared_data->frame_data[MAX_FRAME_SIZE - 1] = '\0'; // Ensure null-termination

            // Exit critical section by signaling the mutex semaphore
            struct sembuf sem_signal_mutex = {0, 1, SEM_UNDO};
            semop(semId, &sem_signal_mutex, 1); // Signal

            // Signal sync semaphore
            struct sembuf sem_signal_sync = {1, 1, SEM_UNDO}; // sem_num = 1 for sync
            semop(semId, &sem_signal_sync, 1); // Signal

            // Wait for the next frame production cycle
            this_thread::sleep_for(chrono::milliseconds(sleep_ms));
        }
    }

    // Cleanup
    shmdt(shared_data); // Detach from shared memory

    cout << "Producer exiting safely." << endl;

    return 0;
}