#include <detpic32.h>

int main(void) {
    // Configure ADC
    TRISBbits.TRISB4 = 1;
    AD1PCFGbits.PCFG4 = 0;
    AD1CON1bits.SSRC = 7;
    AD1CON1bits.CLRASAM = 1;
    AD1CON3bits.SAMC = 16;
    AD1CON2bits.SMPI = 3;
    AD1CHSbits.CH0SA = 4;
    AD1CON1bits.ON = 1;
    // Configure RB0...RB3 as inputs
    TRISB = TRISB | 0x000F;

    unsigned int delay = 0;

    while (1) {
        putChar(PORTBbits.RB3 ? '1' : '0');
        putChar(PORTBbits.RB2 ? '1' : '0');
        putChar(PORTBbits.RB1 ? '1' : '0');
        putChar(PORTBbits.RB0 ? '1' : '0');
        putChar('\n');

        AD1CON1bits.ASAM = 1;
        while (IFS1bits.AD1IF == 0);
        if ((((ADC1BUF0 * 5) + 511)/1023) == 0) {
            delay = 20000000;
        } else {
            delay = (10/(((ADC1BUF0 * 5) + 511)/1023))*2000000;
        }
        IFS1bits.AD1IF = 0;

        resetCoreTimer(); while (readCoreTimer() < delay) {};
    }
    return 0;
}
