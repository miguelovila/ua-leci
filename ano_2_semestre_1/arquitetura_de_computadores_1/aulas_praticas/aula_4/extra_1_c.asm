	.data
	.eqv	SIZE,21
	.eqv	print_string,4
	.eqv	read_string,8
str:	.space	SIZE
str1:	.asciiz	"Introduza uma string: "
	.text
	.globl main
main:
	la	$a0,str1
	li	$v0,print_string
	syscall				# print_string("Introduza uma string: ");
	la	$a0,str
	li	$a1,SIZE
	li	$v0,read_string
	syscall				# read_string(str, SIZE);
	la	$t0,str			# p = str;
while:
	lb	$t1,0($t0)
	beq	$t1,'\0',endwhile	# while(*p != '\0')
	blt	$t1,0x61,endif
	bgt	$t1,0x7A,endif		# if((*p >= 0x61) && (*p <= 0x7A))
	subi	$t1,$t1,0x20		# *p = *p – 'a' + 'A';
	sb	$t1,0($t0)
endif:
	addiu	$t0,$t0,1		# p++;
	j	while
endwhile:
	la	$a0,str
	li	$v0,print_string
	syscall				# print_string(str);
	jr	$ra
