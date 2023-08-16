		.equ	IN_KEY,1
		.equ	PUT_CHAR,3
		.data
		.text
		.globl	main
main:
doWhile0:
		li	$v0,IN_KEY
		syscall
		move	$t0,$v0
		li	$v0,PUT_CHAR
if0:		
		beq	$t0,0,else0
		move	$a0,$t0
		syscall
		j	endIf0
else0:
		li	$a0,'.'
		syscall
endIf0:
		bne	$t0,'\n',doWhile0
endDoWhile0:
		li	$v0,0
		jr	$ra
