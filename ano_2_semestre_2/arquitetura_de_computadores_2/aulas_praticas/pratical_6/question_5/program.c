#include <detpic32.h>

int main(void) {
    TRISBbits.TRISB4 = 1;
    AD1PCFGbits.PCFG4 = 0;
    AD1CON1bits.SSRC = 7;
    AD1CON1bits.CLRASAM = 1;
    AD1CON3bits.SAMC = 16;
    AD1CON2bits.SMPI = 3;
    AD1CHSbits.CH0SA = 4;
    AD1CON1bits.ON = 1;

    while (1) {
        AD1CON1bits.ASAM = 1;
        while (IFS1bits.AD1IF == 0);
        int *p = (int *)(&ADC1BUF0);
        int average = (p[0] + p[4] + p[8] + p[12]) / 4;
        printStr("BUFFER: ");
        printInt( p[0], 16 | 4 << 16);
        putChar(' ');
        printInt( p[4], 16 | 4 << 16);
        putChar(' ');
        printInt( p[8], 16 | 4 << 16);
        putChar(' ');
        printInt( p[12], 16 | 4 << 16);
        printStr(" | AVERAGE: ");
        printInt( average, 10);
        printStr(" | VOLTAGE: ");
        printInt(( average * 33 + 511) / 1023, 10);
        putChar('\n');
        IFS1bits.AD1IF = 0;
        AD1CON1bits.ASAM = 0;
    }
    return 0;
}
