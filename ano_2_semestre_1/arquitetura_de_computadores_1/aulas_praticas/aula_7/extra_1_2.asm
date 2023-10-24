	.data
	.eqv	print_int10,1
	.eqv	print_string,4
	.eqv	read_int,5
array:	.space	200
main_str0:	.asciiz	"Size of the array: "
main_str1:	.asciiz	"array["
main_str2:	.asciiz	"] = "
main_str3:	.asciiz	"Enter de value to be inserted: "
main_str4:	.asciiz	"Enter the position: "
main_str5:	.asciiz	"\nOriginal array: "
main_str6:	.asciiz	"\nModified array: "
	.text
	.globl main
main:
	addiu	$sp,$sp,-20
	sw	$ra,0($sp)
	sw	$s0,4($sp)
	sw	$s1,8($sp)
	sw	$s2,12($sp)
	sw	$s3,16($sp)
	
	la	$a0,main_str0
	li	$v0,print_string
	syscall
	li	$v0,read_int
	syscall
	move	$s3,$v0
	la	$s0,array
	li	$t1,0
main_for0:
	bge	$t1,$s3,main_endfor0
	la	$a0,main_str1
	li	$v0,print_string
	syscall
	move	$a0,$t1
	li	$v0,print_int10
	syscall
	la	$a0,main_str2
	li	$v0,print_string
	syscall
	li	$v0,read_int
	syscall
	mul	$t2,$t1,4
	addu	$t2,$t2,$s0
	sw	$v0,0($t2)
	addi	$t1,$t1,1
	j	main_for0
main_endfor0:
	la	$a0,main_str3
	li	$v0,print_string
	syscall
	li	$v0,read_int
	syscall
	move	$s1,$v0
	la	$a0,main_str4
	li	$v0,print_string
	syscall
	li	$v0,read_int
	syscall
	move	$s2,$v0
	la	$a0,main_str5
	li	$v0,print_string
	syscall
	move	$a0,$s0
	move	$a1,$s3
	jal	print_array
	move	$a0,$s0
	move	$a1,$s1
	move	$a2,$s2
	move	$a3,$s3
	jal	insert
	la	$a0,main_str6
	li	$v0,print_string
	syscall
	move	$a0,$s0
	addi	$a1,$s3,1
	jal	print_array
	li	$v0,0
	
	lw	$s3,16($sp)
	lw	$s2,12($sp)
	lw	$s1,8($sp)
	lw	$s0,4($sp)
	lw	$ra,0($sp)
	addiu	$sp,$sp,20
	jr	$ra
############################################################
	.data
	.text
insert:
insert_if0:
	ble	$a2,$a3,insert_else0
	li	$v0,1
	j	insert_endif0
insert_else0:
	subi	$t0,$a3,1
insert_for0:
	blt	$t0,$a2,insert_endfor0
	mul	$t1,$t0,4
	addu	$t1,$t1,$a0
	lw	$t2,0($t1)
	sw	$t2,4($t1)
	subi	$t0,$t0,1
	j	insert_for0
insert_endfor0:
	mul	$t0,$a2,4
	addu	$t0,$t0,$a0
	sw	$a1,0($t0)
	li	$v0,0
insert_endif0:
	jr	$ra
############################################################
	.data
	.eqv	print_int10,1
	.eqv	print_string,4
print_array_str0:	.asciiz	", "
	.text
print_array:
	move	$t1,$a0
	mul	$a1,$a1,4
	addu	$t0,$t1,$a1
print_array_for0:
	bge	$t1,$t0,print_array_endfor0
	lw	$a0,0($t1)
	li	$v0,print_int10
	syscall
	la	$a0,print_array_str0
	li	$v0,print_string
	syscall
	addiu	$t1,$t1,4
	j	print_array_for0
print_array_endfor0:
	jr	$ra