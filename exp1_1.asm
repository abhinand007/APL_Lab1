	.file	"exp1_1.c"
	.section	.rodata
.LC0:
	.string	"%d %d %d %d %d %d %d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$8, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movl	$5, %r12d
	movl	$7, %ebx
	leal	(%r12,%rbx), %r13d
	movl	%ebx, %r15d
	subl	%r12d, %r15d
	movl	%r12d, %r14d
	imull	%ebx, %r14d
	movl	%ebx, %eax
	cltd
	idivl	%r12d
	movl	%eax, %r8d
	movl	%r12d, %eax
	cltd
	idivl	%ebx
	movl	%r12d, %ecx
	orl	%ebx, %ecx
	andl	%r12d, %ebx
	pushq	%rbx
	pushq	%rcx
	movl	%edx, %r9d
	movl	%r14d, %ecx
	movl	%r15d, %edx
	movl	%r13d, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	addq	$16, %rsp
	movl	$0, %eax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
