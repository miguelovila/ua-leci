		.equ	READ_CORE_TIMER,11
		.equ	RESET_CORE_TIMER,12
		.equ	PUT_CHAR,3
		.equ	PRINT_INT,6
		.data
		.text
		.globl	main
main:
		li		$t0,0
while0:
		li		$v0,RESET_CORE_TIMER
		syscall
while1:
		li		$v0,READ_CORE_TIMER
		syscall
		bge		$v0,4000000,endWhile1	# 5Hz
		j		while1
endWhile1:
		move	$a0,$t0
		li		$a1,0x0004000A
		li		$v0,PRINT_INT
		syscall
		addi	$t0,$t0,1
		li		$v0,PUT_CHAR
		la		$a0,'\r'
		syscall
		j		while0
endWhile0:
		li		$v0,0
		jr		$ra
