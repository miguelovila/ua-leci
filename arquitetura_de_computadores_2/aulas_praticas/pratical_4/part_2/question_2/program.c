#include <detpic32.h>

int main(void) {
    unsigned char segment;
    LATDbits.LATD5 = 1; // Enable display low (RD5)
    LATDbits.LATD6 = 0; // Disable display high (RD6)
    TRISD = TRISD & 0xFF9F; // 1111 1111 1001 1111
    TRISB = TRISB & 0x80FF; // 1000 0000 1111 1111
    while (1) {
        segment = 1;
        int i = 0;
        for (; i < 7; i++) {
            LATB = (LATB & 0x80FF) | (segment << 8);
            resetCoreTimer();
            while (readCoreTimer() < 10000000); // Wait 0.5s
            segment = segment << 1;
        }
        LATDbits.LATD5 = !LATDbits.LATD5;
        LATDbits.LATD6 = !LATDbits.LATD6;
    }
    return 0;
}
