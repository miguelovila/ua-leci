#include <detpic32.h>

int main(void)
{
    // Configure RE0...RE3 as outputs
    TRISEbits.TRISE0 = 0;
    TRISEbits.TRISE1 = 0;
    TRISEbits.TRISE2 = 0;
    TRISEbits.TRISE3 = 0;

    while (1)
    {
        LATEbits.LATE0 = 1;
        LATEbits.LATE1 = 1;
        LATEbits.LATE2 = 1;
        LATEbits.LATE3 = 1;
        resetCoreTimer();
        while (readCoreTimer() < 20000000)
        {
        };
        LATEbits.LATE0 = 0;
        LATEbits.LATE1 = 0;
        LATEbits.LATE2 = 0;
        LATEbits.LATE3 = 0;

        while (1)
        {
            char keypress = inkey();
            if (keypress == 0x30)
            {
                LATEbits.LATE0 = 1;
                LATEbits.LATE1 = 0;
                LATEbits.LATE2 = 0;
                LATEbits.LATE3 = 0;
                continue;
            }
            if (keypress == 0x31)
            {
                LATEbits.LATE0 = 0;
                LATEbits.LATE1 = 1;
                LATEbits.LATE2 = 0;
                LATEbits.LATE3 = 0;
                continue;
            }
            if (keypress == 0x32)
            {
                LATEbits.LATE0 = 0;
                LATEbits.LATE1 = 0;
                LATEbits.LATE2 = 1;
                LATEbits.LATE3 = 0;
                continue;
            }
            if (keypress == 0x33)
            {
                LATEbits.LATE0 = 0;
                LATEbits.LATE1 = 0;
                LATEbits.LATE2 = 0;
                LATEbits.LATE3 = 1;
                continue;
            }
            if (keypress != 0x00)
            {
                break;
            }
        }
    }

    return 0;
}
