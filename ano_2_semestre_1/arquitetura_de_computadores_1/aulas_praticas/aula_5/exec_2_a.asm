	.data
	.eqv	print_string,4
	.eqv	print_int10,1
	.eqv	SIZE,10
lista:	.word	8,-4,3,5,124,-15,87,9,27,15
str1:	.asciiz	"\nConteudo fo array:\n"
str2:	.asciiz	"; "
	.text
	.globl main
	
	# Mapa de Registos
	# $t0 = p
	# $t1 = *p
	# $t2 = lista + SIZE

main:
	la	$a0,str1
	li	$v0,print_string
	syscall				# print_string("\nConteudo do array:\n");
	la	$t0,lista		# p = lista;
	li	$t2,SIZE
	mul	$t2,$t2,4
	addu	$t2,$t2,$t0
for:
	bgeu	$t0,$t2,endfor
	lw	$t1,($t0)
	la	$a0,($t1)
	li	$v0,print_int10
	syscall
	la	$a0,str2
	li	$v0,print_string
	syscall
	addiu 	$t0,$t0,4
	j	for
endfor:
	jr	$ra
