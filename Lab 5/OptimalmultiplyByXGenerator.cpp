
//Decompress k into a set of bitwise operations that can be used to multiply by k 

struct ShiftAddOp{
    int shift_ammount; // How many bits to shift left of the original number
    long long multiplier; // 2^shift_ammount 
};

// Decomposition 

// Decompress k into a list of bitwise shifts and multipliers for russian peasant 
// check if k is odd, if so we record the current multiplier and increment the shift ammount

//Example for 61
// 61 = 0b111101 
// 61 = 32 + 16 + 8 + 4 + 1 
// 61 = (1 << 5) + (1 << 4) + (1 << 3) + (1 << 2) + (1 << 0)
// ShiftAddOp = [
//     {5, 32},
//     {4, 16},
//     {3, 8},
//     {2, 4},
//     {0, 1}
// ]

#include <iostream>
#include <vector>
#include <cstdlib>
#include <cstdlib>
#include "IntArray.h"
using namespace std;

std::vector<ShiftAddOp> decompose_k(int K){
    std::vector<ShiftAddOp> shifts;
    int shift_ammount = 0;
    int k = K;

    while (k > 0){
        if (k & 1) { //We check if its odd based on the LSB 
            long long multiplier = (1LL << shift_ammount); // 2^shift_ammount
            shifts.push_back({shift_ammount, multiplier});
        }
        k >>= 1; //Right shift to check next bit 
        shift_ammount++;
    }
    return shifts;
}

int russianPeasantMultiply(int k, const std::vector<ShiftAddOp>& shifts) {
    int result = 0;
    for (const auto& shift : shifts) {
        result += (k << shift.shift_ammount); // multiply k by 2^shift_ammount
    }
    return result; 
}

//Multiply Array by K 
void RussianMultiplyByK(IntArray& arr, const std::vector<ShiftAddOp>& shifts){
    for (int i = 0; i < arr.size; i++) {
        arr.elements[i] = russianPeasantMultiply(arr.elements[i], shifts);
    }
}


void emitShiftAddMultiply(const vector<ShiftAddOp>& ops) {

    // Zero the accumulator — eax will hold our running result
    cout << "\t#NO IMUL: Russian Peasant shift-and-add begins" << endl;
    cout << "\txorl\t%eax, %eax\t\t\t# result = 0" << endl;

    for (const auto& op : ops) {
        //Checker
        cout << "\t# bit " << op.shift_ammount
             << ": result += (ecx << " << op.shift_ammount
             << ")  [contributes " << op.multiplier << "x]" << endl;

        if (op.shift_ammount == 0) {
            // Bit 0: shifting by 0 is a no-op, just add the original value
            cout << "\taddl\t%ecx, %eax\t\t\t" << endl;
        } else {
            // Copy ecx into scratch, shift the scratch, accumulate
            cout << "\tmovl\t%ecx, %r8d\t\t\t" << endl;
            cout << "\tshll\t$" << op.shift_ammount
                 << ", %r8d\t\t\t\t# r8d = ecx << " << op.shift_ammount
                 << "  (ecx * " << op.multiplier << ")" << endl;
            cout << "\taddl\t%r8d, %eax\t\t\t" << endl;
        }
    }

    cout << "\t# --- Russian Peasant shift-and-add ends ---" << endl;
}


