# Mapa de Registos
# n_even: $t0
# n_odd: $t1
# p1: $t2
# p2: $t3
# a+N: $t4
# *p1 = $t5
# *p1%2 = $t6
# 2 = $t7
	.data
	.eqv	print_int10,1
	.eqv	read_int,5
	.eqv	N,35
a:	.space	140
b:	.space	140
	.text
	.globl	main
main:
	li	$t0,0				# int n_even = 0;
	li	$t1,0				# int n_odd = 0;
	
	la	$t2,a				# p1 = a;
	li	$t4,N
	mul	$t4,$t4,4
	addu	$t4,$t4,$t2			# a + N = (N * 4) + a
for0:
	bgeu	$t2,$t4,endfor0			# for(p1 = a; p1 < (a + N); p1++)
	li	$v0,read_int
	syscall
	sw	$v0,0($t2)			# *p1 = read_int();
	addiu	$t2,$t2,4			# p1++;
	j	for0
endfor0:
	la	$t2,a				# p1 = a;
	la	$t3,b				# p2 = b;
for1:
	bgeu	$t2,$t4,endfor1			# for(p1 = a, p2 = b; p1 < (a + N); p1++)
	lw	$t5,0($t2)
	li	$t7,2
	rem	$t6,$t5,$t7			# *p1 % 2
	beqz	$t6,else
	sw	$t5,0($t3)			# *p2 = *p1
	addiu	$t3,$t3,4			# p2++;
	addi	$t1,$t1,1			# n_odd++;
	j	endif
else:
	addi	$t0,$t0,1			# n_even++;
endif:
	addiu	$t2,$t2,4			# p1++;
	j	for1
endfor1:
	la	$t3,b				# p2 = b;
	mul	$t4,$t1,4
	addu	$t4,$t4,$t3			# b + n_odd = (n_odd * 4) + b
for2:
	bge	$t3,$t4,endfor2			# while(p2 = b; p2 < (b + n_odd); p2++)
	lw	$a0,0($t3)
	li	$v0,print_int10
	syscall
	addiu	$t3,$t3,4			# p2++;
	j	for2
endfor2:
	jr 	$ra
