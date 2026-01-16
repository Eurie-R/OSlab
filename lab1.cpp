#include <iostream>
#include <string>

using namespace std;

//Turn the letters after the first letter of name to #
void q3(string name) {
    for (size_t i = 1; i < name.length(); i++) {
        name[i] = '#';
    }
    cout << name << endl;

}

void q4(string name) {
    //Process
    //Check if character is a letter and handle wrap around
    //Add +1 to the ASCII value if it is a letter
    for (int i = 0; i < name.length(); i++) {

        if (name[i] == 'z') {
            name[i] = 'a';
        } else if (name[i] == 'Z') {
            name[i] = 'A';
        } else if ((name[i] >= 'a' && name[i] <= 'z') || (name[i] >= 'A' && name[i] <= 'Z')) {
    
            // Only increment if it's a letter (excluding z/Z which are handled above)
            name[i] = char(int(name[i]) + 1);
        }
        // If it is a space ' ' or symbol, it skips all and remains unchanged
    }
    
    cout << name << endl;
}

// Function for q5
void char_shift(char *c) {
    // Non-letters are ignored automatically
    // If the letter is 'z' or 'Z', it becomes 'a' or 'A'
    // If the letter is between 'a' and 'z' or 'A' and 'Z', it becomes the next letter
    if (*c == 'z') {
        *c = 'a';
    } else if (*c == 'Z') {
        *c = 'A';
    } else if ((*c >= 'a' && *c < 'z') || (*c >= 'A' && *c < 'Z')) {
        (*c) = (*c) + 1;
    }
}

void q5(string name){
    for (int i = 0; i < name.length(); i++) {
        char_shift(&name[i]); 
    }
    cout << name << endl;
}

int main() {
    string name;
    getline(cin, name);
    //Lab1 prints 
    cout << name << endl;
    q3(name);
    q4(name);
    q5(name);
    return 0;
}