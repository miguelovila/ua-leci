	.data
	.eqv print_string,4
	.eqv read_int,5
	.eqv SIZE,5
str1:	.asciiz "\nIntroduza um numero: "
	.align	2
lista:	.space	20
	.text
	.globl	 main
main:
	li	$t0,0
	la	$t1,lista
for:
	bge	$t0,SIZE,endfor
	la	$a0,str1
	li	$v0,print_string
	syscall
	li	$v0,read_int
	syscall
	mul	$t2,$t0,4
	addu	$t2,$t2,$t1
	sw	$v0,0($t2)
	addi	$t0,$t0,1
	j	for
endfor:
	jr	$ra