#include <detpic32.h>

int main(void) {
    // Configure RB0...RB3 as inputs
    TRISB = TRISB | 0x000F;
    while (1) {
        putChar(PORTBbits.RB3 ? '1' : '0');
        putChar(PORTBbits.RB2 ? '1' : '0');
        putChar(PORTBbits.RB1 ? '1' : '0');
        putChar(PORTBbits.RB0 ? '1' : '0');
        putChar('\n');
        resetCoreTimer(); while (readCoreTimer() < 20000000) {};
    }
    return 0;
}
