		.equ	GET_CHAR,2
		.equ	PUT_CHAR,3

		.data
		.text
		.globl	main

main:		
doWhile0:	li	$v0,GET_CHAR
		syscall
		move	$t0,$v0
		addiu	$a0,$t0,1
		li	$v0,PUT_CHAR
		syscall
		bne	$t0,'\n',doWhile0
endDoWhile0:	li	$v0,0
		jr	$ra
