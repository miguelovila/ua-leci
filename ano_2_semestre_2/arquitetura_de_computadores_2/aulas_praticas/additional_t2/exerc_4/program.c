#include <detpic32.h>

unsigned short int current_duty_cycle = 0;

unsigned char toBCD(unsigned char value) {
    return ((value / 10) << 4) + (value % 10);
}

void _int_(_ADC_VECTOR) isr_adc(void)
{
    current_duty_cycle = (ADC1BUF0 * 100) / 1023;
    OC3RS = (20000 * current_duty_cycle) / 100;
    if (current_duty_cycle == 100) {
        LATCbits.LATC14 = 1;
    } else {
        LATCbits.LATC14 = 0;
    }
    IFS1bits.AD1IF = 0;
}

void _int_(_TIMER_5_VECTOR) isr_t5(void) {
    static const char d7Sc[] = {
        0x3F, 0x06, 0x5B, 0x4F,
        0x66, 0x6D, 0x7D, 0x07,
        0x7F, 0x6F, 0x77, 0x7C,
        0x39, 0x5E, 0x79, 0x71
    };

    static char disp_ctl = 0;

    if (disp_ctl) {
        LATDbits.LATD6 = 1;
        LATDbits.LATD5 = 0;
        if (current_duty_cycle == 100) {
            LATB = ( LATB & 0x80FF ) | d7Sc[0] << 8;
        } else {
            LATB = ( LATB & 0x80FF ) | d7Sc[toBCD(current_duty_cycle) >> 4] << 8;
        }
        
    } else {
        LATDbits.LATD6 = 0;
        LATDbits.LATD5 = 1;
        
        if (current_duty_cycle == 100) {
            LATB = ( LATB & 0x80FF ) | d7Sc[0] << 8;
        } else {
            LATB = ( LATB & 0x80FF ) | d7Sc[toBCD(current_duty_cycle) & 0x0F] << 8;
        }
    }

    disp_ctl = !disp_ctl;
    IFS0bits.T5IF = 0;
}

int main(void) {
    // DISPLAY CONFIG
    // RB14 - RB8 OUTPUT
    TRISB = TRISB & 0x80FF;
    // RD6 - RD5 OUTPUT
    TRISD = TRISD & 0xFF9F;

    // LED RC14 OUTPUT
    TRISC = TRISC & 0xBFFF;

    // T3 CONFIG
    T3CONbits.TCKPS = 0;
    PR3 = 19999; TMR3 = 0;
    T3CONbits.TON = 1;

    // T5 CONFIG
    T5CONbits.TCKPS = 2;
    PR5 = 49999; TMR5 = 0;
    T5CONbits.TON = 1;
    IPC5bits.T5IP = 3;
    IEC0bits.T5IE = 1;
    IFS0bits.T5IF = 0;

    // OC3 CONFIG
    OC3CONbits.OCM = 6;
    OC3CONbits.OCTSEL = 1;
    OC3RS = 0;
    OC3CONbits.ON = 1;

    // ADC CONFIG
    TRISBbits.TRISB4 = 1;
    AD1PCFGbits.PCFG4= 0;
    AD1CON1bits.SSRC = 7;
    AD1CON1bits.CLRASAM = 1;
    AD1CON3bits.SAMC = 16;
    AD1CON2bits.SMPI = 0;
    AD1CHSbits.CH0SA = 4;
    AD1CON1bits.ON = 1;
    IPC6bits.AD1IP = 2;
    IFS1bits.AD1IF = 0;
    IEC1bits.AD1IE = 1;

    EnableInterrupts();

    while (1) {
        AD1CON1bits.ASAM = 1;
        resetCoreTimer();
        while (readCoreTimer() <= 2000000) {};
    };
    return 0;
}

/* =========== TIMER 3 CONFIG ===========
// f_out = 1000 Hz
// f_in  = 20000000 / 1 = 20000000
// PR3   = (20000000 / 1000) - 1 = 19999
*/

/* =========== TIMER 5 CONFIG ===========
// f_out = 100 Hz
// f_in  = 20000000 / 4 = 5000000
// PR3   = (5000000 / 100) - 1 = 49999
*/

