	.file	"multiplyBy61.cpp"
	.text
	.globl	_Z12multiplyBy61P8IntArray
	.type	_Z12multiplyBy61P8IntArray, @function
_Z12multiplyBy61P8IntArray:
.LFB0:
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
	jmp	.L2
.L3:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %ecx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	#NO IMUL: Russian Peasant shift-and-add begins
	xorl	%eax, %eax			# result = 0
	# bit 0: result += (ecx << 0)  [contributes 1x]
	addl	%ecx, %eax			
	# bit 2: result += (ecx << 2)  [contributes 4x]
	movl	%ecx, %r8d			
	shll	$2, %r8d				# r8d = ecx << 2  (ecx * 4)
	addl	%r8d, %eax			
	# bit 3: result += (ecx << 3)  [contributes 8x]
	movl	%ecx, %r8d			
	shll	$3, %r8d				# r8d = ecx << 3  (ecx * 8)
	addl	%r8d, %eax			
	# bit 4: result += (ecx << 4)  [contributes 16x]
	movl	%ecx, %r8d			
	shll	$4, %r8d				# r8d = ecx << 4  (ecx * 16)
	addl	%r8d, %eax			
	# bit 5: result += (ecx << 5)  [contributes 32x]
	movl	%ecx, %r8d			
	shll	$5, %r8d				# r8d = ecx << 5  (ecx * 32)
	addl	%r8d, %eax			
	# --- Russian Peasant shift-and-add ends ---
	movl	%eax, (%rdx)
	addl	$1, -4(%rbp)
.L2:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L3
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	_Z12multiplyBy61P8IntArray, .-_Z12multiplyBy61P8IntArray
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
