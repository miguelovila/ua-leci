	.data
	.eqv	SIZE,10
	.eqv 	read_int,5
	.eqv	print_double,3
	.align	3
a:	.space	80
	.text
	.globl main
	
# Mapa de registos
# i = $t0
	
main:
	addiu	$sp,$sp,-4
	sw	$ra,0($sp)

	li	$t0,0
for:
	bge	$t0,SIZE,endfor
	li	$v0,read_int
	syscall					# read_int()
	mtc1	$v0,$f0
	cvt.d.w	$f0,$f0				# $f0 = (double)read_int()
	
	la	$t1,a				# $t1 = endereço de a[0]
	sll	$t2,$t0,3			# i *= 8
	addu	$t1,$t1,$t2			# $t2 = &a[i]
	s.d	$f0,0($t1)			# a[i] = ...
	addi	$t0,$t0,1			# i++
	
	j	for
endfor:
	la	$a0,a				# carregar o endereço do array
	li	$a1,SIZE			# carregar o numero de posicoes
	jal	average				# chamar a funcao
	mov.d	$f12,$f0
	li	$v0,print_double
	syscall					# print_double(average(a, size))
	li	$v0,0				# return 0
	
	
	lw	$ra,0($sp)
	addiu	$sp,$sp,4
	jr	$ra
	
	
	
	
	
	.data
zero:	.double	0.0
	.text
	
# Mapa de registos
# array  : $a0
# n	 : $a1
# i	 : $t0
# sum	 : $f0
# retorno: $f0
	
average:
	move	$t0,$a1				# i = n
	mtc1	$0,$f0				# constante 0.0 em $f0
	cvt.d.w	$f0,$f0				# $f0 = 0,0 / sum = 0.0
avgfor:
	ble	$t0,0,avgendfor
	addi	$t1,$t0,-1
	sll	$t1,$t1,3
	addu	$t1,$t1,$a0			# $t1 = &array[i-1]
	l.d	$f2,0($t1)			# $f2 = array[i-1]
	add.d	$f0,$f0,$f2			# sum += array[i-1]
	addi	$t0,$t0,-1			# i--
	j	avgfor
avgendfor:
	mtc1	$a1,$f2
	cvt.d.w	$f2,$f2
	div.d	$f0,$f0,$a1
	jr	$ra