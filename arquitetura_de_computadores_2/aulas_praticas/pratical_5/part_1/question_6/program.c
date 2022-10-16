#include <detpic32.h>

void delay(unsigned int ms)
{
    resetCoreTimer();
    while(readCoreTimer() < ms * 20000);
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
    TRISB = TRISB & 0x80FF ; // Mark RB14 - RB8 as outputs

    unsigned char counter = 0;
    unsigned int i = 0;

    while (1) {
        i = 0;
        do {
            send2displays(counter);
            delay(10);
        } while(++i < 20);
        counter++;
    }

    return 0;
}

/* Para fazer o incremento à taxa de 5Hz, 
// tenho que incrementar o valor de 0.2s
// em 0.2 segundos (200ms). O display em
// a taxa de refrescamento de 100Hz, ou seja
// os valores são mostrados de 0.01s em 0.01s
// (10ms).
//
// Assim, i apenas tem de contar quantos 10ms
// são executados. i terá valor máximo
// correspondente a 200/10 = 20 :)
*/