#include <detpic32.h>

int main(void) {
    // Configure RE0 as output
    TRISEbits.TRISE0 = 0;
    // Configure RD8 as input
    TRISDbits.TRISD8 = 1;
    // Reset LED
    LATEbits.LATE0 = 0;
    // Configure interrupt
    IPC1bits.INT1IP = 2;
    IFS0bits.INT1IF = 0;
    IEC0bits.INT1IE = 1;
    INTCONbits.INT1EP = 0; // Polarity
    EnableInterrupts();
    while (1) {};
    return 0;
}

void _int_(7) isr_int1(void) {
    LATEbits.LATE0 = 1;
    resetCoreTimer();
    while (readCoreTimer() < 40000000) {};
    LATEbits.LATE0 = 0;
    IFS0bits.INT1IF = 0;
}
