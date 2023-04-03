	.data
	.eqv	read_string,8
	.eqv	print_int10,1
	.eqv	SIZE,20
str:	.space	SIZE
	.text
	.globl	main

	# Mapa de registos
	# num = $t0
	# i = $t1
	# str = $t2
	# str+i = $t3
	# str[i] = $t4

main:
	la	$a0,str
	li	$a1,SIZE
	li	$v0,read_string
	syscall					# read_string(str, SIZE);
	li	$t0,0				# num = 0;
	li	$t1,0				# i = 0;
while:
	la	$t2,str				# definir o endereço inicial da string
	addu	$t3,$t2,$t1			# gerar o endereço do caracter: addr_ini += i
	lb	$t4,0($t3)			# a partir do endereço, buscar o valor lá armazenado
	beq	$t4,'\0',endwhile		# while(str[i] != '\0')
if:
	blt	$t4,'0',endif
	bgt	$t4,'9',endif			# if((str[i] >= '0') && (str[i] <= '9'))
	addi	$t0,$t0,1			# num++;
endif:
	addi	$t1,$t1,1			# i++;
	j	while
endwhile:
	la	$a0,($t0)
	li	$v0,print_int10
	syscall					# print_int10(num);
	jr	$ra