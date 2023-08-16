	.data
	.eqv	print_int10,1
main_str0:	.asciiz	"2020 e 2024 sao anos bissextos"
	.text
	.globl	main
main:
	addiu	$sp,$sp,-4
	sw	$ra,0($sp)
	la	$a0,main_str0
	jal	atoi
	move	$a0,$v0
	li	$v0,print_int10
	syscall
	li	$v0,0
	lw	$ra,0($sp)
	addiu	$sp,$sp,4
	jr	$ra
############################################################
	.data
	.text
atoi:
	li	$v0,0
atoi_while0:
	lb	$t1,0($a0)
	blt	$t1,'0',atoi_endwhile0
	bgt	$t1,'9',atoi_endwhile0
	sub	$t1,$t1,'0'
	addiu	$a0,$a0,1
	mul	$v0,$v0,10
	addu	$v0,$v0,$t1
	j	atoi_while0
atoi_endwhile0:
	jr	$ra