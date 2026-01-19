// MARCELINO, Jaren
// PREDIGUA, Dave
// RAMOY, Lorenzo Uriel

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
    // Process
    // Wraps 'z' to 'a' and 'Z' to 'A' and increments any other letter by 1
    for (int i = 0; i < name.length(); i++) {

        if (name[i] == 'z') {
            name[i] = 'a';
        } else if (name[i] == 'Z') {
            name[i] = 'A';
        } else if ((name[i] >= 'a' && name[i] <= 'z') || (name[i] >= 'A' && name[i] <= 'Z')) {
            name[i] = char(int(name[i]) + 1);
        }
    }
    cout << name << endl;
}

// Function for q5
void char_shift(char *c) {
    // Helper function that takes a pointer to a single character
    // It modifies the character in memory to the next letter, and also
    // handling wrap around for 'z'/'Z'
    if (*c == 'z') {
        *c = 'a';
    } else if (*c == 'Z') {
        *c = 'A';
    } else if ((*c >= 'a' && *c < 'z') || (*c >= 'A' && *c < 'Z')) {
        (*c) = (*c) + 1;
    }
}

// Performs the same letter shifting as q4 but also uses helper function 
// char_shift to show pointer usage, wherein it passes the address of each
// character to the helper
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