	.data
	.eqv print_int10,1
	.eqv print_string,4
	.eqv read_int,5
	.eqv SIZE,10
	.eqv TRUE,1
	.eqv FALSE,0
str1:	.asciiz "\nIntroduza um numero: "
str2:	.asciiz	"\nConteudo fo array:\n"
str3:	.asciiz	"; "
	.align	2
lista:	.space	40
	.text
	.globl	 main
main:
	li	$t0,0				# i = 0;
	la	$t1,lista			# p = lista;
for0:
	bge	$t0,SIZE,endfor0		# while(i < SIZE)
	la	$a0,str1
	li	$v0,print_string
	syscall					# print_string("\nIntroduza um numero: ");
	li	$v0,read_int
	syscall					# red_int()
	mul	$t2,$t0,4
	addu	$t2,$t2,$t1
	sw	$v0,0($t2)			# lista[i] = read_int()
	addi	$t0,$t0,1			# i++
	j	for0
	
	# Mapa de Registos (apenas desta parte)
	# $t0 = houveTroca
	# $t1 = i
	# $t2 = SIZE-1
	# $t3 = lista
	# $t4 = &lista[i]
	# $t5 = *lista[i]
	# $t6 = *lista[i+1]
	# $t7 = aux

endfor0:
	li	$t2,SIZE
	subi	$t2,$t2,1
	la	$t3,lista
dowhile:
	li	$t0,FALSE
	li	$t1,0
for1:
	bge	$t1,$t2,endfor1
	la	$t4,($t1)
	mul	$t4,$t4,4
	addu	$t4,$t4,$t3
	lw	$t5,0($t4)
	lw	$t6,4($t4)
	ble	$t5,$t6,endif
	la	$t7,($t5)
	sw	$t6,0($t4)
	sw	$t7,4($t4)
	li	$t0,TRUE
endif:
	addi	$t1,$t1,1
	j	for1
endfor1:
	beq	$t0,FALSE,enddowhile
	j	dowhile
enddowhile:
	la	$a0,str2
	li	$v0,print_string
	syscall					# print_string("\nConteudo fo array:\n");
	la	$t0,lista			# p = lista;
	li	$t2,SIZE			# $t2 = SIZE
	mul	$t2,$t2,4			# $t2 *= 4
	addu	$t2,$t2,$t0			# $t2 = lista + SIZE*4
for2:
	bgeu	$t0,$t2,endfor2
	lw	$t1,0($t0)			# $t1 = *p
	la	$a0,0($t1)
	li	$v0,print_int10
	syscall					# print_int10( *p );
	la	$a0,str3
	li	$v0,print_string
	syscall					# print_string("; ");
	addiu	$t0,$t0,4			# p++;
	j	for2
endfor2:
	jr	$ra
