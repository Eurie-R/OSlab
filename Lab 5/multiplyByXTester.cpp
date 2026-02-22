#include <iostream>
#include "IntArray.h"

using namespace std;

extern void multiplyByX(IntArray *p, int x);

int main() {
    IntArray myArray;
    myArray.size = 5;
    
    // Dynamically allocate array
    myArray.elements = new int[myArray.size];

    // Initialize elements
    for(int i = 0; i < myArray.size; i++) {
        myArray.elements[i] = i + 1;
    }

    // Multiply by x
    multiplyByX(&myArray, 10);

    // Print result
    for(int i = 0; i < myArray.size; i++) {
        cout << myArray.elements[i] << " ";
    }
    cout << endl;

    // Deallocate what you allocate
    delete[] myArray.elements;
    myArray.elements = NULL; 

    return 0;
}