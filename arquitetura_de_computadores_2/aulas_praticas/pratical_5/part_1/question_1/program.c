#include <detpic32.h>

void send2displays(unsigned char value) {
    static const char disp7Scodes[] = {
        0x3F, 0x06, 0x5B, 0x4F,
        0x66, 0x6D, 0x7D, 0x07,
        0x7F, 0x6F, 0x77, 0x7C,
        0x39, 0x5E, 0x79, 0x71
    };
    static char displayFlag = 0;

    unsigned short int index = 0;

    LATD = ( LATD & 0xFF9F ) | 0x0040; // Write the values of RD5 and RD6
    char digit_hi = value >> 4;
    char digit_low = value & 0x0F;

    LATB = (LATB & 0x80FF) | disp7Scodes[digit_hi] << 8; // Write the values of RB8-RB14
    LATD = ( TRISD && 0xFFBF ) | 0x0020; // Activate HI-D, disable LO-D
    LATB = (LATB & 0x80FF) | disp7Scodes[digit_low] << 8; // Write the values of RB8-RB14
}
