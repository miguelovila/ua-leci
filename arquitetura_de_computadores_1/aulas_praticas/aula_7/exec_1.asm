	.data
	.eqv print_int10,1
str1: 	.asciiz "Arquitetura de Computadores I"
	.text
	.globl main
main:
	addiu $sp,$sp,-4
	sw $ra,0($sp)
	la $a0,str1
	jal strlen
	move $a0,$v0
	li $v0,print_int10
	syscall
	lw $ra,0($sp)
	addiu $sp,$sp,4
	jr $ra

	.data
	.text
strlen:
	li $v0,0
	while:
		lb $t0,0($a0)
		addiu $a0,$a0,1
		beq $t0,'\0',endwhile
		addi $v0,$v0,1
		j while
	endwhile:
	jr $ra	