    .equ        SFR_BASE_HI,0xBF88
    .equ        TRISB,0x6040
    .equ        PORTB,0x6050
    .equ        TRISE,0x6100
    .equ        LATE ,0x6120

    .data
    .text
    .globl      main
main:
    lui         $t0,SFR_BASE_HI
    # CONFIGURE RB0 ... RB3 AS INPUT
    lw          $t1,TRISB($t0)
    ori         $t1,$t1,0x000F
    sw          $t1,TRISB($t0)
    # CONFIGURE RE0 ... RE7 AS OUTPUT
    lw          $t1,TRISE($t0)
    andi        $t1,$t1,0xFF00
    sw          $t1,TRISE($t0)
beginLoop:
    lw          $t1,PORTB($t0)
    andi        $t1,$t1,0x000F

    andi        $t2,$t1,0x0008
    sll         $t2,$t2,1
    or          $t1,$t1,$t2
    andi        $t2,$t1,0x0004
    sll         $t2,$t2,3
    or          $t1,$t1,$t2
    andi        $t2,$t1,0x0002
    sll         $t2,$t2,5
    or          $t1,$t1,$t2
    andi        $t2,$t1,0x0001
    sll         $t2,$t2,7
    or          $t1,$t1,$t2

    lw          $t2,LATE($t0)
    andi        $t2,$t2,0xFF00
    or          $t2,$t2,$t1
    sw          $t2,LATE($t0)
    j           beginLoop
endLoop:
    li          $v0,0
    jr          $ra
