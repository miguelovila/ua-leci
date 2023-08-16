    .equ        SFR_BASE_HI,0xBF88
    .equ        TRISE,0x6100
    .equ        LATE,0x6120

    .equ        readCoreTimer,11
    .equ        resetCoreTimer,12
    .equ        inKey,1

    .data
    .text
    .globl      main
main:
    lui         $t0,SFR_BASE_HI
    # CONFIGURE RE0 ... RE3 AS OUTPUT
    lw          $t1,TRISE($t0)
    andi        $t1,$t1,0xFFF0
    sw          $t1,TRISE($t0)

beginStall:
    # START COUNTING 1 SECOND
    li          $v0,resetCoreTimer
    syscall
    # TURN ON LEDs
    lw          $t1,LATE($t0)
    ori         $t1,0x000F
    sw          $t1,LATE($t0)
stall:
    # CHECK IF 1 SECOND HAS PASSED
    li          $v0,readCoreTimer
    syscall
    bge         $v0,20000000,endStall
    j           stall
endStall:
    # TURN OFF LEDs
    lw          $t1,LATE($t0)
    andi        $t1,0xFFF0
    sw          $t1,LATE($t0)
beginLoop:
    li          $v0,inKey
    syscall
    beq         $v0,0x00,beginLoop
    lw          $t1,LATE($t0)
    andi        $t1,0xFFF0
if0:
    bne         $v0,0x30,if1
    ori         $t1,0x0001
    j           endif
if1:
    bne         $v0,0x31,if2
    ori         $t1,0x0002
    j           endif
if2:
    bne         $v0,0x32,if3
    ori         $t1,0x0004
    j           endif
if3:
    bne         $v0,0x33,beginStall
    ori         $t1,0x0008  
endif:
    sw          $t1,LATE($t0)
    j           beginLoop
endLoop:
    li          $v0,0
    jr          $ra
