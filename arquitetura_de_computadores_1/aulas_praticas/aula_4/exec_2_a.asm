	.data
	.eqv	read_string,8
	.eqv	print_int10,1
	.eqv	SIZE,20
str:	.space	SIZE
	.text
	.globl	main
	
	# Mapa de Registos
	# $t0 = num
	# $t1 = p
	# $t2 = *p
	
main:
	li	$t0,0			# int num = 0;

	la	$a0,str
	li	$a1,SIZE
	li	$v0,read_string
	syscall				# read_string(str, SIZE);
	
	la	$t1,str			# p = str;
while:
	lb	$t2,($t1)
	beq	$t2,'\0',endwhile	# while(*p != '\0')
	blt	$t2,'0',endif
	bgt	$t2,'9',endif		# if((*p >= '0') && (*p <= '9'))
	addi	$t0,$t0,1		# num++;
endif:
	addiu	$t1,$t1,1		# p++;
	j	while
endwhile:
	la	$a0,($t0)
	li	$v0,print_int10
	syscall				# print_int10(num);
	
	jr	$ra