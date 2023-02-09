#include <detpic32.h>

int main(void) {
    // Configure RB0...RB3 as inputs
    TRISB = TRISB | 0x000F;
    // Configure RE0...RE7 as outputs
    TRISE = TRISE & 0xFF00;

    while (1) {
        LATE = (LATE & 0xFF00)
            | ((PORTB & 0x0008) << 1)
            | ((PORTB & 0x0004) << 3)
            | ((PORTB & 0x0002) << 5)
            | ((PORTB & 0x0001) << 7)
            | (PORTB & 0x000F);
    }

    return 0;
}
