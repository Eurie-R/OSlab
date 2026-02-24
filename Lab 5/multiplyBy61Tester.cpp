#include <iostream> 
#include "IntArray.h" 
 
using namespace std;

extern void multiplyBy61(IntArray *p); 
 
int main() { 
    IntArray myArray;
    myArray.size = 5;
    myArray.elements = new int[myArray.size];

    // Initialize array with 1, 2, 3, 4, 5
    cout << "Original Array: ";
    for (int i = 0; i < myArray.size; i++) {
        myArray.elements[i] = i + 1;
        cout << myArray.elements[i] << " ";
    }
    cout << endl;

    // Call the generated assembly function
    multiplyBy61(&myArray);

    // Print the results
    cout << "After multiplying by 61: ";
    for (int i = 0; i < myArray.size; i++) {
        cout << myArray.elements[i] << " ";
    }
    cout << endl;

    // Clean up memory
    delete[] myArray.elements;

    return 0;
}