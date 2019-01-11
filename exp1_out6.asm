	.file	"exp1_6.c"
;This is not an instruction
	.text
;This is not an instruction
	.globl	recursion
;This is not an instruction
	.type	recursion, @function
;This is not an instruction
recursion:
;This is not an instruction
.LFB0:
;This is not an instruction
	.cfi_startproc
;This is not an instruction
PUSHQ Push quad word

	.cfi_def_cfa_offset 16
;This is not an instruction
	.cfi_offset 6, -16
;This is not an instruction
MOVQ	Move Doubleword/Move Quadword 

	.cfi_def_cfa_register 6
;This is not an instruction
SUBQ    Subtract quad

MOVL    Move Long word

	cmpl	$1, -4(%rbp)
;This is not an instruction
	jne	.L2
;This is not an instruction
MOVL    Move Long word

JMP	Jump

.L2:
;This is not an instruction
MOVL    Move Long word

SUBL    Subtract long

MOVL    Move Long word

CALL	Call Procedure

	imull	-4(%rbp), %eax
;This is not an instruction
.L3:
;This is not an instruction
LEAVE	High Level Procedure Exit

	.cfi_def_cfa 7, 8
;This is not an instruction
RET	Return from Procedure

	.cfi_endproc
;This is not an instruction
.LFE0:
;This is not an instruction
	.size	recursion, .-recursion
;This is not an instruction
	.section	.rodata
;This is not an instruction
.LC0:
;This is not an instruction
	.string	"%d"
;This is not an instruction
.LC1:
;This is not an instruction
	.string	"%d\n"
;This is not an instruction
	.text
;This is not an instruction
	.globl	main
;This is not an instruction
	.type	main, @function
;This is not an instruction
main:
;This is not an instruction
.LFB1:
;This is not an instruction
	.cfi_startproc
;This is not an instruction
PUSHQ Push quad word

	.cfi_def_cfa_offset 16
;This is not an instruction
	.cfi_offset 6, -16
;This is not an instruction
MOVQ	Move Doubleword/Move Quadword 

	.cfi_def_cfa_register 6
;This is not an instruction
SUBQ    Subtract quad

MOVQ	Move Doubleword/Move Quadword 

MOVQ	Move Doubleword/Move Quadword 

	xorl	%eax, %eax
;This is not an instruction
	leaq	-12(%rbp), %rax
;This is not an instruction
MOVQ	Move Doubleword/Move Quadword 

MOVL    Move Long word

MOVL    Move Long word

CALL	Call Procedure

MOVL    Move Long word

MOVL    Move Long word

CALL	Call Procedure

MOVL    Move Long word

MOVL    Move Long word

MOVL    Move Long word

CALL	Call Procedure

MOVL    Move Long word

MOVQ	Move Doubleword/Move Quadword 

	xorq	%fs:40, %rdx
;This is not an instruction
	je	.L6
;This is not an instruction
CALL	Call Procedure

.L6:
;This is not an instruction
LEAVE	High Level Procedure Exit

	.cfi_def_cfa 7, 8
;This is not an instruction
RET	Return from Procedure

	.cfi_endproc
;This is not an instruction
.LFE1:
;This is not an instruction
	.size	main, .-main
;This is not an instruction
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
;This is not an instruction
	.section	.note.GNU-stack,"",@progbits
;This is not an instruction
