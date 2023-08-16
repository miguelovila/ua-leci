	.data
	.text
	.globl main
main:	addiu	$sp,$sp,-4
	sw	$ra,0($sp)

	li	$v0,6
	syscall
	mov.s	$f12,$f0
	
	li	$v0,5
	syscall
	move	$a0,$v0
	jal	xtoy
	
	li	$v0,2
	mov.s	$f12,$f0
	syscall

	lw	$ra,0($sp)
	addiu	$sp,$sp,4
	jr 	$ra

# Mapa de Registos
# val = $a0
# return = $v0

abs:
	bgez	$a0,endif0
	sub	$a0,$0,$a0
endif0:
	move	$v0,$a0
	jr	$ra
					
# Mapa de Registos
# x = $f12 -> $f20
# y = $a0 -> $s0
# i = $t0
# abs(y) = $t1
# result = $f0
	.data
fk0:	.float	1.0
	.text
xtoy:
	addiu	$sp,$sp,-12
	sw	$ra,0($sp)
	sw	$s0,4($sp)
	s.s	$f20,8($sp)
	
	move	$s0,$a0
	mov.s	$f20,$f12
	
	jal	abs
	move	$t1,$v0
	
	li	$t0,0
	la	$t2,fk0
	l.s	$f0,0($t2)	
for:
	bge	$t0,$t1,endfor
if1:	
	blez	$s0,else1
	mul.s	$f0,$f0,$f20
	j	endif1
else1:
	div.s 	$f0,$f0,$f20
endif1:
	addiu	$t0,$t0,1
	j	for
endfor:
	lw	$ra,0($sp)
	lw	$s0,4($sp)
	l.s	$f20,8($sp)
	addiu	$sp,$sp,12
	
	jr	$ra