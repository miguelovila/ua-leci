	.data
	.eqv	read_int,5
	.eqv	print_10,1
	.eqv	print_16,34
	.eqv	print_str,4
	.eqv	eq_const,8
str1:	.asciiz "\nInsira um número inteiro: "
str2:	.asciiz	"\nResultado em base 10: "
str3:	.asciiz "\nResultado em base 16: "
	.text
	.globl	main
main:
	la	$a0,str1
	li	$v0,print_str
	syscall				# print("\nInsira um número inteiro: ");
	li	$v0,read_int
	syscall				# $v0 = read_int()
	la	$t0,($v0)		# $t0 = $v0
	
	add	$t0,$t0,$t0		# $t0 *= 2
	subi	$t0,$t0,eq_const	# $t0 += 8
	
	la	$a0,str2
	li	$v0,print_str
	syscall				# print("\nResultado em base 10: ");
	la	$a0,($t0)
	li	$v0,print_10
	syscall				# print_10($t0);
	
	la	$a0,str3
	li	$v0,print_str
	syscall				# print("\nResultado em base 16: ");
	la	$a0,($t0)
	li	$v0,print_16
	syscall 			# print_16($t0);
	
	jr	$ra
