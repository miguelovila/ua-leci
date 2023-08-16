        .equ            SFR_BASE_HI,0xBF88
        .equ            TRISE,0x6100
        .equ            LATE,0x6120
        .equ            TRISB,0x6040
        .equ            PORTB,0x6050 
        
        .data
        .text
        .globl          main
main:
        lui             $t0,SFR_BASE_HI
        # SET RE0 ... RE3 AS OUTPUT
        lw              $t2,TRISE($t0)
        andi            $t2,$t2,0xFFF0
        sw              $t2,TRISE($t0)
        # SET RB0 ... RB1 AS INPUT
        lw              $t2,TRISB($t0)
        ori             $t2,$t2,0x000F
        sw              $t2,TRISB($t0)
beginLoop:
        # READ DIP VALUES & LATE STATE
        lw              $t2,PORTB($t0)
        lw              $t1,LATE($t0)
        # CLEAR UNIMPORTANT BITS
        andi            $t1,$t1,0xFFF0
        # ISOLATE BIT3 AND FROM PORT AND PUT IT IN LAT
        andi            $t3,$t2,0x0008
        or              $t1,$t1,$t3
        # ISOLATE BIT2 AND FROM PORT AND PUT IT IN LAT
        andi            $t3,$t2,0x0004
        or              $t1,$t1,$t3
        # ISOLATE BIT1 AND FROM PORT AND PUT IT IN LAT
        andi            $t3,$t2,0x0002
        or              $t1,$t1,$t3
        # ISOLATE BIT0 AND FROM PORT AND PUT IT IN LAT
        andi            $t3,$t2,0x0001
        or              $t1,$t1,$t3
        # WRITE REGISTER VALUE TO LAT
        sw              $t1,LATE($t0)
        j               beginLoop
endLoop:
        li              $v0,0
        jr              $ra
