#include <detpic32.h>

int main(void) {
    // Configure RB0...RB3 as inputs
    TRISB = TRISB | 0x000F;
    // Configure RE0...RE3 as outputs
    TRISE = TRISE & 0xFFF0;

    while (1) {
        LATE = (LATE & 0xFFF0) | (PORTB & 0x000F);
    }

    return 0;
}
