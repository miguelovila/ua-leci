	.data
	.text
	.globl main
main:
	li	$v0,6
	syscall
	mov.s	$f12,$f0
	
	jal	sqrt
	
	li	$v0,2
	mov.s	$f12,$f0
	syscall

	jr 	$ra


# Mapa de Registos
# val = $f12
# aux = $f16
# i = $t0
# xn = $f0
	.data
fk0:	.double 0.0
fk1:	.double	1.0
fk2:	.double	0.5
	.text
sqrt:
	la	$t1,fk0
	l.d	$f4,0($t1)
	la	$t1,fk1
	l.d	$f0,0($t1)
	la	$t1,fk2
	l.d	$f6,0($t1)
if:
	c.le.d	$f12,$f4
	bc1t	endif
do:
	mov.d	$f16,$f0
	add.d	$f18,$f0,$f12 	# xn + val
	div.d	$f18,$f18,$f0	# (xn + val) / xn
	mul.d	$f0,$f6,$f18
	c.eq.d	$f16,$f0
	bc1t	endif
	blt	$t0,25,do
	addi	$t0,$t0,1
else:
	mov.d	$f0,$f4
endif:
	jr	$ra