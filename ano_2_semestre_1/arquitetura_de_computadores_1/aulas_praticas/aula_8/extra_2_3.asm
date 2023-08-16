	.data
	.eqv	print_string,4
	.eqv	read_string,8
	.eqv	read_int,5
main_str0:	.asciiz	"Enter a string: "
main_str1:	.space	101
main_str2:	.space	51
main_str3:	.asciiz	"Enter a string to insert: "
main_str4:	.asciiz	"Enter the position: "
main_str5:	.asciiz	"Original string: "
main_str6:	.asciiz	"Modified string: "
main_str7:	.asciiz	"\n"
	.text
	.globl main
main:
	addiu	$sp,$sp,-8
	sw	$ra,0($sp)
	sw	$s0,4($sp)
	
	la	$a0,main_str0
	li	$v0,print_string
	syscall
	la	$a0,main_str1
	li	$a1,50
	li	$v0,read_string
	syscall
	
	la	$a0,main_str3
	li	$v0,print_string
	syscall
	la	$a0,main_str2
	li	$a1,50
	li	$v0,read_string
	syscall
	
	la	$a0,main_str4
	li	$v0,print_string
	syscall
	li	$v0,read_int
	syscall
	move	$s0,$v0
	
	la	$a0,main_str5
	li	$v0,print_string
	syscall
	la	$a0,main_str1
	li	$v0,print_string
	syscall
	
	la	$a0,main_str1
	la	$a1,main_str2
	move	$a2,$s0
	jal	insert
	
	la	$a0,main_str6
	li	$v0,print_string
	syscall
	la	$a0,main_str1
	li	$v0,print_string
	syscall
	la	$a0,main_str7
	li	$v0,print_string
	syscall
	
	li	$v0,0
	
	lw	$s0,4($sp)
	lw	$ra,0($sp)
	addiu	$sp,$sp,8
	jr	$ra
############################################################
	.data
	.text
insert:
	addiu	$sp,$sp,-24
	sw	$ra,0($sp)
	sw	$s0,4($sp)
	sw	$s1,8($sp)
	sw	$s2,12($sp)
	sw	$s3,16($sp)
	sw	$s4,20($sp)
	
	move	$s0,$a0	#s0 *dst
	move	$s1,$a1	#s1 *src
	move	$s2,$a2 #s2 pos
	move	$s3,$a0	#s3 *p

	jal	strlen
	move	$s4,$v0	#s4 len_dst
	move	$a0,$s1
	jal	strlen	#v0 len_src
	subi	$v0,$v0,1 # IGNORE \n
insert_if0:
	bgt	$s2,$s4,insert_endif0
	move	$t0,$s4
insert_for0:
	blt	$t0,$s2,insert_endfor0
	addu	$t1,$s0,$t0 #t1 &dst[i]
	addu	$t2,$t0,$v0
	addu	$t2,$t2,$s0 #t2 &dst[i+len_src]
	lb	$t1,0($t1) #t1 dts[i]
	sb	$t1,0($t2) # dst[i + len_src] = dst[i]
	subi	$t0,$t0,1
	j	insert_for0
insert_endfor0:
	li	$t0,0
insert_for1:
	bge	$t0,$v0,insert_endfor1
	addu	$t1,$t0,$s1 #t1 = &src[i]
	addu	$t2,$t0,$s2
	addu	$t2,$t2,$s0 #t2 = &dst[i + pos]
	lb	$t1,0($t1) #t1 = src[i]
	sb	$t1,0($t2)
	addi	$t0,$t0,1
	j	insert_for1
insert_endfor1:
insert_endif0:
	move	$v0,$s3
	lw	$ra,0($sp)
	lw	$s0,4($sp)
	lw	$s1,8($sp)
	lw	$s2,12($sp)
	lw	$s3,16($sp)
	lw	$s4,20($sp)
	addiu	$sp,$sp,24
	jr	$ra
############################################################
	.data
	.text
strlen:
	li $v0,0
strlen_while0:
	lb $t0,0($a0)
	addiu $a0,$a0,1
	beq $t0,'\0',strlen_endwhile0
	addi $v0,$v0,1
	j strlen_while0
strlen_endwhile0:
	jr $ra	