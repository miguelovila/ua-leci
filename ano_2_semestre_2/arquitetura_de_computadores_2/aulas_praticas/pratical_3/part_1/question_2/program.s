	.equ		BASE	,0xBF88
	.equ		TRISE	,0x6100
	.equ		LATE	,0x6120
	.equ		TRISB	,0x6040
	.equ		PORTB	,0x6050
	.data
	.text
	.globl		main
main:
	lui			$t0,BASE

	lw			$t1,TRISE($t0)		#
	andi		$t1,$t1,0xFFFE		# Define RE0 as an output
	sw			$t1,TRISE($t0)		#

	lw			$t1,TRISB($t0)		#
	ori			$t1,$t1,0x0001		# Define RB0 as an input
	sw			$t1,TRISB($t0)		#
mainWhile0:
	lw			$t1,PORTB($t0)		# Read RB's  value
	xori		$t1,$t1,0x0001		# Isolate RB's bit 0 and invert
	lw			$t2,LATE($t0)		# Get RE's output values
	andi		$t2,$t2,0xFFFE		# 
	or			$t2,$t2,$t1			# Merge RE's output values with RB0's value
	sw			$t2,LATE($t0)		# Write the merge to the memory
	j			mainWhile0
mainEndWhile0:
	jr			$ra
