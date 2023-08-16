	.equ        BASE    ,0xBF88
	.equ		TRISE	,0x6100
	.equ		LATE	,0x6120
	.equ        TRISD   ,0x60C0
	.equ        PORTD   ,0x60D0
	.data
	.text
	.globl      main
main:
	lui         $t0,BASE

	lw          $t1,TRISE($t0)      #
	andi        $t1,$t1,0xFFFE      # Define RE0 as an output
	sw          $t1,TRISE($t0)      #

	lw			$t1,TRISE($t0)		#
	andi		$t1,$t1,0xFFFD		# Define RE1 as an output
	sw			$t1,TRISE($t0)		#

	lw			$t1,TRISD($t0)		#
	ori			$t1,$t1,0x0100		# Define RD8 as an input 0000,0001,0000,0000
	sw			$t1,TRISD($t0)		#
mainWhile0:
	lw			$t1,PORTD($t0)		# Reads RD values
	srl			$t1,$t1,8			# Moves the eight bit to the first position
	andi		$t1,$t1,0x0001		# Isolate the signal bit
	lw			$t2,LATE($t0)		# Reads RE input values
	andi		$t2,$t2,0xFFFE		# Clears the first bit
	or			$t2,$t2,$t1			# ORs the signal bit with the rest of the bits
	sw			$t2,LATE($t0)		# Writes the merged value to RE

	lw			$t1,PORTD($t0)		# Reads RD values
	srl			$t1,$t1,7			# Moves the eight bit to the first position
	nor			$t1,$t1,$t1
	andi		$t1,$t1,0x0002		# Isolate the signal bit
	lw			$t2,LATE($t0)		# Reads RE input values
	andi		$t2,$t2,0xFFFD		# Clears the first bit
	or			$t2,$t2,$t1			# ORs the signal bit with the rest of the bits
	sw			$t2,LATE($t0)		# Writes the merged value to RE
	j 			mainWhile0
mainEndWhile0:
	jr			$ra

