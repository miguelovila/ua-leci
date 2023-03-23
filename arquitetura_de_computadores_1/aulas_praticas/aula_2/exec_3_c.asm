	.data
	.eqv	print_str,4
str1:	.asciiz	"\nUma string qualuqer"
str2:	.asciiz	"\nAC1 - P"
	.text
	.globl	main
main:
	la	$a0,str1
	li	$v0,print_str
	syscall
	
	# OR
	
	la	$a0,str2
	ori	$v0,$0,print_str
	syscall
	
	jr	$ra