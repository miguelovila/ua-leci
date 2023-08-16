    .equ        printInt,6
    .equ        putChar,3
    .equ        resetCoreTime,12
    .equ        readCoreTimer,11
    .data
    .text
    .globl      main
main:
    li          $t0,0
beginLoop:
    li          $a0,'\r'
    li          $v0,putChar
    syscall
    move        $a0,$t0
    li          $a1,0x0002000A
    li          $v0,printInt
    syscall
    addi        $t0,$t0,1
    li          $v0,resetCoreTime
    syscall
stall:
    li          $v0,readCoreTimer
    syscall
    blt         $v0,2000000,stall
endstall:
    ble         $t0,99,beginLoop
    li          $t0,0
    j           beginLoop
endLoop:
    li          $v0,0
    jr          $ra
