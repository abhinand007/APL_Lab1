	.file	"exp1_3.c"
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
	subq	$64, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -56(%rbp)
	jmp	.L2
.L3:
	movl	-56(%rbp), %eax
	leal	1(%rax), %edx
	movl	-56(%rbp), %eax
	cltq
	movl	%edx, -48(%rbp,%rax,4)
	addl	$1, -56(%rbp)
.L2:
	cmpl	$9, -56(%rbp)
	jle	.L3
	movl	$0, -52(%rbp)
	jmp	.L4
.L5:
	movl	-52(%rbp), %eax
	cltq
	movl	-48(%rbp,%rax,4), %eax
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	addl	$1, -52(%rbp)
.L4:
	cmpl	$9, -52(%rbp)
	jle	.L5
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L7
	call	__stack_chk_fail
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
