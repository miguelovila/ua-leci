	.data
	.eqv	print_int10,1
	.eqv	SIZE,4
array:	.word	7692,23,5,234
	.text
	.globl	main

	# Mapa de Registos Principal
	# $t0 = soma
	# $t1 = i
	# $t2 = i * 4
	# $t3 = &array

main:
	li	$t0,0			# int soma = 0;
	li	$t1,0			# int i = 0;
	la	$t3,array
while:
	bge	$t1,SIZE,endwhile	# while(i < SIZE)
	mul	$t2,$t1,4
	addu	$t2,$t2,$t3
	lw	$t4,0($t2)
	add	$t0,$t0,$t4
	addiu	$t1,$t1,1		# i++;
	j	while
endwhile:
	la	$a0,($t0)
	li	$v0,print_int10
	syscall				# print_int10(soma);
	
	jr	$ra