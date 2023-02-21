		.equ	PUT_CHAR,3
		.equ	PRINT_INT,6
		.data
		.text
		.globl	main
main:
		addiu	$sp,$sp,-8
		sw		$ra,0($sp)
		sw		$t0,4($sp)
		li		$t0,0
mainWhile0:
		move	$a0,$t0
		li		$a1,0x0004000A
		li		$v0,PRINT_INT
		syscall
		li		$v0,PUT_CHAR
		la		$a0,'\r'
		syscall
		li		$a0,500
		jal		delay
		addi	$t0,$t0,1
		bge		$t0,10,mainEndWhile0	# Not on the exercice
		j		mainWhile0
mainEndWhile0:
		li		$v0,0
		lw		$t0,4($sp)
		lw		$ra,0($sp)
		addiu	$sp,$sp,8
		jr		$ra

		.equ	READ_CORE_TIMER,11
		.equ	RESET_CORE_TIMER,12
		.data
		.text
delay:
		li		$v0,RESET_CORE_TIMER
		syscall
		mul	$a0,$a0,20000
delayWhile0:
		li		$v0,READ_CORE_TIMER
		syscall
		blt		$v0,$a0,delayWhile0
delayEndWhile0:
		jr		$ra
