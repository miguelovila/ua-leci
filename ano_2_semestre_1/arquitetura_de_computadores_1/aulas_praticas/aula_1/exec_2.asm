	.data
	.text
	.globl main
	
	# Reg Map
	# $t0 = 2*x-8
	# $t1 = 2*x
	# $t2 = 8	
	
main:
	ori	$t0,$0,3	# $t0 = x
	ori	$t2,$0,8	# $t2 = 8
	
	add	$t1,$t0,$t0	# $t1 = $t0+$t0
	sub	$t0,$t1,$t2	# $t0 = $t0-8
	jr	$ra