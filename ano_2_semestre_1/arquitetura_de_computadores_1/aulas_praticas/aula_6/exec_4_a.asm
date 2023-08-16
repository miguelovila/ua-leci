	.data
	.eqv	print_string,4
	.eqv	print_int10,1
str1:	.asciiz	"Nr. de parametros: "
str2:	.asciiz	"\nP"
str3:	.asciiz	": "
	.text
	.globl main
	
# Mapa de registos:
# i    : $t2
# argc : $t0
# argv : $t1
	
main:
	move	$t0,$a0
	move	$t1,$a1
	
	la	$a0,str1
	li	$v0,print_string
	syscall
	
	move	$a0,$t0
	li	$v0,print_int10
	syscall
	
	li	$t2,0
for:
	bge	$t2,$t0,endfor
	
	la	$a0,str2
	li	$v0,print_string
	syscall
	
	move	$a0,$t2
	li	$v0,print_int10
	syscall
	
	la	$a0,str3
	li	$v0,print_string
	syscall
	
	mul	$a0,$t2,4
	addu	$a0,$a0,$t1
	lw	$a0,0($a0)
	syscall
	
	addiu	$t2,$t2,1
	j	for
endfor:
	jr	$ra