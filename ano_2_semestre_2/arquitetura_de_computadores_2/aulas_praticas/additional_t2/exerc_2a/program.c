#include <detpic32.h>

unsigned short int count = 0;

unsigned char to_bcd(unsigned char value)
{
    return ((value / 10) << 4) + (value % 10);
}

void _int_(_TIMER_1_VECTOR) isr_t1(void) {
    if (++count >= 100) { count = 0; }
    IFS0bits.T1IF = 0;
}

void _int_(_TIMER_2_VECTOR) isr_t2(void) {
    static const char d7Sc[] = {
        0x3F, 0x06, 0x5B, 0x4F,
        0x66, 0x6D, 0x7D, 0x07,
        0x7F, 0x6F, 0x77, 0x7C,
        0x39, 0x5E, 0x79, 0x71
    };

    static char disp_ctl = 0;

    if (disp_ctl) {
        LATB = ( LATB & 0x80FF ) | d7Sc[to_bcd(count) >> 4] << 8;
        LATDbits.LATD6 = 1;
        LATDbits.LATD5 = 0;        
    } else {
        LATB = ( LATB & 0x80FF ) | d7Sc[to_bcd(count) & 0x0F] << 8;
        LATDbits.LATD6 = 0;
        LATDbits.LATD5 = 1;
    }

    disp_ctl = !disp_ctl;
    IFS0bits.T2IF = 0;
}

int main(void) {
    // Config Displays
    TRISB = TRISB & 0x80FF;
    TRISD = TRISD & 0xFF9F;
    // Config T1
    T1CONbits.TCKPS = 2;
    PR1 = 31249; TMR1 = 0;
    IPC1bits.T1IP = 2;
    IEC0bits.T1IE = 1;
    IFS0bits.T1IF = 0;
    // Config T2
    T2CONbits.TCKPS = 3;
    PR2 = 49999; TMR2 = 0;
    IPC2bits.T2IP = 3;
    IEC0bits.T2IE = 1;
    IFS0bits.T2IF = 0;
    // Activate Timers
    T1CONbits.TON = 1;
    T2CONbits.TON = 1;

    EnableInterrupts();

    while (1) { };
    return 0;
}

// ====== CONFIG T1 TO 10 Hz (1, 8, 64, 256) ======
// Quero uma frequência de 10 Hz 
// PRx    = ( f_in   / f_out ) - 1
//        = ( 312500 /   10  ) - 1 = 31249 < 65535
//
// f_in   = 20000000 / 64 = 312500
// f_out  = 10 Hz
//

// === CONFIG T2 TO 50Hz (1,2,4,8,16,32,64,256) ===
// Quero uma frequência de 50 Hz
// PRx = ( f_in / f_out ) - 1
//     = ( 2500000 / 50 ) - 1 = 49999 < 65535
//
// f_in = 20000000 / 8 = 2500000
//
