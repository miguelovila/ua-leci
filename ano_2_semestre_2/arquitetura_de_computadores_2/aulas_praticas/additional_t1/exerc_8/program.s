    .equ        putChar,3
    .equ        SFR_BASE_HI,0xBF88
    .equ        TRISB,0x6040
    .equ        PORTB,0x6050
    .equ        readCoreTimer,11
    .equ        resetCoreTimer,12
    .data
    .text
    .globl      main
main:
    lui         $t0,SFR_BASE_HI
    # Configure RB0...RB3 as inputs
    lw          $t2,TRISB($t0)
    ori         $t2,$t2,0x000F
    sw          $t2,TRISB($t0)
beginLoop:
    lw          $t1,PORTB($t0)
    li          $a0,'\r'
    li          $v0,putChar
    syscall
    andi        $a0,$t1,0x0008
    srl         $a0,$a0,3
    ori         $a0,$a0,0x0030
    li          $v0,putChar
    syscall
    andi        $a0,$t1,0x0004
    srl         $a0,$a0,2
    ori         $a0,$a0,0x0030
    li          $v0,putChar
    syscall
    andi        $a0,$t1,0x0002
    srl         $a0,$a0,1
    ori         $a0,$a0,0x0030
    li          $v0,putChar
    syscall
    andi        $a0,$t1,0x0001
    ori         $a0,$a0,0x0030
    li          $v0,putChar
    syscall
    li          $v0,resetCoreTimer
    syscall
delay:
    li          $v0,readCoreTimer
    syscall
    ble         $v0,20000000,delay
    j           beginLoop
endLoop:
    li          $v0,0
    jr          $ra
