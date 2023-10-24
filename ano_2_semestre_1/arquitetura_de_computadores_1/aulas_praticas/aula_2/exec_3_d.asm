	.data
	.eqv	print_10,1
	.eqv	print_str,4
	.eqv	read_int,5
str1:	.asciiz	"\nIntroduza 2 numeros: "
str2:	.asciiz	"\nA soma dos dois numeros e: "
	.text
	.globl main
main:
	la	$a0,str1
	li	$v0,print_str
	syscall
	
	li	$v0,read_int
	syscall
	la	$t0,($v0)
	
	li	$v0,read_int
	syscall
	add	$t0,$t0,$v0
	
	la	$a0,str2
	li	$v0,print_str
	syscall
	
	la	$a0,($t0)
	li	$v0,print_10
	syscall
	
	jr	$ra