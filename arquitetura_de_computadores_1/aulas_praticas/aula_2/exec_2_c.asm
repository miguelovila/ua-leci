	.data
	.text
	.globl main
main:
	li	$t0,6
	srl	$t1,$t0,1
	xor	$t1,$t0,$t1
	
	jr	$ra