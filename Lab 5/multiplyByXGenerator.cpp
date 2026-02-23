#include <iostream>
#include <string>
#include "IntArray.h"

using namespace std;

int main(int argc, char* argv[]) {
    // The program must invoked with a single parameter
    if (argc != 2) {
        cerr << "Usage: " << argv[0] << " <size>" << endl;
        return 1;
    }

    // Get the constant x from the command line
    string x_str = argv[1];

    // Mangled function name
    string funcName = "multiplyBy" + x_str;
    int nameLen = funcName.length();
    string mangledName = "_Z" + to_string(nameLen) + funcName + "P8IntArray";

    // Assembly code using cout

    
    return 0;
}