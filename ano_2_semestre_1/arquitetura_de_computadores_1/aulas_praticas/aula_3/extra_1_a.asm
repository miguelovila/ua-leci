	.data
	.eqv	print_str,4
	.eqv	read_int,5
	.eqv	print_int16,34
str1:	.asciiz	"\nIntroduza um numero: "
str2:	.asciiz	"\nValor em codigo Gray: "
str3:	.asciiz	"\nValor em codigo Binario: "
	.text
	.globl main
	
	# Mapa de registos principal
	# $t0 = gray
	# $t1 = bin
	# $t2 = mask
	
main:
	# Pedir entrada de dados		  print_string("Introduza um numero: ");
	la	$a0,str1
	li	$v0,print_str
	syscall
	
	# Entrada de dados			  gray = read_int();
	li	$v0,read_int
	syscall
	la	$t0,($v0)
	
	# Processamento
	srl	$t2,$t0,1			# mask = gray >> 1;
	la	$t1,($t1)			# bin = gray;
	
while:		beqz	$t2,endwhile		# while(mask != 0)
	xor	$t1,$t1,$t2			# bin = bin ^ mask;
	srl	$t2,$t2,1			# mask = mask >> 1;
	j	while

endwhile:
	# Mostrar prompt em Gray		  print_string("\nValor em código Gray: ");
	la	$a0,str2
	li	$v0,print_str
	syscall
	# Mostrar valor em Gray			  print_int16(gray);
	la	$a0,($t0)
	li	$v0,print_int16
	syscall
	# Mostrar prompt em Binario		  print_string("\nValor em binario:");
	la	$a0,str3
	li	$v0,print_str
	syscall
	# Mostrar valor em Binario		  print_int16(bin);
	la	$a0,($t1)
	li	$v0,print_int16
	syscall
	
	jr 	$ra