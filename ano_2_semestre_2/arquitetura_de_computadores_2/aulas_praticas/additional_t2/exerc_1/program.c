#include <detpic32.h>

char hi_digit = 0x06;
char lo_digit = 0x5B;

void reset_routine(void) {
    resetCoreTimer();
    LATE = LATE | 0x000F;
    hi_digit = 0x71;
    lo_digit = 0x71;
    while (readCoreTimer() < 20000000) {};
    LATE = LATE & 0xFFF0;
    hi_digit = 0x00;
    lo_digit = 0x00;
}

void _int_(_TIMER_2_VECTOR) isr_t2(void) {
    static unsigned short int disp_ctl = 1;

    if (disp_ctl) {
        LATB = (LATB & 0x80FF) | (hi_digit << 8);
        LATDbits.LATD6 = 1;
        LATDbits.LATD5 = 0;
    } else {
        LATB = (LATB & 0x80FF) | (lo_digit << 8);
        LATDbits.LATD6 = 0;
        LATDbits.LATD5 = 1;
    }

    disp_ctl = !disp_ctl;
    IFS0bits.T2IF = 0;
}

int main(void) {
    // Configure RE3 - RE0 as outputs
    TRISE = TRISE & 0xFFF0;

    // Configure RB14 - RB8 as outputs
    TRISB = TRISB & 0x80FF;
    // Configure RD6 - RD5 as outputs
    TRISD = TRISD & 0xFF9F;

    // Configure timer 2 with interruptions
    T2CONbits.TCKPS = 2;
    PR2 = 49999; TMR2 = 0;
    T2CONbits.TON = 1;
    IPC2bits.T2IP = 2;
    IEC0bits.T2IE = 1; 
    IFS0bits.T2IF = 0; 

    EnableInterrupts();

    reset_routine();

    while (1) {
        switch (inkey()){
            case 0x00:
                continue;
            case '0':
                LATE = LATE & 0xFFF0;
                LATE = LATE | 0x0001;
                hi_digit = 0x3F;
                lo_digit = 0x3F;
                break;
            case '1':
                LATE = LATE & 0xFFF0;
                LATE = LATE | 0x0002;
                hi_digit = 0x3F;
                lo_digit = 0x06;
                break;
            case '2':
                LATE = LATE & 0xFFF0;
                LATE = LATE | 0x0004;
                hi_digit = 0x3F;
                lo_digit = 0x5B;
                break;
            case '3':
                LATE = LATE & 0xFFF0;
                LATE = LATE | 0x0008;
                hi_digit = 0x3F;
                lo_digit = 0x4F;
                break;
            default:
                reset_routine();
                while (inkey() != 0) {};
                break;
        }
    }; 

    return 0;
}

// ======== TIMER 2 (1,2,4,8,16,32,64,256) ========
// Quero obter uma frequência de 100Hz
// PRx   = (f_in / f_out) - 1
//       = (5000000 / 100) - 1 = 49999 < 65535
// 
// f_in  = 20*10^6 / 4 = 5000000
// f_out = 100Hz
//
// Então, pre_scaler = 4  e couter = 49999
//
