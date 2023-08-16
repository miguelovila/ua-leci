	.data
	.text
	.globl main
main:
	ori	$t0,$0,0xFFFFFFFF
	ori	$t1,$0,0xFD381711
	
	and	$t2,$t0,$t1
	or	$t2,$t0,$t1
	nor 	$t2,$t0,$t1
	xor 	$t2,$t0,$t1
	
	jr	$ra