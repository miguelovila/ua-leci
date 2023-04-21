	.data
	.eqv	print_string,4
str1:	.asciiz	"Arquitetura de Computadores I"
	.text
	.globl main
main:
	addiu	$sp,$sp,-4
	sw	$ra,0($sp)
	
	la	$a0,str1
	jal	strrev
	move	$a0,$v0
	li	$v0,print_string
	syscall
	
	lw	$ra,0($sp)
	addiu	$sp,$sp,4
	jr	$ra
	
	.data
	.text
strrev:
	addiu	$sp,$sp,-16
	sw	$ra,0($sp)
	sw	$s0,4($sp)
	sw	$s1,8($sp)
	sw	$s2,12($sp)
	
	move	$s0,$a0
	move	$s1,$a0
	move	$s2,$a0
while0:
	lb	$t0,0($s2)
	beq	$t0,'\0',endwhile0
	addiu	$s2,$s2,1
	j	while0
endwhile0:
	addiu	$s2,$s2,-1
while1:
	bge	$s1,$s2,endwhile1
	move	$a0,$s1
	move	$a1,$s2
	jal	exchange
	addiu	$s1,$s1,1
	addiu	$s2,$s2,-1
	j	while1
endwhile1:
	move	$v0,$s0
	
	lw	$ra,0($sp)
	lw	$s0,4($sp)
	lw	$s1,8($sp)
	lw	$s2,12($sp)
	addiu	$sp,$sp,16
	jr	$ra
	
	.data
	.text
exchange:
	lb	$t0,0($a0)
	lb	$t1,0($a1)
	sb	$t1,0($a0)
	sb	$t0,0($a1)
	jr	$ra
