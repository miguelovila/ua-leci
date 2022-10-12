#include <detpic32.h>

int main(void) {
    volatile int aux;

    TRISDbits.TRISD11 = 0;

    TRISBbits.TRISB4 = 1;
    AD1PCFGbits.PCFG4 = 0;
    AD1CON1bits.SSRC = 7;
    AD1CON1bits.CLRASAM = 1;
    AD1CON3bits.SAMC = 16;
    AD1CON2bits.SMPI = 0;
    AD1CHSbits.CH0SA = 4;
    AD1CON1bits.ON = 1;

    while (1) {
        AD1CON1bits.ASAM = 1;
        LATDbits.LATD11 = 1;
        while (IFS1bits.AD1IF == 0);
        LATDbits.LATD11 = 0;
        int val = ADC1BUF0;
        IFS1bits.AD1IF = 0;
    }

    return 0;
}
