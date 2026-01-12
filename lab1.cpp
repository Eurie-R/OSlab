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

void q5(string name){
    
}

int main() {
    string name;
    cin >> name;
    //Lab1 prints 
    cout << name << endl;
    q3(name);
    q4(name);
    return 0;
}