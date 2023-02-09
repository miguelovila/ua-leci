#include <detpic32.h>

int main (void) {
    short unsigned int counter = 0;

    while (1) {
        putChar('\r');
        printInt(counter, 0x0002000A);
        if (counter++ == 99) {counter = 0;}
        resetCoreTimer(); while (readCoreTimer() < 2000000) {};
    }

    return 0;
}
