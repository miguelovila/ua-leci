	.data
	.text
	.globl main
main:
	ori	$t0,$0,0xFFFFFFF0
	
	nor 	$t1,$t0,$t0
	
	jr	$ra