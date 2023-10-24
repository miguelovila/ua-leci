	.data
	.eqv	read_int,5
	.eqv	print_float,2
k1:	.float	2.59375				# definicao da constante
k2:	.float 	0.0
	.text
	.globl main
	
# Mapa de registos
# res: $f0
# val: $t0
	
main:
do:
	li	$v0,read_int
	syscall
	move	$t0,$v0				# val = read_int()
	mtc1	$t0,$f0
	cvt.s.w	$f0,$f0				# $f0 = (float)val
	la	$t1,k1				# $t1 = endereco da constante
	l.s	$f2,0($t1)			# $f2 = 2.59375
	mul.s	$f0,$f0,$f2			# res = val * 2.59375
	li	$v0,print_float
	mov.s	$f12,$f0
	syscall					# print_float(res)
	la	$t1,k2				# $t1 = endereco da constante
	l.s	$f2,0($t1)			# $f2 = 0.0
	
	c.eq.s	$f0,$f2
	bc1f	do				# while(res != 0.0)
	
	li	$v0,0				# return 0;
	jr	$ra
