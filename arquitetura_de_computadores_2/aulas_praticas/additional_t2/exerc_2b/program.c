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
    T1CONbits.TCKPS = 3;
    PR1 = 7812; TMR1 = 0;
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

    while (1) {
        switch (inkey())
        {
        case '0':
            PR1 = 39061;
            printStr("Nova frequência: 0\n");
            break;
        case '1':
            PR1 = 19530;
            printStr("Nova frequência: 1\n");
            break;
        case '2':
            PR1 = 13019;
            printStr("Nova frequência: 2\n");
            break;
        case '3':
            PR1 = 9764;
            printStr("Nova frequência: 3\n");
            break;
        case '4':
            PR1 = 7811;
            printStr("Nova frequência: 4\n");
            break;
        case '5':
            count = 0;
            break;
        default:
            break;
        }
    };
    
    return 0;
}

// Frequencias Máximas e Mínimas
// Tecla 4 = 2 * (1 + 4) = 10 Hz    Prescaler = 8
// Tecla 0 = 2 * 1       = 2  Hz    Prescaler = 


// ====== CONFIG T1 TO 10 Hz (1, 8, 64, 256) ======
// Quero uma frequência de 10 Hz 
// PRx    = ( f_in   / f_out ) - 1
//        = ( 78125  /   10  ) - 1 = 7812 < 65535
//
// f_in   = 20000000 / 256 = 312500
// f_out  = 10 Hz
//

// ====== CONFIG T1 TO 2 Hz (1, 8, 64, 256) ======
// Quero uma frequência de 2 Hz 
// PRx    = ( f_in   / f_out ) - 1
//        = ( 78125 /   2  ) - 1 = 39062 < 65535
//
// f_in   = 20000000 / 256 = 78125
// f_out  = 2 Hz
//

// === CONFIG T2 TO 50Hz (1,2,4,8,16,32,64,256) ===
// Quero uma frequência de 50 Hz
// PRx = ( f_in / f_out ) - 1
//     = ( 2500000 / 50 ) - 1 = 49999 < 65535
//
// f_in = 20000000 / 8 = 2500000
//
