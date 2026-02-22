	.file	"multiplyByXTester.cpp"
	.text
	.section	.text._ZnwmPv,"axG",@progbits,_ZnwmPv,comdat
	.weak	_ZnwmPv
	.type	_ZnwmPv, @function
_ZnwmPv:
.LFB40:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	_ZnwmPv, .-_ZnwmPv
#APP
	.globl _ZSt21ios_base_library_initv
#NO_APP
	.section	.text._ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EE12_Vector_implD5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EE12_Vector_implD2Ev, @function
_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EE12_Vector_implD2Ev:
.LFB2356:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorI13BitwiseShiftsED2Ev
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2356:
	.size	_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EE12_Vector_implD1Ev,_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EEC2Ev,"axG",@progbits,_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EEC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EEC2Ev
	.type	_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EEC2Ev, @function
_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EEC2Ev:
.LFB2358:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EE12_Vector_implC1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2358:
	.size	_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EEC2Ev, .-_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EEC2Ev
	.weak	_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EEC1Ev
	.set	_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EEC1Ev,_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EEC2Ev
	.section	.text._ZNSt6vectorI13BitwiseShiftsSaIS0_EEC2Ev,"axG",@progbits,_ZNSt6vectorI13BitwiseShiftsSaIS0_EEC5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorI13BitwiseShiftsSaIS0_EEC2Ev
	.type	_ZNSt6vectorI13BitwiseShiftsSaIS0_EEC2Ev, @function
_ZNSt6vectorI13BitwiseShiftsSaIS0_EEC2Ev:
.LFB2360:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2360:
	.size	_ZNSt6vectorI13BitwiseShiftsSaIS0_EEC2Ev, .-_ZNSt6vectorI13BitwiseShiftsSaIS0_EEC2Ev
	.weak	_ZNSt6vectorI13BitwiseShiftsSaIS0_EEC1Ev
	.set	_ZNSt6vectorI13BitwiseShiftsSaIS0_EEC1Ev,_ZNSt6vectorI13BitwiseShiftsSaIS0_EEC2Ev
	.text
	.globl	_Z11decompose_ki
	.type	_Z11decompose_ki, @function
