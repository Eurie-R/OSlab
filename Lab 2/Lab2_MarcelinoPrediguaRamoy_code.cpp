// MARCELINO, Jaren
// PREDIGUA, Dave
// RAMOY, Lorenzo Uriel

#include <iostream>
#include <string>

using namespace std;




bool is_digits(std::string s){

    //iterate through the string(char[]) to see if there are non-digit characters
    //and or whitespaces
    //whitespaces and characters = a message 
    //no whitespaces and characters = a number 
    //start at 1 to account for the space after coordinates
    for (int index = 1; index < s.length(); ++index){
        int asc = s[index];
         //check if the ascii values of each character is between 48 and 57(0-9)
        if (!(asc >= 48 && asc <= 57)){
            return false;
    }
    }
    return true;
}


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
        //cout << "Message:" << message << endl;

        //checks for whitespaces to indicate string or int

        

        if (is_digits(message)){
            //if message is a number, convert string to int
            int num = atoi(message.c_str());
            cout << "Agent #" << i << " holds up the number: " << num << endl;
        } else {
            cout << "Agent #" << i << " yells: " << "\"" << message << "\"" << endl;
        }
        

    
    }
    return 0;
}