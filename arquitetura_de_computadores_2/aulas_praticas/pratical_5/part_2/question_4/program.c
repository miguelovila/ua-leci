#include <detpic32.h>

void delay(unsigned int ms)
{
    resetCoreTimer();
    while(readCoreTimer() < ms * 20000);
}

unsigned char toBcd(unsigned char value)
{
    return ((value / 10) << 4) + (value % 10);
}

void send2displays(unsigned char value) {
    static const char disp7Scodes[] = {
        0x3F, 0x06, 0x5B, 0x4F,
        0x66, 0x6D, 0x7D, 0x07,
        0x7F, 0x6F, 0x77, 0x7C,
        0x39, 0x5E, 0x79, 0x71
    };
    static char displayFlag = 1; // 1 for HI-D, 0 for LO-D

    if (displayFlag) {
        LATD = ( LATD & 0xFF9F ) | 0x0040; // Activate HI-D, disable LO-D
        LATB = ( LATB & 0x80FF ) | disp7Scodes[value >> 4] << 8; // Write the values of RB8-RB14
        displayFlag = 0;
    } else {
        LATD = ( LATD & 0xFFBF ) | 0x0020; // Disable HI-D, activate LO-D
        LATB = ( LATB & 0x80FF ) | disp7Scodes[value & 0x0F] << 8; // Write the values of RB8-RB14
        displayFlag = 1;
    }
}

int main(void) {
    TRISD = TRISD & 0xFF9F; // Mark RD6 - RD5 as outputs
    TRISC = TRISC & 0xBFFF; // Mark RC14 as output
    TRISB = ( TRISB & 0x80FF ) | 0x0001 ; // Mark RB14 - RB8 as outputs, RB0 as input

    unsigned char counter = 0;
    unsigned int i = 0;
    unsigned int up_down_freq = 0;
    unsigned int led_counter = 0;

    if (PORTB & 0x0001) { up_down_freq = 20; } else { up_down_freq = 50; }

    while (1) {
        i = 0;
        do {
            send2displays(toBcd(counter));
            delay(10);
        } while(++i < up_down_freq);
        
        if (PORTB & 0x0001) {
            if ( counter == 59 ) {
                counter = 0;
                LATC = LATC | 0x4000; // Activate RC14
                led_counter = 0;
            } else {
                counter++;
                if (++led_counter == 25) {
                    LATC = LATC & 0xBFFF; // Deactivate RC14
                    led_counter = 0;
                }
            }
            up_down_freq = 20;
        } else {
            if ( counter == 0 ) {
                counter = 59;
                LATC = LATC | 0x4000; // Activate RC14
                led_counter = 0;
            } else {
                counter--;
                if (++led_counter == 10) {
                    LATC = LATC & 0xBFFF; // Deactivate RC14
                    led_counter = 0;
                }
            }
            up_down_freq = 50;
        }
    }

    return 0;
}
