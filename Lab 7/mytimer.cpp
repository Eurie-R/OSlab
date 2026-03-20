#include <iostream>
#include <unistd.h>
#include <ctime>
#include <stdio.h> 
#include <string> 

using namespace std;

int main() {
    pid_t pid1 = fork();

    if (pid1 == 0) {
        // insert code for first child process  
        // First child process: execute xclock with process name "myXclock"
        execl("/usr/bin/xclock", "myXclock", NULL);

        // If execl returns, it means it failed
        perror("execl failed");
return 1;
        
    } else {
        pid_t pid2 = fork();

        if (pid2 == 0) {
            // insert code for second child process
            // Second child process: wait for Enter key
            string input;
            getline(cin, input);

            // Print "Terminated." with quotes and exit
            cout << "\"Terminated.\"" << endl;
            return 0;
            
        } else {
            // Parent Process
            int printCount = 0;

            while (true) {
                // Sleep for 3 seconds to avoid busy-waiting
                sleep(3); 
                printCount++;

                // Fetch the current time
                time_t now = time(0);
                tm *ltm = localtime(&now);

                // Print the date/time using printf for zero padding
                // Format: [yyyy-mm-dd] hh:mm:ss
                printf("[%04d-%02d-%02d] %02d:%02d:%02d\n",
                       1900 + ltm->tm_year,
                       1 + ltm->tm_mon,
                       ltm->tm_mday,
                       ltm->tm_hour,
                       ltm->tm_min,
                       ltm->tm_sec);

                // Print the exact extra message every 3rd print out
                if (printCount % 3 == 0) {
                    cout << "\"This program has gone on for far too long. Close the myXclock window or press Enter on this window to exit.\"" << endl;
                }
            }
        }
    }

    return 0;
}