_Z11decompose_ki:
.LFB2351:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2351
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movl	%esi, -76(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorI13BitwiseShiftsSaIS0_EEC1Ev
	movl	$0, -64(%rbp)
	movl	-76(%rbp), %eax
	movl	%eax, -60(%rbp)
	jmp	.L7
.L9:
	movl	-60(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L8
	movl	-64(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movl	-64(%rbp), %eax
	movl	%eax, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
	leaq	-48(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB0:
	call	_ZNSt6vectorI13BitwiseShiftsSaIS0_EE9push_backEOS0_
.LEHE0:
.L8:
	sarl	-60(%rbp)
	addl	$1, -64(%rbp)
.L7:
	cmpl	$0, -60(%rbp)
	jg	.L9
	jmp	.L15
.L14:
	endbr64
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorI13BitwiseShiftsSaIS0_EED1Ev
	movq	%rbx, %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L12
	call	__stack_chk_fail@PLT
.L12:
	movq	%rax, %rdi
.LEHB1:
	call	_Unwind_Resume@PLT
.LEHE1:
.L15:
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L13
	call	__stack_chk_fail@PLT
.L13:
	movq	-72(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2351:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2351:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2351-.LLSDACSB2351
.LLSDACSB2351:
	.uleb128 .LEHB0-.LFB2351
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L14-.LFB2351
	.uleb128 0
	.uleb128 .LEHB1-.LFB2351
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE2351:
	.text
	.size	_Z11decompose_ki, .-_Z11decompose_ki
	.globl	_Z22russianPeasantMultiplyiRKSt6vectorI13BitwiseShiftsSaIS0_EE
	.type	_Z22russianPeasantMultiplyiRKSt6vectorI13BitwiseShiftsSaIS0_EE, @function
_Z22russianPeasantMultiplyiRKSt6vectorI13BitwiseShiftsSaIS0_EE:
.LFB2368:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -52(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -44(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorI13BitwiseShiftsSaIS0_EE5beginEv
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorI13BitwiseShiftsSaIS0_EE3endEv
	movq	%rax, -32(%rbp)
	jmp	.L17
.L18:
	leaq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPK13BitwiseShiftsSt6vectorIS1_SaIS1_EEEdeEv
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	-52(%rbp), %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	addl	%eax, -44(%rbp)
	leaq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPK13BitwiseShiftsSt6vectorIS1_SaIS1_EEEppEv
.L17:
	leaq	-32(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxneIPK13BitwiseShiftsSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_
	testb	%al, %al
	jne	.L18
	movl	-44(%rbp), %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L20
	call	__stack_chk_fail@PLT
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2368:
	.size	_Z22russianPeasantMultiplyiRKSt6vectorI13BitwiseShiftsSaIS0_EE, .-_Z22russianPeasantMultiplyiRKSt6vectorI13BitwiseShiftsSaIS0_EE
	.globl	_Z18RussianMultiplyByKR8IntArrayRKSt6vectorI13BitwiseShiftsSaIS2_EE
	.type	_Z18RussianMultiplyByKR8IntArrayRKSt6vectorI13BitwiseShiftsSaIS2_EE, @function
_Z18RussianMultiplyByKR8IntArrayRKSt6vectorI13BitwiseShiftsSaIS2_EE:
.LFB2369:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L22
.L23:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movq	-40(%rbp), %rdx
	movq	8(%rdx), %rdx
	movl	-20(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	leaq	(%rdx,%rcx), %rbx
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	_Z22russianPeasantMultiplyiRKSt6vectorI13BitwiseShiftsSaIS0_EE
	movl	%eax, (%rbx)
	addl	$1, -20(%rbp)
.L22:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -20(%rbp)
	jl	.L23
	nop
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2369:
	.size	_Z18RussianMultiplyByKR8IntArrayRKSt6vectorI13BitwiseShiftsSaIS2_EE, .-_Z18RussianMultiplyByKR8IntArrayRKSt6vectorI13BitwiseShiftsSaIS2_EE
	.globl	_Z11multiplyByXP8IntArrayi
	.type	_Z11multiplyByXP8IntArrayi, @function
_Z11multiplyByXP8IntArrayi:
.LFB2370:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L25
.L26:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movq	-24(%rbp), %rdx
	movq	8(%rdx), %rdx
	movl	-4(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rdx
	imull	-28(%rbp), %eax
	movl	%eax, (%rdx)
	addl	$1, -4(%rbp)
.L25:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L26
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2370:
	.size	_Z11multiplyByXP8IntArrayi, .-_Z11multiplyByXP8IntArrayi
	.section	.rodata
.LC0:
	.string	" "
.LC1:
	.string	"Original Array: "
.LC2:
	.string	"Array after multiplying by "
.LC3:
	.string	": "
	.text
	.globl	main
	.type	main, @function
main:
.LFB2371:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2371
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$5, -80(%rbp)
	movl	-80(%rbp), %eax
	cltq
	movabsq	$2305843009213693950, %rdx
	cmpq	%rax, %rdx
	jb	.L28
	salq	$2, %rax
	movq	%rax, %rdi
.LEHB2:
	call	_Znam@PLT
	movq	%rax, -72(%rbp)
	movl	$0, -104(%rbp)
	jmp	.L31
.L28:
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L30
	call	__stack_chk_fail@PLT
.L30:
	call	__cxa_throw_bad_array_new_length@PLT
.L32:
	movq	-72(%rbp), %rax
	movl	-104(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	-104(%rbp), %edx
	addl	$1, %edx
	movl	%edx, (%rax)
	addl	$1, -104(%rbp)
.L31:
	movl	-80(%rbp), %eax
	cmpl	%eax, -104(%rbp)
	jl	.L32
	leaq	-80(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	_Z11multiplyByXP8IntArrayi
	movl	$0, -100(%rbp)
	jmp	.L33
.L34:
	movq	-72(%rbp), %rax
	movl	-100(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZNSolsEi@PLT
	movq	%rax, %rdx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	addl	$1, -100(%rbp)
.L33:
	movl	-80(%rbp), %eax
	cmpl	%eax, -100(%rbp)
	jl	.L34
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	movq	-72(%rbp), %rax
	testq	%rax, %rax
	je	.L35
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L35:
	movq	$0, -72(%rbp)
	movl	$5, -64(%rbp)
	movl	-64(%rbp), %eax
	cltq
	movabsq	$2305843009213693950, %rdx
	cmpq	%rax, %rdx
	jb	.L36
	salq	$2, %rax
	movq	%rax, %rdi
	call	_Znam@PLT
	movq	%rax, -56(%rbp)
	movl	$0, -96(%rbp)
	jmp	.L39
.L36:
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L38
	call	__stack_chk_fail@PLT
.L38:
	call	__cxa_throw_bad_array_new_length@PLT
.L40:
	movq	-56(%rbp), %rax
	movl	-96(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	-96(%rbp), %edx
	addl	$1, %edx
	movl	%edx, (%rax)
	addl	$1, -96(%rbp)
.L39:
	movl	-64(%rbp), %eax
	cmpl	%eax, -96(%rbp)
	jl	.L40
	movl	$37, -84(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$0, -92(%rbp)
	jmp	.L41
.L42:
	movq	-56(%rbp), %rax
	movl	-92(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZNSolsEi@PLT
	movq	%rax, %rdx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	addl	$1, -92(%rbp)
.L41:
	movl	-64(%rbp), %eax
	cmpl	%eax, -92(%rbp)
	jl	.L42
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	-48(%rbp), %rax
	movl	-84(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_Z11decompose_ki
.LEHE2:
	leaq	-48(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z18RussianMultiplyByKR8IntArrayRKSt6vectorI13BitwiseShiftsSaIS2_EE
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
.LEHB3:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movl	-84(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_ZNSolsEi@PLT
	movq	%rax, %rdx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$0, -88(%rbp)
	jmp	.L43
.L44:
	movq	-56(%rbp), %rax
	movl	-88(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZNSolsEi@PLT
	movq	%rax, %rdx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	addl	$1, -88(%rbp)
.L43:
	movl	-64(%rbp), %eax
	cmpl	%eax, -88(%rbp)
	jl	.L44
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
.LEHE3:
	movq	-56(%rbp), %rax
	testq	%rax, %rax
	je	.L45
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L45:
	movq	$0, -56(%rbp)
	movl	$0, %ebx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorI13BitwiseShiftsSaIS0_EED1Ev
	movl	%ebx, %eax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L49
	jmp	.L51
.L50:
	endbr64
	movq	%rax, %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorI13BitwiseShiftsSaIS0_EED1Ev
	movq	%rbx, %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L48
	call	__stack_chk_fail@PLT
.L48:
	movq	%rax, %rdi
.LEHB4:
	call	_Unwind_Resume@PLT
.LEHE4:
.L51:
	call	__stack_chk_fail@PLT
.L49:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2371:
	.section	.gcc_except_table
.LLSDA2371:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2371-.LLSDACSB2371
.LLSDACSB2371:
	.uleb128 .LEHB2-.LFB2371
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB2371
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L50-.LFB2371
	.uleb128 0
	.uleb128 .LEHB4-.LFB2371
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE2371:
	.text
	.size	main, .-main
	.section	.text._ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EE12_Vector_implC2Ev,"axG",@progbits,_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EE12_Vector_implC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EE12_Vector_implC2Ev
	.type	_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EE12_Vector_implC2Ev, @function
_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EE12_Vector_implC2Ev:
.LFB2627:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	nop
	nop
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EE17_Vector_impl_dataC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2627:
	.size	_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EE12_Vector_implC2Ev, .-_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EE12_Vector_implC2Ev
	.weak	_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EE12_Vector_implC1Ev
	.set	_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EE12_Vector_implC1Ev,_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EE12_Vector_implC2Ev
	.section	.text._ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EED5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EED2Ev
	.type	_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EED2Ev, @function
_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EED2Ev:
.LFB2633:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2633
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$4, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EE13_M_deallocateEPS0_m
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EE12_Vector_implD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2633:
	.section	.gcc_except_table
.LLSDA2633:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2633-.LLSDACSB2633
.LLSDACSB2633:
.LLSDACSE2633:
	.section	.text._ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EED5Ev,comdat
	.size	_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EED2Ev, .-_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EED2Ev
	.weak	_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EED1Ev
	.set	_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EED1Ev,_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EED2Ev
	.section	.text._ZNSt6vectorI13BitwiseShiftsSaIS0_EED2Ev,"axG",@progbits,_ZNSt6vectorI13BitwiseShiftsSaIS0_EED5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorI13BitwiseShiftsSaIS0_EED2Ev
	.type	_ZNSt6vectorI13BitwiseShiftsSaIS0_EED2Ev, @function
_ZNSt6vectorI13BitwiseShiftsSaIS0_EED2Ev:
.LFB2636:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2636
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EE19_M_get_Tp_allocatorEv
	movq	-40(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -24(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIP13BitwiseShiftsEvT_S2_
	nop
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2636:
	.section	.gcc_except_table
.LLSDA2636:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2636-.LLSDACSB2636
.LLSDACSB2636:
.LLSDACSE2636:
	.section	.text._ZNSt6vectorI13BitwiseShiftsSaIS0_EED2Ev,"axG",@progbits,_ZNSt6vectorI13BitwiseShiftsSaIS0_EED5Ev,comdat
	.size	_ZNSt6vectorI13BitwiseShiftsSaIS0_EED2Ev, .-_ZNSt6vectorI13BitwiseShiftsSaIS0_EED2Ev
	.weak	_ZNSt6vectorI13BitwiseShiftsSaIS0_EED1Ev
	.set	_ZNSt6vectorI13BitwiseShiftsSaIS0_EED1Ev,_ZNSt6vectorI13BitwiseShiftsSaIS0_EED2Ev
	.section	.text._ZNSt6vectorI13BitwiseShiftsSaIS0_EE9push_backEOS0_,"axG",@progbits,_ZNSt6vectorI13BitwiseShiftsSaIS0_EE9push_backEOS0_,comdat
	.align 2
	.weak	_ZNSt6vectorI13BitwiseShiftsSaIS0_EE9push_backEOS0_
	.type	_ZNSt6vectorI13BitwiseShiftsSaIS0_EE9push_backEOS0_, @function
_ZNSt6vectorI13BitwiseShiftsSaIS0_EE9push_backEOS0_:
.LFB2638:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIR13BitwiseShiftsEONSt16remove_referenceIT_E4typeEOS3_
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorI13BitwiseShiftsSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2638:
	.size	_ZNSt6vectorI13BitwiseShiftsSaIS0_EE9push_backEOS0_, .-_ZNSt6vectorI13BitwiseShiftsSaIS0_EE9push_backEOS0_
	.section	.text._ZNKSt6vectorI13BitwiseShiftsSaIS0_EE5beginEv,"axG",@progbits,_ZNKSt6vectorI13BitwiseShiftsSaIS0_EE5beginEv,comdat
	.align 2
	.weak	_ZNKSt6vectorI13BitwiseShiftsSaIS0_EE5beginEv
	.type	_ZNKSt6vectorI13BitwiseShiftsSaIS0_EE5beginEv, @function
_ZNKSt6vectorI13BitwiseShiftsSaIS0_EE5beginEv:
.LFB2642:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPK13BitwiseShiftsSt6vectorIS1_SaIS1_EEEC1ERKS3_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L58
	call	__stack_chk_fail@PLT
.L58:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2642:
	.size	_ZNKSt6vectorI13BitwiseShiftsSaIS0_EE5beginEv, .-_ZNKSt6vectorI13BitwiseShiftsSaIS0_EE5beginEv
	.section	.text._ZNKSt6vectorI13BitwiseShiftsSaIS0_EE3endEv,"axG",@progbits,_ZNKSt6vectorI13BitwiseShiftsSaIS0_EE3endEv,comdat
	.align 2
	.weak	_ZNKSt6vectorI13BitwiseShiftsSaIS0_EE3endEv
	.type	_ZNKSt6vectorI13BitwiseShiftsSaIS0_EE3endEv, @function
_ZNKSt6vectorI13BitwiseShiftsSaIS0_EE3endEv:
.LFB2643:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPK13BitwiseShiftsSt6vectorIS1_SaIS1_EEEC1ERKS3_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L61
	call	__stack_chk_fail@PLT
.L61:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2643:
	.size	_ZNKSt6vectorI13BitwiseShiftsSaIS0_EE3endEv, .-_ZNKSt6vectorI13BitwiseShiftsSaIS0_EE3endEv
	.section	.text._ZN9__gnu_cxxneIPK13BitwiseShiftsSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_,"axG",@progbits,_ZN9__gnu_cxxneIPK13BitwiseShiftsSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_,comdat
	.weak	_ZN9__gnu_cxxneIPK13BitwiseShiftsSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_
	.type	_ZN9__gnu_cxxneIPK13BitwiseShiftsSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_, @function
_ZN9__gnu_cxxneIPK13BitwiseShiftsSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_:
.LFB2644:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPK13BitwiseShiftsSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPK13BitwiseShiftsSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rax
	cmpq	%rax, %rbx
	setne	%al
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2644:
	.size	_ZN9__gnu_cxxneIPK13BitwiseShiftsSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_, .-_ZN9__gnu_cxxneIPK13BitwiseShiftsSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPK13BitwiseShiftsSt6vectorIS1_SaIS1_EEEppEv,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPK13BitwiseShiftsSt6vectorIS1_SaIS1_EEEppEv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPK13BitwiseShiftsSt6vectorIS1_SaIS1_EEEppEv
	.type	_ZN9__gnu_cxx17__normal_iteratorIPK13BitwiseShiftsSt6vectorIS1_SaIS1_EEEppEv, @function
_ZN9__gnu_cxx17__normal_iteratorIPK13BitwiseShiftsSt6vectorIS1_SaIS1_EEEppEv:
.LFB2645:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2645:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPK13BitwiseShiftsSt6vectorIS1_SaIS1_EEEppEv, .-_ZN9__gnu_cxx17__normal_iteratorIPK13BitwiseShiftsSt6vectorIS1_SaIS1_EEEppEv
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPK13BitwiseShiftsSt6vectorIS1_SaIS1_EEEdeEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPK13BitwiseShiftsSt6vectorIS1_SaIS1_EEEdeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPK13BitwiseShiftsSt6vectorIS1_SaIS1_EEEdeEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPK13BitwiseShiftsSt6vectorIS1_SaIS1_EEEdeEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPK13BitwiseShiftsSt6vectorIS1_SaIS1_EEEdeEv:
.LFB2646:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2646:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPK13BitwiseShiftsSt6vectorIS1_SaIS1_EEEdeEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPK13BitwiseShiftsSt6vectorIS1_SaIS1_EEEdeEv
	.section	.text._ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EE17_Vector_impl_dataC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EE17_Vector_impl_dataC2Ev
	.type	_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EE17_Vector_impl_dataC2Ev, @function
_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EE17_Vector_impl_dataC2Ev:
.LFB2753:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2753:
	.size	_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EE17_Vector_impl_dataC2Ev, .-_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EE17_Vector_impl_dataC2Ev
	.weak	_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EE17_Vector_impl_dataC1Ev
	.set	_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EE17_Vector_impl_dataC1Ev,_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EE17_Vector_impl_dataC2Ev
	.section	.text._ZNSt15__new_allocatorI13BitwiseShiftsED2Ev,"axG",@progbits,_ZNSt15__new_allocatorI13BitwiseShiftsED5Ev,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorI13BitwiseShiftsED2Ev
	.type	_ZNSt15__new_allocatorI13BitwiseShiftsED2Ev, @function
_ZNSt15__new_allocatorI13BitwiseShiftsED2Ev:
.LFB2756:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2756:
	.size	_ZNSt15__new_allocatorI13BitwiseShiftsED2Ev, .-_ZNSt15__new_allocatorI13BitwiseShiftsED2Ev
	.weak	_ZNSt15__new_allocatorI13BitwiseShiftsED1Ev
	.set	_ZNSt15__new_allocatorI13BitwiseShiftsED1Ev,_ZNSt15__new_allocatorI13BitwiseShiftsED2Ev
	.section	.text._ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EE13_M_deallocateEPS0_m,"axG",@progbits,_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EE13_M_deallocateEPS0_m,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EE13_M_deallocateEPS0_m
	.type	_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EE13_M_deallocateEPS0_m, @function
_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EE13_M_deallocateEPS0_m:
.LFB2758:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L72
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorI13BitwiseShiftsE10deallocateEPS0_m
	nop
.L72:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2758:
	.size	_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EE13_M_deallocateEPS0_m, .-_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EE13_M_deallocateEPS0_m
	.section	.text._ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EE19_M_get_Tp_allocatorEv, @function
_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EE19_M_get_Tp_allocatorEv:
.LFB2759:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2759:
	.size	_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EE19_M_get_Tp_allocatorEv
	.section	.text._ZSt4moveIR13BitwiseShiftsEONSt16remove_referenceIT_E4typeEOS3_,"axG",@progbits,_ZSt4moveIR13BitwiseShiftsEONSt16remove_referenceIT_E4typeEOS3_,comdat
	.weak	_ZSt4moveIR13BitwiseShiftsEONSt16remove_referenceIT_E4typeEOS3_
	.type	_ZSt4moveIR13BitwiseShiftsEONSt16remove_referenceIT_E4typeEOS3_, @function
_ZSt4moveIR13BitwiseShiftsEONSt16remove_referenceIT_E4typeEOS3_:
.LFB2761:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2761:
	.size	_ZSt4moveIR13BitwiseShiftsEONSt16remove_referenceIT_E4typeEOS3_, .-_ZSt4moveIR13BitwiseShiftsEONSt16remove_referenceIT_E4typeEOS3_
	.section	.text._ZNSt6vectorI13BitwiseShiftsSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_,"axG",@progbits,_ZNSt6vectorI13BitwiseShiftsSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_,comdat
	.align 2
	.weak	_ZNSt6vectorI13BitwiseShiftsSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_
	.type	_ZNSt6vectorI13BitwiseShiftsSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_, @function
_ZNSt6vectorI13BitwiseShiftsSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_:
.LFB2762:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	je	.L78
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardI13BitwiseShiftsEOT_RNSt16remove_referenceIS1_E4typeE
	movq	-72(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	-72(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardI13BitwiseShiftsEOT_RNSt16remove_referenceIS1_E4typeE
	movq	-64(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	-56(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$16, %edi
	call	_ZnwmPv
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardI13BitwiseShiftsEOT_RNSt16remove_referenceIS1_E4typeE
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	nop
	nop
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	leaq	16(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L79
.L78:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardI13BitwiseShiftsEOT_RNSt16remove_referenceIS1_E4typeE
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorI13BitwiseShiftsSaIS0_EE3endEv
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorI13BitwiseShiftsSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_
.L79:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorI13BitwiseShiftsSaIS0_EE4backEv
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2762:
	.size	_ZNSt6vectorI13BitwiseShiftsSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_, .-_ZNSt6vectorI13BitwiseShiftsSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPK13BitwiseShiftsSt6vectorIS1_SaIS1_EEEC2ERKS3_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPK13BitwiseShiftsSt6vectorIS1_SaIS1_EEEC5ERKS3_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPK13BitwiseShiftsSt6vectorIS1_SaIS1_EEEC2ERKS3_
	.type	_ZN9__gnu_cxx17__normal_iteratorIPK13BitwiseShiftsSt6vectorIS1_SaIS1_EEEC2ERKS3_, @function
_ZN9__gnu_cxx17__normal_iteratorIPK13BitwiseShiftsSt6vectorIS1_SaIS1_EEEC2ERKS3_:
.LFB2772:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2772:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPK13BitwiseShiftsSt6vectorIS1_SaIS1_EEEC2ERKS3_, .-_ZN9__gnu_cxx17__normal_iteratorIPK13BitwiseShiftsSt6vectorIS1_SaIS1_EEEC2ERKS3_
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPK13BitwiseShiftsSt6vectorIS1_SaIS1_EEEC1ERKS3_
	.set	_ZN9__gnu_cxx17__normal_iteratorIPK13BitwiseShiftsSt6vectorIS1_SaIS1_EEEC1ERKS3_,_ZN9__gnu_cxx17__normal_iteratorIPK13BitwiseShiftsSt6vectorIS1_SaIS1_EEEC2ERKS3_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPK13BitwiseShiftsSt6vectorIS1_SaIS1_EEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPK13BitwiseShiftsSt6vectorIS1_SaIS1_EEE4baseEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPK13BitwiseShiftsSt6vectorIS1_SaIS1_EEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPK13BitwiseShiftsSt6vectorIS1_SaIS1_EEE4baseEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPK13BitwiseShiftsSt6vectorIS1_SaIS1_EEE4baseEv:
.LFB2774:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2774:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPK13BitwiseShiftsSt6vectorIS1_SaIS1_EEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPK13BitwiseShiftsSt6vectorIS1_SaIS1_EEE4baseEv
	.section	.text._ZSt8_DestroyIP13BitwiseShiftsEvT_S2_,"axG",@progbits,_ZSt8_DestroyIP13BitwiseShiftsEvT_S2_,comdat
	.weak	_ZSt8_DestroyIP13BitwiseShiftsEvT_S2_
	.type	_ZSt8_DestroyIP13BitwiseShiftsEvT_S2_, @function
_ZSt8_DestroyIP13BitwiseShiftsEvT_S2_:
.LFB2847:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Destroy_auxILb1EE9__destroyIP13BitwiseShiftsEEvT_S4_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2847:
	.size	_ZSt8_DestroyIP13BitwiseShiftsEvT_S2_, .-_ZSt8_DestroyIP13BitwiseShiftsEvT_S2_
	.section	.text._ZSt7forwardI13BitwiseShiftsEOT_RNSt16remove_referenceIS1_E4typeE,"axG",@progbits,_ZSt7forwardI13BitwiseShiftsEOT_RNSt16remove_referenceIS1_E4typeE,comdat
	.weak	_ZSt7forwardI13BitwiseShiftsEOT_RNSt16remove_referenceIS1_E4typeE
	.type	_ZSt7forwardI13BitwiseShiftsEOT_RNSt16remove_referenceIS1_E4typeE, @function
_ZSt7forwardI13BitwiseShiftsEOT_RNSt16remove_referenceIS1_E4typeE:
.LFB2848:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2848:
	.size	_ZSt7forwardI13BitwiseShiftsEOT_RNSt16remove_referenceIS1_E4typeE, .-_ZSt7forwardI13BitwiseShiftsEOT_RNSt16remove_referenceIS1_E4typeE
	.section	.text._ZNSt6vectorI13BitwiseShiftsSaIS0_EE3endEv,"axG",@progbits,_ZNSt6vectorI13BitwiseShiftsSaIS0_EE3endEv,comdat
	.align 2
	.weak	_ZNSt6vectorI13BitwiseShiftsSaIS0_EE3endEv
	.type	_ZNSt6vectorI13BitwiseShiftsSaIS0_EE3endEv, @function
_ZNSt6vectorI13BitwiseShiftsSaIS0_EE3endEv:
.LFB2850:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIP13BitwiseShiftsSt6vectorIS1_SaIS1_EEEC1ERKS2_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L89
	call	__stack_chk_fail@PLT
.L89:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2850:
	.size	_ZNSt6vectorI13BitwiseShiftsSaIS0_EE3endEv, .-_ZNSt6vectorI13BitwiseShiftsSaIS0_EE3endEv
	.section	.rodata
.LC4:
	.string	"vector::_M_realloc_insert"
	.section	.text._ZNSt6vectorI13BitwiseShiftsSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_,"axG",@progbits,_ZNSt6vectorI13BitwiseShiftsSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_,comdat
	.align 2
	.weak	_ZNSt6vectorI13BitwiseShiftsSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_
	.type	_ZNSt6vectorI13BitwiseShiftsSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_, @function
_ZNSt6vectorI13BitwiseShiftsSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_:
.LFB2851:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$152, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%rdx, -152(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-136(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNKSt6vectorI13BitwiseShiftsSaIS0_EE12_M_check_lenEmPKc
	movq	%rax, -120(%rbp)
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorI13BitwiseShiftsSaIS0_EE5beginEv
	movq	%rax, -128(%rbp)
	leaq	-128(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxmiIP13BitwiseShiftsSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	movq	%rax, -96(%rbp)
	movq	-136(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EE11_M_allocateEm
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardI13BitwiseShiftsEOT_RNSt16remove_referenceIS1_E4typeE
	movq	-96(%rbp), %rdx
	movq	%rdx, %rcx
	salq	$4, %rcx
	movq	-88(%rbp), %rdx
	addq	%rdx, %rcx
	movq	-136(%rbp), %rdx
	movq	%rdx, -72(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardI13BitwiseShiftsEOT_RNSt16remove_referenceIS1_E4typeE
	movq	-72(%rbp), %rdx
	movq	%rdx, -48(%rbp)
	movq	-64(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$16, %edi
	call	_ZnwmPv
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardI13BitwiseShiftsEOT_RNSt16remove_referenceIS1_E4typeE
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	nop
	nop
	movq	$0, -80(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP13BitwiseShiftsSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rsi
	movq	-88(%rbp), %rdx
	movq	-112(%rbp), %rax
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	_ZNSt6vectorI13BitwiseShiftsSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_
	movq	%rax, -80(%rbp)
	addq	$16, -80(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP13BitwiseShiftsSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rax
	movq	-80(%rbp), %rdx
	movq	-104(%rbp), %rsi
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	_ZNSt6vectorI13BitwiseShiftsSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_
	movq	%rax, -80(%rbp)
	movq	-136(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	16(%rdx), %rdx
	subq	-112(%rbp), %rdx
	sarq	$4, %rdx
	movq	-112(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EE13_M_deallocateEPS0_m
	movq	-136(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-136(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-120(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L91
	call	__stack_chk_fail@PLT
.L91:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2851:
	.size	_ZNSt6vectorI13BitwiseShiftsSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_, .-_ZNSt6vectorI13BitwiseShiftsSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_
	.section	.text._ZNSt6vectorI13BitwiseShiftsSaIS0_EE4backEv,"axG",@progbits,_ZNSt6vectorI13BitwiseShiftsSaIS0_EE4backEv,comdat
	.align 2
	.weak	_ZNSt6vectorI13BitwiseShiftsSaIS0_EE4backEv
	.type	_ZNSt6vectorI13BitwiseShiftsSaIS0_EE4backEv, @function
_ZNSt6vectorI13BitwiseShiftsSaIS0_EE4backEv:
.LFB2855:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorI13BitwiseShiftsSaIS0_EE3endEv
	movq	%rax, -24(%rbp)
	leaq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP13BitwiseShiftsSt6vectorIS1_SaIS1_EEEmiEl
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP13BitwiseShiftsSt6vectorIS1_SaIS1_EEEdeEv
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L94
	call	__stack_chk_fail@PLT
.L94:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2855:
	.size	_ZNSt6vectorI13BitwiseShiftsSaIS0_EE4backEv, .-_ZNSt6vectorI13BitwiseShiftsSaIS0_EE4backEv
	.section	.text._ZNSt15__new_allocatorI13BitwiseShiftsE10deallocateEPS0_m,"axG",@progbits,_ZNSt15__new_allocatorI13BitwiseShiftsE10deallocateEPS0_m,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorI13BitwiseShiftsE10deallocateEPS0_m
	.type	_ZNSt15__new_allocatorI13BitwiseShiftsE10deallocateEPS0_m, @function
_ZNSt15__new_allocatorI13BitwiseShiftsE10deallocateEPS0_m:
.LFB2913:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2913:
	.size	_ZNSt15__new_allocatorI13BitwiseShiftsE10deallocateEPS0_m, .-_ZNSt15__new_allocatorI13BitwiseShiftsE10deallocateEPS0_m
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIP13BitwiseShiftsEEvT_S4_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIP13BitwiseShiftsEEvT_S4_,comdat
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIP13BitwiseShiftsEEvT_S4_
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIP13BitwiseShiftsEEvT_S4_, @function
_ZNSt12_Destroy_auxILb1EE9__destroyIP13BitwiseShiftsEEvT_S4_:
.LFB2914:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2914:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIP13BitwiseShiftsEEvT_S4_, .-_ZNSt12_Destroy_auxILb1EE9__destroyIP13BitwiseShiftsEEvT_S4_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIP13BitwiseShiftsSt6vectorIS1_SaIS1_EEEC2ERKS2_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIP13BitwiseShiftsSt6vectorIS1_SaIS1_EEEC5ERKS2_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIP13BitwiseShiftsSt6vectorIS1_SaIS1_EEEC2ERKS2_
	.type	_ZN9__gnu_cxx17__normal_iteratorIP13BitwiseShiftsSt6vectorIS1_SaIS1_EEEC2ERKS2_, @function
_ZN9__gnu_cxx17__normal_iteratorIP13BitwiseShiftsSt6vectorIS1_SaIS1_EEEC2ERKS2_:
.LFB2917:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2917:
	.size	_ZN9__gnu_cxx17__normal_iteratorIP13BitwiseShiftsSt6vectorIS1_SaIS1_EEEC2ERKS2_, .-_ZN9__gnu_cxx17__normal_iteratorIP13BitwiseShiftsSt6vectorIS1_SaIS1_EEEC2ERKS2_
	.weak	_ZN9__gnu_cxx17__normal_iteratorIP13BitwiseShiftsSt6vectorIS1_SaIS1_EEEC1ERKS2_
	.set	_ZN9__gnu_cxx17__normal_iteratorIP13BitwiseShiftsSt6vectorIS1_SaIS1_EEEC1ERKS2_,_ZN9__gnu_cxx17__normal_iteratorIP13BitwiseShiftsSt6vectorIS1_SaIS1_EEEC2ERKS2_
	.section	.text._ZNKSt6vectorI13BitwiseShiftsSaIS0_EE12_M_check_lenEmPKc,"axG",@progbits,_ZNKSt6vectorI13BitwiseShiftsSaIS0_EE12_M_check_lenEmPKc,comdat
	.align 2
	.weak	_ZNKSt6vectorI13BitwiseShiftsSaIS0_EE12_M_check_lenEmPKc
	.type	_ZNKSt6vectorI13BitwiseShiftsSaIS0_EE12_M_check_lenEmPKc, @function
_ZNKSt6vectorI13BitwiseShiftsSaIS0_EE12_M_check_lenEmPKc:
.LFB2919:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorI13BitwiseShiftsSaIS0_EE8max_sizeEv
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorI13BitwiseShiftsSaIS0_EE4sizeEv
	subq	%rax, %rbx
	movq	%rbx, %rdx
	movq	-64(%rbp), %rax
	cmpq	%rax, %rdx
	setb	%al
	testb	%al, %al
	je	.L100
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L101
	call	__stack_chk_fail@PLT
.L101:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
.L100:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorI13BitwiseShiftsSaIS0_EE4sizeEv
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorI13BitwiseShiftsSaIS0_EE4sizeEv
	movq	%rax, -40(%rbp)
	leaq	-64(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt3maxImERKT_S2_S2_
	movq	(%rax), %rax
	addq	%rbx, %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorI13BitwiseShiftsSaIS0_EE4sizeEv
	cmpq	%rax, -32(%rbp)
	jb	.L102
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorI13BitwiseShiftsSaIS0_EE8max_sizeEv
	cmpq	-32(%rbp), %rax
	jnb	.L103
.L102:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorI13BitwiseShiftsSaIS0_EE8max_sizeEv
	jmp	.L104
.L103:
	movq	-32(%rbp), %rax
.L104:
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L106
	call	__stack_chk_fail@PLT
.L106:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2919:
	.size	_ZNKSt6vectorI13BitwiseShiftsSaIS0_EE12_M_check_lenEmPKc, .-_ZNKSt6vectorI13BitwiseShiftsSaIS0_EE12_M_check_lenEmPKc
	.section	.text._ZNSt6vectorI13BitwiseShiftsSaIS0_EE5beginEv,"axG",@progbits,_ZNSt6vectorI13BitwiseShiftsSaIS0_EE5beginEv,comdat
	.align 2
	.weak	_ZNSt6vectorI13BitwiseShiftsSaIS0_EE5beginEv
	.type	_ZNSt6vectorI13BitwiseShiftsSaIS0_EE5beginEv, @function
_ZNSt6vectorI13BitwiseShiftsSaIS0_EE5beginEv:
.LFB2920:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIP13BitwiseShiftsSt6vectorIS1_SaIS1_EEEC1ERKS2_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L109
	call	__stack_chk_fail@PLT
.L109:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2920:
	.size	_ZNSt6vectorI13BitwiseShiftsSaIS0_EE5beginEv, .-_ZNSt6vectorI13BitwiseShiftsSaIS0_EE5beginEv
	.section	.text._ZN9__gnu_cxxmiIP13BitwiseShiftsSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_,"axG",@progbits,_ZN9__gnu_cxxmiIP13BitwiseShiftsSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_,comdat
	.weak	_ZN9__gnu_cxxmiIP13BitwiseShiftsSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	.type	_ZN9__gnu_cxxmiIP13BitwiseShiftsSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_, @function
_ZN9__gnu_cxxmiIP13BitwiseShiftsSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_:
.LFB2921:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP13BitwiseShiftsSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP13BitwiseShiftsSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rax
	movq	%rbx, %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$4, %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2921:
	.size	_ZN9__gnu_cxxmiIP13BitwiseShiftsSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_, .-_ZN9__gnu_cxxmiIP13BitwiseShiftsSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	.section	.text._ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EE11_M_allocateEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EE11_M_allocateEm
	.type	_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EE11_M_allocateEm, @function
_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EE11_M_allocateEm:
.LFB2922:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L113
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorI13BitwiseShiftsE8allocateEmPKv
	nop
	jmp	.L115
.L113:
	movl	$0, %eax
.L115:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2922:
	.size	_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EE11_M_allocateEm, .-_ZNSt12_Vector_baseI13BitwiseShiftsSaIS0_EE11_M_allocateEm
	.section	.text._ZNSt6vectorI13BitwiseShiftsSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_,"axG",@progbits,_ZNSt6vectorI13BitwiseShiftsSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_,comdat
	.weak	_ZNSt6vectorI13BitwiseShiftsSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_
	.type	_ZNSt6vectorI13BitwiseShiftsSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_, @function
_ZNSt6vectorI13BitwiseShiftsSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_:
.LFB2923:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__relocate_aIP13BitwiseShiftsS1_SaIS0_EET0_T_S4_S3_RT1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2923:
	.size	_ZNSt6vectorI13BitwiseShiftsSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_, .-_ZNSt6vectorI13BitwiseShiftsSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIP13BitwiseShiftsSt6vectorIS1_SaIS1_EEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIP13BitwiseShiftsSt6vectorIS1_SaIS1_EEE4baseEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIP13BitwiseShiftsSt6vectorIS1_SaIS1_EEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIP13BitwiseShiftsSt6vectorIS1_SaIS1_EEE4baseEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIP13BitwiseShiftsSt6vectorIS1_SaIS1_EEE4baseEv:
.LFB2924:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2924:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIP13BitwiseShiftsSt6vectorIS1_SaIS1_EEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIP13BitwiseShiftsSt6vectorIS1_SaIS1_EEE4baseEv
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIP13BitwiseShiftsSt6vectorIS1_SaIS1_EEEmiEl,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIP13BitwiseShiftsSt6vectorIS1_SaIS1_EEEmiEl,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIP13BitwiseShiftsSt6vectorIS1_SaIS1_EEEmiEl
	.type	_ZNK9__gnu_cxx17__normal_iteratorIP13BitwiseShiftsSt6vectorIS1_SaIS1_EEEmiEl, @function
_ZNK9__gnu_cxx17__normal_iteratorIP13BitwiseShiftsSt6vectorIS1_SaIS1_EEEmiEl:
.LFB2926:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rdx
	salq	$4, %rdx
	negq	%rdx
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	leaq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIP13BitwiseShiftsSt6vectorIS1_SaIS1_EEEC1ERKS2_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L123
	call	__stack_chk_fail@PLT
.L123:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2926:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIP13BitwiseShiftsSt6vectorIS1_SaIS1_EEEmiEl, .-_ZNK9__gnu_cxx17__normal_iteratorIP13BitwiseShiftsSt6vectorIS1_SaIS1_EEEmiEl
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIP13BitwiseShiftsSt6vectorIS1_SaIS1_EEEdeEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIP13BitwiseShiftsSt6vectorIS1_SaIS1_EEEdeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIP13BitwiseShiftsSt6vectorIS1_SaIS1_EEEdeEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIP13BitwiseShiftsSt6vectorIS1_SaIS1_EEEdeEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIP13BitwiseShiftsSt6vectorIS1_SaIS1_EEEdeEv:
.LFB2927:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2927:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIP13BitwiseShiftsSt6vectorIS1_SaIS1_EEEdeEv, .-_ZNK9__gnu_cxx17__normal_iteratorIP13BitwiseShiftsSt6vectorIS1_SaIS1_EEEdeEv
	.section	.text._ZNKSt6vectorI13BitwiseShiftsSaIS0_EE8max_sizeEv,"axG",@progbits,_ZNKSt6vectorI13BitwiseShiftsSaIS0_EE8max_sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorI13BitwiseShiftsSaIS0_EE8max_sizeEv
	.type	_ZNKSt6vectorI13BitwiseShiftsSaIS0_EE8max_sizeEv, @function
_ZNKSt6vectorI13BitwiseShiftsSaIS0_EE8max_sizeEv:
.LFB2948:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt12_Vector_baseI13BitwiseShiftsSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdi
	call	_ZNSt6vectorI13BitwiseShiftsSaIS0_EE11_S_max_sizeERKS1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2948:
	.size	_ZNKSt6vectorI13BitwiseShiftsSaIS0_EE8max_sizeEv, .-_ZNKSt6vectorI13BitwiseShiftsSaIS0_EE8max_sizeEv
	.section	.text._ZNKSt6vectorI13BitwiseShiftsSaIS0_EE4sizeEv,"axG",@progbits,_ZNKSt6vectorI13BitwiseShiftsSaIS0_EE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorI13BitwiseShiftsSaIS0_EE4sizeEv
	.type	_ZNKSt6vectorI13BitwiseShiftsSaIS0_EE4sizeEv, @function
_ZNKSt6vectorI13BitwiseShiftsSaIS0_EE4sizeEv:
.LFB2949:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$4, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2949:
	.size	_ZNKSt6vectorI13BitwiseShiftsSaIS0_EE4sizeEv, .-_ZNKSt6vectorI13BitwiseShiftsSaIS0_EE4sizeEv
	.section	.text._ZSt3maxImERKT_S2_S2_,"axG",@progbits,_ZSt3maxImERKT_S2_S2_,comdat
	.weak	_ZSt3maxImERKT_S2_S2_
	.type	_ZSt3maxImERKT_S2_S2_, @function
_ZSt3maxImERKT_S2_S2_:
.LFB2950:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L131
	movq	-16(%rbp), %rax
	jmp	.L132
.L131:
	movq	-8(%rbp), %rax
.L132:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2950:
	.size	_ZSt3maxImERKT_S2_S2_, .-_ZSt3maxImERKT_S2_S2_
	.section	.text._ZSt12__relocate_aIP13BitwiseShiftsS1_SaIS0_EET0_T_S4_S3_RT1_,"axG",@progbits,_ZSt12__relocate_aIP13BitwiseShiftsS1_SaIS0_EET0_T_S4_S3_RT1_,comdat
	.weak	_ZSt12__relocate_aIP13BitwiseShiftsS1_SaIS0_EET0_T_S4_S3_RT1_
	.type	_ZSt12__relocate_aIP13BitwiseShiftsS1_SaIS0_EET0_T_S4_S3_RT1_, @function
_ZSt12__relocate_aIP13BitwiseShiftsS1_SaIS0_EET0_T_S4_S3_RT1_:
.LFB2952:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIP13BitwiseShiftsET_S2_
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIP13BitwiseShiftsET_S2_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIP13BitwiseShiftsET_S2_
	movq	%rax, %rdi
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	movq	%r12, %rdx
	movq	%rbx, %rsi
	call	_ZSt14__relocate_a_1I13BitwiseShiftsS0_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS3_E4typeES5_S5_S5_RSaIT0_E
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2952:
	.size	_ZSt12__relocate_aIP13BitwiseShiftsS1_SaIS0_EET0_T_S4_S3_RT1_, .-_ZSt12__relocate_aIP13BitwiseShiftsS1_SaIS0_EET0_T_S4_S3_RT1_
	.section	.text._ZNSt6vectorI13BitwiseShiftsSaIS0_EE11_S_max_sizeERKS1_,"axG",@progbits,_ZNSt6vectorI13BitwiseShiftsSaIS0_EE11_S_max_sizeERKS1_,comdat
	.weak	_ZNSt6vectorI13BitwiseShiftsSaIS0_EE11_S_max_sizeERKS1_
	.type	_ZNSt6vectorI13BitwiseShiftsSaIS0_EE11_S_max_sizeERKS1_, @function
_ZNSt6vectorI13BitwiseShiftsSaIS0_EE11_S_max_sizeERKS1_:
.LFB2962:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movabsq	$576460752303423487, %rax
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movabsq	$576460752303423487, %rax
	nop
	nop
	movq	%rax, -40(%rbp)
	leaq	-40(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt3minImERKT_S2_S2_
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L140
	call	__stack_chk_fail@PLT
.L140:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2962:
	.size	_ZNSt6vectorI13BitwiseShiftsSaIS0_EE11_S_max_sizeERKS1_, .-_ZNSt6vectorI13BitwiseShiftsSaIS0_EE11_S_max_sizeERKS1_
	.section	.text._ZNKSt12_Vector_baseI13BitwiseShiftsSaIS0_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseI13BitwiseShiftsSaIS0_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt12_Vector_baseI13BitwiseShiftsSaIS0_EE19_M_get_Tp_allocatorEv
	.type	_ZNKSt12_Vector_baseI13BitwiseShiftsSaIS0_EE19_M_get_Tp_allocatorEv, @function
_ZNKSt12_Vector_baseI13BitwiseShiftsSaIS0_EE19_M_get_Tp_allocatorEv:
.LFB2963:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2963:
	.size	_ZNKSt12_Vector_baseI13BitwiseShiftsSaIS0_EE19_M_get_Tp_allocatorEv, .-_ZNKSt12_Vector_baseI13BitwiseShiftsSaIS0_EE19_M_get_Tp_allocatorEv
	.section	.text._ZNSt15__new_allocatorI13BitwiseShiftsE8allocateEmPKv,"axG",@progbits,_ZNSt15__new_allocatorI13BitwiseShiftsE8allocateEmPKv,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorI13BitwiseShiftsE8allocateEmPKv
	.type	_ZNSt15__new_allocatorI13BitwiseShiftsE8allocateEmPKv, @function
_ZNSt15__new_allocatorI13BitwiseShiftsE8allocateEmPKv:
.LFB2964:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movabsq	$576460752303423487, %rax
	cmpq	-32(%rbp), %rax
	setb	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	je	.L145
	movabsq	$1152921504606846975, %rax
	cmpq	-32(%rbp), %rax
	jnb	.L146
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L146:
	call	_ZSt17__throw_bad_allocv@PLT
.L145:
	movq	-32(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdi
	call	_Znwm@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2964:
	.size	_ZNSt15__new_allocatorI13BitwiseShiftsE8allocateEmPKv, .-_ZNSt15__new_allocatorI13BitwiseShiftsE8allocateEmPKv
	.section	.text._ZSt12__niter_baseIP13BitwiseShiftsET_S2_,"axG",@progbits,_ZSt12__niter_baseIP13BitwiseShiftsET_S2_,comdat
	.weak	_ZSt12__niter_baseIP13BitwiseShiftsET_S2_
	.type	_ZSt12__niter_baseIP13BitwiseShiftsET_S2_, @function
_ZSt12__niter_baseIP13BitwiseShiftsET_S2_:
.LFB2965:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2965:
	.size	_ZSt12__niter_baseIP13BitwiseShiftsET_S2_, .-_ZSt12__niter_baseIP13BitwiseShiftsET_S2_
	.section	.text._ZSt14__relocate_a_1I13BitwiseShiftsS0_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS3_E4typeES5_S5_S5_RSaIT0_E,"axG",@progbits,_ZSt14__relocate_a_1I13BitwiseShiftsS0_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS3_E4typeES5_S5_S5_RSaIT0_E,comdat
	.weak	_ZSt14__relocate_a_1I13BitwiseShiftsS0_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS3_E4typeES5_S5_S5_RSaIT0_E
	.type	_ZSt14__relocate_a_1I13BitwiseShiftsS0_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS3_E4typeES5_S5_S5_RSaIT0_E, @function
_ZSt14__relocate_a_1I13BitwiseShiftsS0_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS3_E4typeES5_S5_S5_RSaIT0_E:
.LFB2966:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-32(%rbp), %rax
	subq	-24(%rbp), %rax
	sarq	$4, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jle	.L151
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
.L151:
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2966:
	.size	_ZSt14__relocate_a_1I13BitwiseShiftsS0_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS3_E4typeES5_S5_S5_RSaIT0_E, .-_ZSt14__relocate_a_1I13BitwiseShiftsS0_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS3_E4typeES5_S5_S5_RSaIT0_E
	.section	.text._ZSt3minImERKT_S2_S2_,"axG",@progbits,_ZSt3minImERKT_S2_S2_,comdat
	.weak	_ZSt3minImERKT_S2_S2_
	.type	_ZSt3minImERKT_S2_S2_, @function
_ZSt3minImERKT_S2_S2_:
.LFB2973:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L154
	movq	-16(%rbp), %rax
	jmp	.L155
.L154:
	movq	-8(%rbp), %rax
.L155:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2973:
	.size	_ZSt3minImERKT_S2_S2_, .-_ZSt3minImERKT_S2_S2_
	.section	.rodata
	.type	_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE, @object
	.size	_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE, 1
_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE:
	.byte	1
	.type	_ZNSt8__detail30__integer_to_chars_is_unsignedImEE, @object
	.size	_ZNSt8__detail30__integer_to_chars_is_unsignedImEE, 1
_ZNSt8__detail30__integer_to_chars_is_unsignedImEE:
	.byte	1
	.type	_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE, @object
	.size	_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE, 1
_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE:
	.byte	1
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
