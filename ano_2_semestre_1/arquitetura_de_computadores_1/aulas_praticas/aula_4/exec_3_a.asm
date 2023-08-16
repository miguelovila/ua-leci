	.data
	.eqv	print_int10,1
	.eqv	SIZE,4
array:	.word	7692,23,5,234
	.text
	.globl	main

	# Mapa de Registos Principal
	# $t2 = *p
	# $t1 = *pultimo
	# $t3 = soma
	# $t0 = p

main:
	li	$t3,0			# int soma = 0;
	li	$t4,SIZE
	sub	$t4,$t4,1		# $t4 = 3 => i0, i1, i2, i3
	mul	$t4,$t4,4		# offset = nº posicao * 4
	la	$t0,array
	addu	$t1,$t0,$t4		# pultimo = array + (SIZE - 1) * 4
while:
	bgt	$t0,$t1,endwhile	# while(p <= pultimo)
	lw	$t2,0($t0)
	add	$t3,$t3,$t2		# soma = soma + (*p);
	addiu	$t0,$t0,4		# p++;
	j	while
endwhile:
	la	$a0,($t3)
	li	$v0,print_int10
	syscall				# print_int10(soma);
	
	jr	$ra