#ifndef TESTING
int main(int argc, char* argv[]) {

    if (argc != 2) {
        cerr << "Usage: " << argv[0] << " <multiplier>" << endl;
        return 1;
    }

    string x_str = argv[1];
    int    K     = atoi(argv[1]);

    if (K <= 0) {
        cerr << "Error: multiplier must be a positive integer." << endl;
        return 1;
    }

    // Decompose K once — this drives everything below
    vector<ShiftAddOp> ops = decompose_k(K);

    // Mangled name setup (unchanged from your original)
    string funcName   = "multiplyBy" + x_str;
    int    nameLen    = funcName.length();
    string mangledName = "_Z" + to_string(nameLen) + funcName + "P8IntArray";

    // Assembly code using cout
    // Header
    cout << "\t.file\t\"" << funcName << ".cpp\"" << endl;
    cout << "\t.text" << endl;
    cout << "\t.globl\t" << mangledName << endl;
    cout << "\t.type\t" << mangledName << ", @function" << endl;
    cout << mangledName << ":" << endl;
    cout << ".LFB0:" << endl;
    cout << "\t.cfi_startproc" << endl;
    cout << "\tendbr64" << endl;
    // Stack frame setup
    cout << "\tpushq\t%rbp" << endl;
    cout << "\t.cfi_def_cfa_offset 16" << endl;
    cout << "\t.cfi_offset 6, -16" << endl;
    cout << "\tmovq\t%rsp, %rbp" << endl;
    cout << "\t.cfi_def_cfa_register 6" << endl;
    
    // Used the multiplyBy61.s as a template
    // Saving the parameters and setting the loop counter
    cout << "\tmovq\t%rdi, -24(%rbp)" << endl;              // %rdi = first argument: IntArray* p
    cout << "\tmovl\t%esi, -28(%rbp)" << endl;              // %esi = second argument: int x
    cout << "\tmovl\t$0, -4(%rbp)" << endl;                 // stores loop index
    cout << "\tjmp\t.L2" << endl;
    
    // Body
    // Address calculation
    cout << ".L3:" << endl;
    cout << "\tmovq\t-24(%rbp), %rax" << endl;              // %rax = p
    cout << "\tmovq\t8(%rax), %rax" << endl;                // %rax = p->data
    cout << "\tmovl\t-4(%rbp), %edx" << endl;               // %edx = i
    cout << "\tmovslq\t%edx, %rdx" << endl;                 // %rdx = i
    cout << "\tsalq\t$2, %rdx" << endl;                     // %rdx = i * 4
    cout << "\taddq\t%rdx, %rax" << endl;                   // %rax = &elements[i]
    cout << "\tmovl\t(%rax), %ecx" << endl;                 // %ecx = elements[i]
    // Reloading the registers
    // We do this to make sure we are using corrent values
    cout << "\tmovq\t-24(%rbp), %rax" << endl;
    cout << "\tmovq\t8(%rax), %rax" << endl;
    cout << "\tmovl\t-4(%rbp), %edx" << endl;
    cout << "\tmovslq\t%edx, %rdx" << endl;
    cout << "\tsalq\t$2, %rdx" << endl;
    cout << "\taddq\t%rax, %rdx" << endl;
    
    // Russian Peasant
    emitShiftAddMultiply(ops);

    cout << "\tmovl\t%eax, (%rdx)" << endl;                 // Store it into elements[i]
    cout << "\taddl\t$1, -4(%rbp)" << endl;                 // Increment i (loop counter)
    
    cout << ".L2:" << endl;
    cout << "\tmovq\t-24(%rbp), %rax" << endl;
    cout << "\tmovl\t(%rax), %eax" << endl;
    cout << "\tcmpl\t%eax, -4(%rbp)" << endl;
    cout << "\tjl\t.L3" << endl;
    
        
    // Metadata
    cout << "\tnop" << endl;
    cout << "\tnop" << endl;
    cout << "\tpopq\t%rbp" << endl;
    cout << "\t.cfi_def_cfa 7, 8" << endl;
    cout << "\tret" << endl;                                // Return to caller
    cout << "\t.cfi_endproc" << endl;
    
    cout << ".LFE0:" << endl;
    cout << "\t.size\t" << mangledName << ", .-" << mangledName << endl;
    cout << "\t.ident\t\"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0\"" << endl;
    cout << "\t.section\t.note.GNU-stack,\"\",@progbits" << endl;
    cout << "\t.section\t.note.gnu.property,\"a\"" << endl;
    cout << "\t.align 8" << endl;
    cout << "\t.long\t1f - 0f" << endl;
    cout << "\t.long\t4f - 1f" << endl;
    cout << "\t.long\t5" << endl;
    cout << "0:" << endl;
    cout << "\t.string\t\"GNU\"" << endl;
    cout << "1:" << endl;
    cout << "\t.align 8" << endl;
    cout << "\t.long\t0xc0000002" << endl;
    cout << "\t.long\t3f - 2f" << endl;
    cout << "2:" << endl;
    cout << "\t.long\t0x3" << endl;
    cout << "3:" << endl;
    cout << "\t.align 8" << endl;
    cout << "4:" << endl;
    
    return 0;
}
#endif 
