	.data
	.eqv	print_string,4
	.eqv	print_char,11
	.eqv	SIZE,3
str1:	.asciiz	"Array"
str2:	.asciiz "de"
str3: 	.asciiz "ponteiros"
array:	.word	str1,str2,str3
	.text
	.globl main
	
	# Mapa de Registos
	# $t0 = i
	# $t1 = array
	# $t2 = &array[i]
	
main:
	li	$t0,0
	la	$t1,array
for:
	bge	$t0,SIZE,endfor
	mul	$t2,$t0,4			
	addu	$t2,$t2,$t1			# $t2 = &array[i]
	lw	$a0,0($t2)			# $a0 = array[i]
	li	$v0,print_string
	syscall
	li	$a0,'\n'
	li	$v0,print_char
	syscall
	addi	$t0,$t0,1
	j	for
endfor:
	jr	$ra