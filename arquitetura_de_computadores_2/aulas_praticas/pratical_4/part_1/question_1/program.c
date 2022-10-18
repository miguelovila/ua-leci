#include <detpic32.h>

int main(void) {
    TRISCbits.TRISC14 = 0; // RC14 as output
    LATCbits.LATC14 = 0; // RC14 = 0
    while(1) {
        resetCoreTimer();
        while(readCoreTimer() < 10000000); // Wait 0.5s
        LATC = LATC ^ 0x4000; // invert RC14

        // Alternative solution
        //LATCbits.LATC14 = !LATCbits.LATC14; 
    }
    return 0;
}