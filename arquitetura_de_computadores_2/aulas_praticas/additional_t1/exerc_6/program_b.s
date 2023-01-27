    .equ        printInt,6
    .equ        printInt10,7
    .equ        putChar,3
    .equ        resetCoreTime,12
    .equ        readCoreTimer,11
    .equ        inkey,1
    .equ        printStr,8
    .data
hz: .asciiz     " Hz"
    .text
    .globl      main
main:
    li          $t0,0 # Counter
    li          $t1,2000000 # Delay
    li          $t2,10 # Freq
beginLoop:
    li          $v0,inkey
    syscall
    beq         $v0,0x00,endHandleInput
    bne         $v0,0x30,endif1
    li          $t2,2
    li          $t1,10000000
    j           endHandleInput
endif1:
    bne         $v0,0x31,endif2
    li          $t2,4
    li          $t1,5000000
    j           endHandleInput
endif2:
    bne         $v0,0x32,endif3
    li          $t2,6
    li          $t1,3333333
    j           endHandleInput
endif3:
    bne         $v0,0x33,endif4
    li          $t2,8
    li          $t1,2500000
    j           endHandleInput
endif4:
    bne         $v0,0x34,endHandleInput
    li          $t2,10
    li          $t1,2000000
    j           endHandleInput
endHandleInput:
    li          $a0,'\r'
    li          $v0,putChar
    syscall
    move        $a0,$t0
    li          $a1,0x0002000A
    li          $v0,printInt
    syscall
    li          $a0,' '
    li          $v0,putChar
    syscall
    move          $a0,$t2
    li          $v0,printInt10
    syscall
    la          $a0,hz
    li          $v0,printStr
    syscall
    addi        $t0,$t0,1
    li          $v0,resetCoreTime
    syscall
stall:
    li          $v0,readCoreTimer
    syscall
    blt         $v0,$t1,stall
endstall:
    ble         $t0,99,beginLoop
    li          $t0,0
    j           beginLoop
endLoop:
    li          $v0,0
    jr          $ra
