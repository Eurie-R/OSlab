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

    if (s.empty()) {
        return false;
    }

    for (int index = 0; index < s.length(); ++index){
        int asc = s[index];
         //check if the ascii values of each character is between 48 and 57(0-9)
        if (!(asc >= 48 && asc <= 57)){
            return false;
    }
    }
    return true;
}


string trim_spaces(string s) {
    
    // Find the index of the first character that is not a space
    // 'string::npos' is a special constant to indicate that a character (in this case) as not found 
    // size_t is used because find_first_not_of returns this type
    size_t start = s.find_first_not_of(" ");

    // If start is npos, the string is entirely spaces or empty
    if (start == string::npos) {
        return "";
    }

    // Find the index of the last character that is not a space
    size_t end = s.find_last_not_of(" ");

    // Returns the substring containing only the text 
    // substr(start_index , length), where length is end - start + 1
    // Ex: indices 2 to 4 (2, 3, 4) has 3 items, so we add + 1 to get 3
    // 4 - 2 + 1 = 3

    return s.substr(start, end - start + 1);
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

        //Checks for whitespaces to indicate string or int
        string clean_message = trim_spaces(message);
        

        if (is_digits(clean_message)){
            //if message is a number, convert string to int
            int num = atoi(clean_message.c_str());
            cout << "Agent #" << i << " holds up the number: " << num << endl;
        } else {
            cout << "Agent #" << i << " yells: " << "\""<< clean_message << "\"" << endl;
        }
    }
    return 0;
}