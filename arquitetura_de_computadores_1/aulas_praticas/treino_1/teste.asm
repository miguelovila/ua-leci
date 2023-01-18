# Tabela de alinhamento:
#      | Align | Size | Offset
# name |   1   |  50  |   00  
# num  |   4   |  04  | 50->52  
# grade|   4   |  04  |   56  
# type |   1   |  01  |   57  
# -----|   4   |  60  | ------

    .data
    .eqv print_float,2

    .align 2
std:
    .asciiz "Rei Eusebio"
    .space 37
    .word 12345
    .float 17.2
    .byte 'F'
    .asciiz "Rainha Amalia"
    .space 36
    .word 23450
    .float 12.5
    .byte 'C'

    .text
    .globl main
main:
    addiu $sp,$sp,-4
    sw $ra,0($sp)
    la $a0,std
    li $a1,2
    jal fun3
    mov.s $f12,$f0
    li $v0,print_float
    syscall
    li $v0,-1
    lw $ra,0($sp)
    addiu $sp,$sp,4
    jr $ra

############################################################
    .data
    .eqv print_string,4
    .text

# Mapa de registos:
# *std : $a0 : $t0
# n : $a1 : $t1
# i : $t2
# sum : $f4

fun3:
    move $t0,$a0
    move $t1,$a1
    sub.s $f4,$f4,$f4 # float sum = 0.0
    li $t2,0
fun3_for0:
    bge $t2,$t1,fun3_endfor0
    mul $t3,$t2,60
    addu $t3,$t3,$t0
    move $a0,$t3
    li $v0,print_string
    syscall
    l.s $f12,56($t3)
    add.s $f4,$f4,$f12
    li $v0,print_float
    syscall
    addi $t2,$t2,1
    j fun3_for0
fun3_endfor0:
    li $t2,2
    mtc1 $t2,$f0
    cvt.s.w $f0,$f0
    div.s $f0,$f4,$f0
    jr  $ra
