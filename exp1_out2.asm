	.file	"exp1_2.c"
;This is not an instruction
	.section	.rodata
;This is not an instruction
.LC0:
;This is not an instruction
	.string	"%d %d\n"
;This is not an instruction
	.text
;This is not an instruction
	.globl	main
;This is not an instruction
	.type	main, @function
;This is not an instruction
main:
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
PUSHQ Push quad word

PUSHQ Push quad word

	.cfi_offset 12, -24
;This is not an instruction
	.cfi_offset 3, -32
;This is not an instruction
MOVL    Move Long word

MOVL    Move Long word

ADDL    Adding long word 32 bit

MOVL    Move Long word

SUBL    Subtract long

MOVL    Move Long word

SUBL    Subtract long

MOVL    Move Long word

MOVL    Move Long word

MOVL    Move Long word

MOVL    Move Long word

CALL	Call Procedure

MOVL    Move Long word

	popq	%rbx
;This is not an instruction
	popq	%r12
;This is not an instruction
	popq	%rbp
;This is not an instruction
	.cfi_def_cfa 7, 8
;This is not an instruction
RET	Return from Procedure

	.cfi_endproc
;This is not an instruction
.LFE0:
;This is not an instruction
	.size	main, .-main
;This is not an instruction
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
;This is not an instruction
	.section	.note.GNU-stack,"",@progbits
;This is not an instruction
