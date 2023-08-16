#include <detpic32.h>

int main (void) {
    short unsigned int counter = 0;
    unsigned int delay = 2000000;
    unsigned short int frequency = 10; 
    char input = 0x00;

    while (1) {
        input = inkey();
        if (input != 0x00) {
            switch (input)
            {
            case 0x30:
                frequency = 2;
                delay = 10000000;
                break;
            case 0x31:
                frequency = 4;
                delay = 5000000;
                break;
            case 0x32:
                frequency = 6;
                delay = 3333333;
                break;
            case 0x33:
                frequency = 8;
                delay = 2500000;
                break;
            case 0x34:
                frequency = 10;
                delay = 2000000;
                break;
            default:
                break;
            }
        }
        putChar('\r');
        printInt(counter, 0x0002000A);
        putChar(' ');
        printInt10(frequency);
        printStr(" Hz");
        if (counter++ == 99) {counter = 0;}
        resetCoreTimer(); while (readCoreTimer() < delay) {};
    }

    return 0;
}
