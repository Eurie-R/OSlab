#include <iostream>
#include <string>
#include "IntArray.h"

using namespace std;

int main(int argc, char* argv[]) {
    // The program must invoked with a single parameter
    if (argc != 2) {
        cerr << "Usage: " << argv[0] << " <constant>" << endl;
        return 1;
    }

    // Get the constant x from the command line
    string x_str = argv[1];

    // Mangled function name
    string funcName = "multiplyBy" + x_str;
    int nameLen = funcName.length();
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
    cout << "\tmovq\t%rdi, -24(%rbp)" << endl;
    cout << "\tmovl\t%esi, -28(%rbp)" << endl;
    cout << "\tmovl\t$0, -4(%rbp)" << endl;
    cout << "\tjmp\t.L2" << endl;
    
    // Body
    // Address calculation
    cout << ".L3:" << endl;
    cout << "\tmovq\t-24(%rbp), %rax" << endl;
    cout << "\tmovq\t8(%rax), %rax" << endl;
    cout << "\tmovl\t-4(%rbp), %edx" << endl;
    cout << "\tmovslq\t%edx, %rdx" << endl;
    cout << "\tsalq\t$2, %rdx" << endl;
    cout << "\taddq\t%rdx, %rax" << endl;
    cout << "\tmovl\t(%rax), %ecx" << endl;
    // Reloading the registers
    cout << "\tmovq\t-24(%rbp), %rax" << endl;
    cout << "\tmovq\t8(%rax), %rax" << endl;
    cout << "\tmovl\t-4(%rbp), %edx" << endl;
    cout << "\tmovslq\t%edx, %rdx" << endl;
    cout << "\tsalq\t$2, %rdx" << endl;
    cout << "\taddq\t%rax, %rdx" << endl;
    
    // Injecting the constant
    cout << "\timull\t$" << x_str << ", %ecx, %eax" << endl;
    
    cout << "\tmovl\t%eax, (%rdx)" << endl;
    cout << "\taddl\t$1, -4(%rbp)" << endl;
    
    cout << ".L2:" << endl;
    cout << "\tmovq\t-24(%rbp), %rax" << endl;
    cout << "\tmovl\t(%rax), %eax" << endl;
    cout << "\tcmpl\t%eax, -4(%rbp)" << endl;
    cout << "\tjl\t.L3" << endl;
    
    cout << "\tnop" << endl;
    cout << "\tnop" << endl;
    cout << "\tpopq\t%rbp" << endl;
    cout << "\t.cfi_def_cfa 7, 8" << endl;
    cout << "\tret" << endl;
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