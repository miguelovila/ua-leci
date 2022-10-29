#include <detpic32.h>

int main(void) {
    unsigned char segment;
    // Enable display low (RD5) and disable display high (RD6)
    LATD = ( LATD & 0xFF9F ) | 0x0020; // ---- ---- -01- ----
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
        // invert RD5 and RD6
        LATD = LATD ^ 0x0060; // ---- ---- 11- ----
    }
    return 0;
}
