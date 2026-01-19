// MARCELINO, Jaren
// PREDIGUA, Dave
// RAMOY, Lorenzo Uriel

#include <iostream>
#include <string>

using namespace std;

int main() {
    int N;
    // Read the first line: A single positive integer N
    if (!(cin >> N)) return 0;

    // cin >> N leaves a newline character in the input buffer
    // So we "consume" it with dummy line
    string dummy_line;
    getline(cin, dummy_line);

    // Starting ordinal I at 1
    for (int i = 1; i <= N; ++i) {
        int x, y;

        // Read the next line of text: int X and Y
        cin >> x >> y;
        
        // "Consume" the rest of the line 
        string message;
        getline(cin, message);

        // Display the agent's coordinates
        cout << "Agent #" << i << " is at (" << x << ", " << y << ")" << endl;
    }

    return 0;

}