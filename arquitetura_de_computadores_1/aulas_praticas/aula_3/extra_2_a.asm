	.data
	.eqv	print_str,4
	.eqv	print_int10,1
	.eqv	read_int,5
str1:	.asciiz	"\nIntroduza dois numeros: "
str2:	.asciiz	"\nResultado: "
	.text
	.globl main

	# Mapa de registos principais
	# $t0 = res
	# $t1 = i
	# $t2 = mdor
	# $t3 = mdo
	
	# Mapa de registos auxiliares
	# $t4 = mdor & 0x00000001

main:
	li	$t0,0				# unsigned int res = 0;
	li	$t1,0				# unsigned int i = 0;

	la	$a0,str1
	li	$v0,print_str
	syscall					# print_string("Introduza dois numeros: ");

	li	$v0,read_int
	syscall					# read_int();
	andi	$t2,$v0,0xF			# mdor = read_int() & 0x0F;

	li	$v0,read_int
	syscall					# read_int();
	andi 	$t3,$v0,0xF			# mdo = read_int() & 0x0F;

while:
	beqz	$t2,endwhile
	bge	$t1,4,endwhile			# while( (mdor != 0) && (i < 4) )
	addi	$t1,$t1,1			# i++
	andi	$t4,$t2,0x00000001		# mdor & 0x00000001
	beqz	$t4,endif			# if( (mdor & 0x00000001) != 0 )
	addu	$t0,$t0,$t3			# res = res + mdo;
endif:
	sll	$t3,$t3,1			# mdo = mdo << 1;
	srl	$t2,$t2,1			# mdor = mdor >> 1;
	j	while

endwhile:
	la	$a0,str2
	li	$v0,print_str
	syscall					# print_string("Resultado: ");
	
	la	$a0,($t0)
	li	$v0,print_int10
	syscall
	
	jr 	$ra
