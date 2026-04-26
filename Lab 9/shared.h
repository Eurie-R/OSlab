#ifndef SHARED_H
#define SHARED_H

#include <sys/types.h>  // key_t, pid_t
#include <sys/ipc.h>    // IPC_CREAT, IPC_RMID

// IPC keys for shared memory and semaphores
// Both the producer and consumer processes must use the 
// same keys to access the same shared memory segment and semaphore set.
const key_t SHM_KEY = 1234;
const key_t SEM_KEY = 1234;

// include max frame size constant so both producer and consumer can use it
const int MAX_FRAME_SIZE = 1024 * 1024; // 1 MB max frame size

// Shared memory structure to hold a video frame and synchronization flags
struct SharedData {
    int current_frame; // index of the current frame in the buffer
    int total_frames;  // total number of frames in the video
    unsigned int frame_id; // unique identifier for the current frame (e.g., frame number)
    char frame_data[MAX_FRAME_SIZE]; // buffer to hold the raw frame data
};

// Semaphore union
union semun {
    int val;                // value for SETVAL
    struct semid_ds* buf;   // buffer for IPC_STAT, IPC_SET
    unsigned short* array;  // array for GETALL, SETALL
    struct seminfo* __buf;  // buffer for IPC_INFO (Linux-specific)
};

#endif // SHARED_H