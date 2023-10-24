	.data
	.eqv	print_10,1
	.eqv	print_str,4
	.eqv	read_int,5
str1:	.asciiz	"\nIntroduza um numero: "
str2:	.asciiz	"\nNumero ignorado!"
str3:	.asciiz	"\nA soma dos positivos e: "
	.text
	.globl main
	
	# Mapa de registos
	# $t0 = soma
	# $t1 = valor
	# $t2 = i
	
main:
	li	$t0,0
	li	$t2,0
for:
	bge	$t2,5,final
	la	$a0,str1
	li	$v0,print_str
	syscall
	li	$v0,read_int
	syscall
	la	$t1,($v0)

	blez	$t1,else
if:
	add	$t0,$t0,$t1
	addi	$t2,$t2,1
	j	for
else:
	la	$a0,str2
	li	$v0,print_str
	syscall
	j	for

final:
	la	$a0,str3
	li	$v0,print_str
	syscall
	la	$a0,($t0)
	li	$v0,print_10
	syscall
	
	jr	$ra
	