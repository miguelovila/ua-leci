#include <detpic32.h>

unsigned char toBcd(unsigned char value)
{
    return ((value / 10) << 4) + (value % 10);
}

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
    short unsigned int counter = 0;
    short unsigned int counter_snap = counter;
    unsigned int stalls = 5;
    unsigned short int frequency = 10; 
    char input = 0x00;
    unsigned short int i = 0;

    // Configure ports
    TRISB = TRISB & 0x80FF;
    TRISDbits.TRISD5 = 0;
    TRISDbits.TRISD6 = 0;

    while (1) {
        // Outputs
        send2displays(toBcd(counter_snap));
        putChar('\r');
        printInt(counter, 0x0002000A);
        putChar(' ');
        printInt10(frequency);
        printStr(" Hz");
        // Input handler
        input = inkey();
        if (input != 0x00) {
            switch (input)
            {
            case 0x30:
                frequency = 2;
                stalls = 25;
                break;
            case 0x31:
                frequency = 4;
                stalls = 12;
                break;
            case 0x32:
                frequency = 6;
                stalls = 8;
                break;
            case 0x33:
                frequency = 8;
                stalls = 6;
                break;
            case 0x34:
                frequency = 10;
                stalls = 5;
                break;
            case 0x35:
                counter_snap = counter;
                break;
            default:
                break;
            }
        }
        if (i++ >= stalls) {
            i = 0;
            if (counter++ == 99) {counter = 0;}
        }
        resetCoreTimer(); while (readCoreTimer() < 400000) {}; // Takes 0.02 s
    }

    return 0;
}
