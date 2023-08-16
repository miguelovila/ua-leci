	.data
	.eqv	print_string,4
	.eqv	read_int,5
	.eqv	MAX_STR_SIZE,33
main_str1:	.asciiz	"\n"
main_str0:	.space	33
	.text
	.globl	main
main:
	addiu	$sp,$sp,-16
	sw	$ra,0($sp)
	sw	$s0,4($sp)	# &str[0]
	sw	$s1,8($sp)	# val
	sw	$s2,12($sp)
	la	$s2,main_str0
main_do0:
	li	$v0,read_int
	syscall
	move	$s1,$v0
	
	move	$a0,$s1
	li	$a1,2
	move	$a2,$s2
	jal 	itoa
	la	$a0,0($v0)
	li	$v0,print_string
	syscall
	
	la	$a0,main_str1
	li	$v0,print_string
	syscall
	
	move	$a0,$s1
	li	$a1,8
	move	$a2,$s2
	jal 	itoa
	la	$a0,0($v0)
	li	$v0,print_string
	syscall
	
	la	$a0,main_str1
	li	$v0,print_string
	syscall
	
	move	$a0,$s1
	li	$a1,16
	move	$a2,$s2
	jal 	itoa
	la	$a0,0($v0)
	li	$v0,print_string
	syscall
	
	bne	$s1,$s0,main_do0
main_dowhile0:
	li	$v0,0
	lw	$ra,0($sp)
	lw	$s0,4($sp)	# &str[0]
	lw	$s1,8($sp)	# val
	lw	$s2,12($sp)
	addiu	$sp,$sp,16
	jr	$ra
############################################################
	.data
	.text
itoa:
	addiu	$sp,$sp,-20
	sw	$ra,0($sp)
	sw	$s0,4($sp)	# n
	sw	$s1,8($sp)	# b
	sw	$s2,12($sp)	# s
	sw	$s3,16($sp)	# p
	
	move	$s0,$a0
	move	$s1,$a1
	move	$s2,$a2
	move	$s3,$a2
	
itoa_do0:
	rem	$t0,$s0,$s1
	div	$s0,$s0,$s1
	move	$a0,$t0
	jal	toascii
	sb	$v0,0($s3)
	addiu	$s3,$s3,1
	bgtz	$s0,itoa_do0
itoadowhile0:
	li	$t0,'\0'
	sb	$t0,0($s3)
	move	$a0,$s2
	jal	strrev
	move	$v0,$s2
	lw	$s3,16($sp)	# p
	lw	$s2,12($sp)	# s
	lw	$s1,8($sp)	# b
	lw	$s0,4($sp)	# n
	lw	$ra,0($sp)
	addiu	$sp,$sp,20
	jr	$ra
############################################################
	.data
	.text
toascii:
	addi	$a0,$a0,'0'
toascii_if0:
	ble	$a0,'9',toascii_endif0
	addi	$a0,$a0,7
toascii_endif0:
	move	$v0,$a0
	jr	$ra
############################################################
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
strrev_while0:
	lb	$t0,0($s2)
	beq	$t0,'\0',strrev_endwhile0
	addiu	$s2,$s2,1
	j	strrev_while0
strrev_endwhile0:
	addiu	$s2,$s2,-1
strrev_while1:
	bge	$s1,$s2,strrev_endwhile1
	move	$a0,$s1
	move	$a1,$s2
	jal	exchange
	addiu	$s1,$s1,1
	addiu	$s2,$s2,-1
	j	strrev_while1
strrev_endwhile1:
	move	$v0,$s0
	
	lw	$ra,0($sp)
	lw	$s0,4($sp)
	lw	$s1,8($sp)
	lw	$s2,12($sp)
	addiu	$sp,$sp,16
	jr	$ra
############################################################
	.data
	.text
exchange:
	lb	$t0,0($a0)
	lb	$t1,0($a1)
	sb	$t1,0($a0)
	sb	$t0,0($a1)
	jr	$ra