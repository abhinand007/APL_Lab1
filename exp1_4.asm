	.file	"exp1_4.c"
	.section	.rodata
.LC0:
	.string	"%d\n"
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
	subq	$112, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -108(%rbp)
	jmp	.L2
.L3:
	movl	-108(%rbp), %eax
	leal	1(%rax), %edx
	movl	-108(%rbp), %eax
	cltq
	movl	%edx, -96(%rbp,%rax,4)
	addl	$1, -108(%rbp)
.L2:
	cmpl	$9, -108(%rbp)
	jle	.L3
	movl	$0, -104(%rbp)
	jmp	.L4
.L5:
	movl	-104(%rbp), %eax
	cltq
	movl	-96(%rbp,%rax,4), %edx
	movl	-104(%rbp), %eax
	cltq
	movl	%edx, -48(%rbp,%rax,4)
	addl	$1, -104(%rbp)
.L4:
	cmpl	$9, -104(%rbp)
	jle	.L5
	movl	$0, -100(%rbp)
	jmp	.L6
.L7:
	movl	-100(%rbp), %eax
	cltq
	movl	-48(%rbp,%rax,4), %eax
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	addl	$1, -100(%rbp)
.L6:
	cmpl	$9, -100(%rbp)
	jle	.L7
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L9
	call	__stack_chk_fail
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
