	.data
	.eqv	print_string,4
	.eqv	print_int10,1
	.eqv	STR_MAX_SIZE 30
str0: 	.asciiz "String too long: "
str3:	.asciiz	"\n"
str1:	.asciiz "I serodatupmoC ed arutetiuqrA"
str2:	.space	31
	.text
	.globl	main
main:
	addiu	$sp,$sp,-8
	sw	$ra,0($sp)
	sw	$s0,4($sp)

	la	$a0,str1
	jal	strlen
	move	$s0,$v0
if:
	bgt	$v0,STR_MAX_SIZE,else
	la	$a0,str2
	la	$a1,str1
	jal	strcpy
	la	$a0,str2
	li	$v0,print_string
	syscall
	la	$a0,str3
	li	$v0,print_string
	syscall
	la	$a0,str2
	jal	strrev
	la	$a0,str2
	li	$v0,print_string
	syscall
	li	$v0,1
	j	endif
else:
	la	$a0,str0
	li	$v0,print_string
	syscall
	move 	$a0,$s0
	li	$v0,print_int10
	syscall
	li	$v0,-1
endif:
	lw	$s0,4($sp)
	lw	$ra,0($sp)
	addiu	$sp,$sp,8
	jr	$ra
##################################################################
	.data
	.text
strcpy:
	li	$t0,0
do0:
	addu	$t1,$t0,$a1	# &src[i]
	lb	$t1,0($t1)	# src[i]
	addu	$t2,$t0,$a0	# &dst[i]
	sb	$t1,0($t2)	# dst[i] = src[i]
	move 	$t2,$t1		# move src[i] to temp location
	addi	$t0,$t0,1	# i++
	bne	$t2,'\0',do0	# while(src[i] != '\0'
enddo0:
	move	$v0,$a0		# return dst
	jr	$ra
##################################################################
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
##################################################################
	.data
	.text
exchange:
	lb	$t0,0($a0)
	lb	$t1,0($a1)
	sb	$t1,0($a0)
	sb	$t0,0($a1)
	jr	$ra
##################################################################
	.data
	.text
strlen:
	li $v0,0
while:
	lb $t0,0($a0)
	addiu $a0,$a0,1
	beq $t0,'\0',endwhile
	addi $v0,$v0,1
	j while
endwhile:
	jr $ra