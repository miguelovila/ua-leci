	.data
	.eqv	print_string,4
str0:	.asciiz	"\n"
str3:	.asciiz "Computadores 1"
str1:	.asciiz	"Arquitetura de "
str2:	.space	50
	.text
	.globl	main
main:
	addiu	$sp,$sp,-4
	sw	$ra,0($sp)
	la	$a0,str2
	la	$a1,str1
	jal	strcpy
	la	$a0,str2
	li	$v0,print_string
	syscall
	la	$a0,str0
	li	$v0,print_string
	syscall
	la	$a0,str2
	la	$a1,str3
	jal	strcat
	move	$a0,$v0
	li	$v0,print_string
	syscall
	li	$v0,0
	lw	$ra,0($sp)
	addiu	$sp,$sp,4
	jr	$ra
##################################################################
	.data
	.text
strcat:
	addiu	$sp,$sp,-8
	sw	$ra,0($sp)
	sw	$s0,4($sp)
	move	$s0,$a0
while:
	lb	$t0,0($a0)
	beq	$t0,'\0',endwhile
	addiu	$a0,$a0,1
	j	while
endwhile:
	jal	strcpy
	move	$v0,$s0
	lw	$s0,4($sp)
	lw	$ra,0($sp)
	addiu	$sp,$sp,8
	jr	$ra
##################################################################
	.data
	.text
strcpy:
	li	$t0,0
do0:
	addu	$t1,$t0,$a1
	lb	$t1,0($t1)
	addu	$t2,$t0,$a0
	sb	$t1,0($t2)
	move 	$t2,$t1
	addi	$t0,$t0,1
	bne	$t2,'\0',do0
enddo0:
	move	$v0,$a0
	jr	$ra