		.equ	PUT_CHAR,3
		.equ	PRINT_INT,6
		.data
		.text
		.globl	main
main:
		addiu	$sp,$sp,-16
		sw		$ra,0($sp)
		sw		$t0,4($sp)
		sw		$t1,8($sp)
		sw		$t2,12($sp)
		li		$t0,0		# cnt1
		li		$t1,0		# cnt5
		li		$t2,0		# cnt10
mainWhile0:
		la		$a0,'\r' 
		li		$v0,PUT_CHAR
		syscall
		move	$a0,$t0
		li		$a1,0x0004000A
		li		$v0,PRINT_INT
		syscall
		la		$a0,'\t'
		li		$v0,PUT_CHAR
		syscall
		move	$a0,$t1
		li		$a1,0x0004000A
		li		$v0,PRINT_INT
		syscall
		la		$a0,'\t'
		li		$v0,PUT_CHAR
		syscall
		move	$a0,$t2
		li		$a1,0x0004000A
		li		$v0,PRINT_INT
		syscall
		li		$a0,100
		jal		delay
		addi	$t0,$t0,1
		andi 	$t3,$t0,1
		beq		$t3,$0,skipT1Increment
		addi	$t1,$t1,1
skipT1Increment:
		rem 	$t3,$t0,10
		bne		$t3,$0,skipT2Increment
		addi	$t2,$t2,1
skipT2Increment:
		j		mainWhile0
mainEndWhile0:
		li		$v0,0
		lw		$t2,12($sp)
		lw		$t1,8($sp)
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