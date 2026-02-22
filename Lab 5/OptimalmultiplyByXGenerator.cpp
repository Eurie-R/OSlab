
//Decompress k into a set of bitwise operations that can be used to multiply by k 

struct BitwiseShifts{
    int shift_ammount; // How many bits to shift left of the original number
    long long multiplier; // 2^shift_amount 
};

// Decomposition 

// Decompress k into a list of bitwise shifts and multipliers for russian peasant 
// check if k is odd, if so we record the current multiplier and increment the shift ammount

//Example for 61
// 61 = 0b111101 
// 61 = 32 + 16 + 8 + 4 + 1 
// 61 = (1 << 5) + (1 << 4) + (1 << 3) + (1 << 2) + (1 << 0)
// BitwiseShifts = [
//     {5, 32},
//     {4, 16},
//     {3, 8},
//     {2, 4},
//     {0, 1}
// ]

#include <iostream>
#include <vector>
#include <cstdlib>

std::vector<BitwiseShifts> decompose_k(int K){
    std::vector<BitwiseShifts> shifts;
    int shift_ammount = 0;
    int k = K;

    while (k > 0){
        if (k & 1) { //We check if its odd based on the LSB 
            long long multiplier = (1LL << shift_ammount); // 2^shift_amount
            shifts.push_back({shift_ammount, multiplier});
        }
        k >>= 1; //Right shift to check next bit 
        shift_ammount++;
    }
    return shifts;
}

int russianPeasantMultiply(int k, const std::vector<BitwiseShifts>& shifts) {
    int result = 0;
    for (const auto& shift : shifts) {
        result += (k << shift.shift_ammount); // multiply k by 2^shift_ammount
    }
    return result; 
}

//Multiply Array by K 
void RussianMultiplyByK(IntArray& arr, const std::vector<BitwiseShifts>& shifts){
    for (int i = 0; i < arr.size; i++) {
        arr.elements[i] = russianPeasantMultiply(arr.elements[i], shifts);
    }
}