	.data
	.eqv	imm,1
	.text
	.globl main
main:
	li	$t0,0x12345678
	
	sll	$t2,$t0,imm
	srl 	$t3,$t0,imm
	sra 	$t4,$t0,imm
	
	jr	$ra