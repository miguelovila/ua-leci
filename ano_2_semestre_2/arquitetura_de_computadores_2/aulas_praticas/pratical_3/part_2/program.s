    .equ    BASE ,0xBF88
    .equ    TRISE,0x6100
    .equ    LATE ,0x6120
    .equ    TRISD,0x860C0
    .equ    PORTD,0x60D0
    .data
    .text
    .globl  main
main:
    lui     $t0,BASE
    lw      $t1,TRISE($t0)
    andi    $t1,$t1,0xFFE1
    sw      $t1,TRISE($t0)
    li      $t2,0
loop:
    lw      $t1,LATE($t0)
    andi    $t1,$t1,0xFFE1
    sll     $t3,$t2,1
    or      $t1,$t1,$t3
    sw      $t1,LATE($t0)

    li  $v0,12
    syscall
delay:
    li  $v0,11
    syscall
    blt $v0,20000000,delay

    addi    $t2,$t2,1
    blt     $t2,16,cont
    li      $t2,0
cont:
    j       loop
    jr      $ra
