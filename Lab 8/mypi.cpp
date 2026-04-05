//mypi.cpp

#include <iostream>   // std::cout, std::cerr
#include <iomanip>    // std::setprecision
#include <cstdlib>    // std::atoi, std::strtol
#include <random>     // std::mt19937_64, std::uniform_real_distribution (thread-safe RNG)
#include <pthread.h>  // pthread_create, pthread_join, pthread_mutex_t


// lock that ensures only one thread can execute a "critical section" of code at a time. 
// multiple threads printing to std::cout simultaneously can produce garbled/interleaved output.
// When we aggregate final results, we must ensure no two threads update the shared totals at the same time (race condition).
// initializes the mutex so we don't need to call pthread_mutex_init().
pthread_mutex_t printMutex = PTHREAD_MUTEX_INITIALIZER;

// shared global variables for aggregating results across threads
long long totalCircleHits = 0;  // sum of all threads' circle hits
long long totalTrials = 0;  // sum of all threads' trial counts


// Since pthread_create only allows passing a SINGLE void* argument to the thread function, we bundle everything a thread needs into a struct.
// We then pass a pointer to this struct (cast to void*) when creating
// the thread, and cast it back inside the thread function.
struct ThreadArg {
    int threadId;  // which thread number this is (0, 1, 2, ...)
    long long numTrials;   // how many random samples this thread should generate
    long long progressInterval; // print progress every this many trials
};


// This is the function each thread will execute. It must have the signature void* functionName(void* arg)
// The void* parameter is a generic pointer that we cast back to our struct.
// The void* return value can be used to pass data back, but we use shared globals instead. 
void* monteCarloWorker(void* arg) {
    ThreadArg* params = (ThreadArg*) arg;
    int id = params->threadId;
    long long trials = params->numTrials;
    long long p = params->progressInterval;

    // random number generator setup

    // dont use rand(). 
    // rand() uses a single global state. If multiple threads call rand() simultaneously, they corrupt that shared state → undefined behavior.

    // SEED STRATEGY: We combine std::random_device output with the thread ID to ensure
    // each thread gets a distinct seed, even if random_device returns
    // similar values on fast successive calls.
    std::random_device rd; //A non-deterministic random number source used to generate seeds.
    std::mt19937_64 rng(rd() + id);  // Mersenne Twister engine (64-bit), each thread has own engine with unique seed. no shared state between threads.
    std::uniform_real_distribution<long double> dist(-1.0L, 1.0L); //Produces uniformly distributed values in the range [-1.0, 1.0].


    // Run the Monte Carlo simulation
    long long circleCount = 0;  // how many points fell inside the circle

    for (long long t = 1; t <= trials; t++) {
        // Generate a random point (x, y) where x, y ∈ [-1, 1]
        long double x = dist(rng);
        long double y = dist(rng);

        // Check if the point is inside the unit circle: x² + y² ≤ 1
        if (x * x + y * y <= 1.0L) {
            circleCount++;
        }

        
        // If the current trial number is divisible by p, print progress.
        // We lock the mutex so that only one thread prints at a time,
        // preventing garbled output from interleaved writes.
        // 
        // The estimate formula:
        // π ≈ 4.0 * (circleCount / currentTrial)
        // 
        // We print with 18 significant digits using long double precision.
        if (t % p == 0) {
            long double estimate = 4.0L * (long double)circleCount / (long double)t;

            // lock the mutex before printing
            pthread_mutex_lock(&printMutex);

            std::cout << "Thread " << id << ": "
                      << circleCount << " / " << t
                      << " (estimate: "
                      << std::setprecision(18) << estimate
                      << ")" << std::endl;

            // unlock the mutex so other threads can print
            pthread_mutex_unlock(&printMutex);
        }
    }

    // Aggregate this thread's results into the global totals
    // We must lock the mutex to avoid a RACE CONDITION.
    // Without the lock, two threads could read totalCircleHits at the same
    // time, each add their own value, and write back 
    // causing one thread's contribution to be lost.
    pthread_mutex_lock(&printMutex);
    totalCircleHits += circleCount;
    totalTrials += trials;
    pthread_mutex_unlock(&printMutex);

    return NULL;
}


int main(int argc, char* argv[]) {
    

    // argc counts the program name itself, so we expect exactly 4:
    // argv[0] = "./mypi.out"
    // argv[1] = number of threads
    // argv[2] = number of trials per thread
    // argv[3] = progress reporting interval
    if (argc != 4) {
        std::cerr << "Usage: " << argv[0]
                  << " <num_threads> <trials_per_thread> <progress_interval>"
                  << std::endl;
        return 1;
    }

    int numThreads = std::atoi(argv[1]);
    long long numTrials  = std::atoll(argv[2]);
    long long progressP  = std::atoll(argv[3]);

    // validation
    if (numThreads <= 0) {
        std::cerr << "Error: Number of threads must be a positive integer." << std::endl;
        return 1;
    }
    if (numTrials <= 0) {
        std::cerr << "Error: Number of trials must be a positive integer." << std::endl;
        return 1;
    }
    if (progressP <= 0) {
        std::cerr << "Error: Progress interval must be a positive integer." << std::endl;
        return 1;
    }

    //arrays for thread handles and argument structs
    // pthread_t: An opaque type representing a thread. We need one per thread so we can later call pthread_join() on each.
    // ThreadArg: Our custom struct holding per-thread configuration.Each thread gets its own struct so they don't share/overwrite each other's parameters.
    pthread_t* threads = new pthread_t[numThreads];
    ThreadArg* args = new ThreadArg[numThreads];

    // launch all threads
    // pthread_create() starts a new thread that immediately begins executing the specified function (monteCarloWorker). 
    // The thread runs CONCURRENTLY with the main thread and all other threads.
    //
    // Parameters:
    // &threads[i]: where to store the thread handle
    // NULL: default thread attributes (stack size, etc.)
    // monteCarloWorker: the function the thread will run
    // (void*)&args[i]: pointer to this thread's argument struct, cast to void* as required by the API
    for (int i = 0; i < numThreads; i++) {
        args[i].threadId = i;
        args[i].numTrials = numTrials;
        args[i].progressInterval = progressP;

        int rc = pthread_create(&threads[i], NULL, monteCarloWorker, (void*)&args[i]);
        if (rc != 0) {
            std::cerr << "Error: pthread_create failed for thread " << i
                      << " with error code " << rc << std::endl;
            return 1;
        }
    }

    // Wait for all threads to finish (join them back to the main thread).
    // pthread_join() BLOCKS the calling thread (main) until the specified thread finishes.
    // If main() exits before threads finish, all threads are killed.
    
    // We need all threads' results aggregated before computing the final answer.
    for (int i = 0; i < numThreads; i++) {
        pthread_join(threads[i], NULL);
    }


    // Each thread contributed its circleCount and trialCount to the globals.
    // π ≈ 4.0 * (totalCircleHits / totalTrials)
    long double piEstimate = 4.0L * (long double)totalCircleHits / (long double)totalTrials;

    std::cout << "Final result: " << std::setprecision(18) << piEstimate << std::endl;

    // clean
    delete[] threads;
    delete[] args;

    return 0;
}
