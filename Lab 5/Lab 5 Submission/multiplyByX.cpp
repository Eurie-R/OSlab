#include "IntArray.h"

// Multiply each element in the given IntArray by x
void multiplyByX(IntArray *p, int x) {
    for (int i = 0; i < p->size; i++) {
        p->elements[i] = p->elements[i] * x;
    }
}