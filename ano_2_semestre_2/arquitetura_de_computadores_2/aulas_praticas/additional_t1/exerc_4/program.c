#include <detpic32.h>

void send2displays (unsigned char value) {
    static const char d7Sc[] = {
        0x3F, 0x06, 0x5B, 0x4F,
        0x66, 0x6D, 0x7D, 0x07,
        0x7F, 0x6F, 0x77, 0x7C,
        0x39, 0x5E, 0x79, 0x71
    };

    static char displayFlag = 1;

    if (displayFlag) {
        LATD = ( LATD & 0xFF9F ) | 0x0040; // Activate HI-D, disable LO-D
        LATB = ( LATB & 0x80FF ) | d7Sc[value >> 4] << 8; // Write the values of RB8-RB14
        displayFlag = 0;
    } else {
        LATD = ( LATD & 0xFFBF ) | 0x0020; // Disable HI-D, activate LO-D
        LATB = ( LATB & 0x80FF ) | d7Sc[value & 0x0F] << 8; // Write the values of RB8-RB14
        displayFlag = 1;
    }
}

int main (void) {
    // Configure RE0...RE3 as outputs
    TRISE = TRISE & 0xFFF0;
    // Configure RB8...RB14 as outputs
    TRISB = TRISB & 0x80FF;
    // Configure RD5...RD6 as outputs
    TRISD = TRISD & 0xFF9F;

    while (1) {
        // Turn ON all LEDs
        LATE = LATE | 0x000F;
        // Wait 1 second
        int i = 0;
        for (i = 0; i<100; i++) {
            send2displays(0xFF);
            resetCoreTimer();
            while (readCoreTimer() < 200000) {};
        }
        // Turn OFF all LEDs
        LATE = LATE & 0xFFF0;
        LATB = LATB & 0x80FF;
        LATD = LATD & 0xFF9F;
        while (1) {

            if ((LATE & 0x000F) != 0x0000) {
                resetCoreTimer();
                while (readCoreTimer() < 200000) {};

                if ((LATE & 0x000F) == 0x0001) {
                    send2displays(0x00);
                }
                if ((LATE & 0x000F) == 0x0002) {
                    send2displays(0x01);
                }
                if ((LATE & 0x000F) == 0x0004) {
                    send2displays(0x02);
                }
                if ((LATE & 0x000F) == 0x0008) {
                    send2displays(0x03);
                }
            }

            char input = inkey();

            if (input == 0x00) {
                continue;
            }
            if (input == 0x30) {
                LATE = (LATE & 0xFFF0) | 0x0001;
                continue;
            }
            if (input == 0x31) {
                LATE = (LATE & 0xFFF0) | 0x0002;
                continue;
            }
            if (input == 0x32) {
                LATE = (LATE & 0xFFF0) | 0x0004;
                continue;
            }
            if (input == 0x33) {
                LATE = (LATE & 0xFFF0) | 0x0008;
                continue;
            }
            break;
        }
    }
    return 0;
}
