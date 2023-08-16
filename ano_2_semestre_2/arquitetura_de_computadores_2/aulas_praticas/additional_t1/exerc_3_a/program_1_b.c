#include <detpic32.h>

int main(void) {
    // Configure RB0..RB3 as inputs
    TRISBbits.TRISB0 = 1;
    TRISBbits.TRISB1 = 1;
    TRISBbits.TRISB2 = 1;
    TRISBbits.TRISB3 = 1;
    // Configure RE0..RE3 as outputs
    TRISEbits.TRISE0 = 0;
    TRISEbits.TRISE1 = 0;
    TRISEbits.TRISE2 = 0;
    TRISEbits.TRISE3 = 0;

    while(1) {
        LATEbits.LATE0 = PORTBbits.RB3;
        LATEbits.LATE1 = PORTBbits.RB2;
        LATEbits.LATE2 = PORTBbits.RB1;
        LATEbits.LATE3 = PORTBbits.RB0;
    }

    return 0;
}
