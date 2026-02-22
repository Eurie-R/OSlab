#include <iostream>
#include "IntArray.h"
#include "OptimalmultiplyByXGenerator.cpp" // Include the implementation of decompose_k for testing
#include "multiplyByX.cpp" // Include the implementation of multiplyByX for testing

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


    // ****************************
    //     RUSSIAN PEASANT TEST   *
    // ****************************
    IntArray myArray2;
    myArray2.size = 5;
    myArray2.elements = new int[myArray2.size];

    for(int i = 0; i < myArray2.size; i++) {
        myArray2.elements[i] = i + 1;
    }

    int k = 37; // Example multiplier

    cout << "Original Array: ";
    for (int i = 0; i < myArray2.size; i++) {
        cout << myArray2.elements[i] << " ";
    }
    cout << endl;
    
   
    vector<BitwiseShifts> shifts = decompose_k(k); // Decompose k into bitwise shifts
    RussianMultiplyByK(myArray2, shifts); // Multiply array by k using the Russian Peasant method 

    cout << "Array after multiplying by " << k << ": ";
    for (int i = 0; i < myArray2.size; i++) {
        cout << myArray2.elements[i] << " ";
    }
    cout << endl;


    // Deallocate what you allocate 
    delete[] myArray2.elements;
    myArray2.elements = NULL; 


    return 0;
}