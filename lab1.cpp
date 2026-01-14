#include <iostream>
using namespace std;

//Turn the letters after the first letter of name to #
void q3(string name) {
    for (size_t i = 1; i < name.length(); i++) {
        name[i] = '#';
    }
    cout << name << endl;

}


//Get ASCII values of the characters in name then +1 
void q4(string name) {
    //Process
    //Get ASCII of the letter
    //add +1 to the ASCII value
    //Convert back to character
    for (int i = 0; i < name.length(); i++) {
        name[i] = char(int(name[i]) + 1);
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
    } else if ((*c >= 'a' && *c <= 'z') || (*c >= 'A' && *c <= 'Z')) {
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
    cin >> name;
    //Lab1 prints 
    cout << name << endl;
    q3(name);
    q4(name);
    q5(name);
    return 0;
}