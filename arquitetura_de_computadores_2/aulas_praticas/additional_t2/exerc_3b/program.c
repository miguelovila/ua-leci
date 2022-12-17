#include <detpic32.h>

int main(void) {
    // Configure ADC
    TRISBbits.TRISB4 = 1;
    AD1PCFGbits.PCFG4= 0;
    AD1CON1bits.SSRC = 7;
    AD1CON1bits.CLRASAM = 1;
    AD1CON3bits.SAMC = 16;
    AD1CON2bits.SMPI = 0;
    AD1CHSbits.CH0SA = 4;
    AD1CON1bits.ON = 1;

    // Configure Timer 3
    T3CONbits.TCKPS = 0;
    PR3 = 19999; TMR3 = 0;
    T3CONbits.TON = 1;

    // Configure OC3
    OC3CONbits.OCM = 6;
    OC3CONbits.OCTSEL = 1;
    OC3RS = 0;
    OC3CONbits.ON = 1;

    // Configure OC5
    OC5CONbits.OCM = 6;
    OC5CONbits.OCTSEL = 1;
    OC5RS = 0;
    OC5CONbits.ON = 1;

    unsigned short int oc3_duty_cycle = 0;
    unsigned short int oc5_duty_cycle = 0;

    while (1) {
        AD1CON1bits.ASAM = 1;
        while( IFS1bits.AD1IF == 0 ) {};
        oc3_duty_cycle = (ADC1BUF0 * 100) / 1023;
        oc5_duty_cycle = 100 - oc3_duty_cycle;
        OC3RS = (20000 * oc3_duty_cycle) / 100;
        OC5RS = (20000 * oc5_duty_cycle) / 100;
        IFS1bits.AD1IF = 0;
        resetCoreTimer();
        while (readCoreTimer() < 2000000) {};
    };

    return 0;
}

/* PWM - 1KHz - DC * - T3 - OC3
//
// f_in = 20000000 / 1 = 20000000
// PRx = (20000000 / 1000) - 1 = 19999
// 
*/
