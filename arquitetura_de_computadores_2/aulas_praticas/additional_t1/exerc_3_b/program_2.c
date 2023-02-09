#include <detpic32.h>

int main(void)
{
    // Configure RE0...RE3 as outputs
    TRISE = TRISE & 0xFFF0;

    while (1)
    {
        LATE = LATE | 0x000F;
        resetCoreTimer();
        while (readCoreTimer() < 20000000);
        LATE = LATE & 0xFFF0;

        while (1)
        {
            char keypress = inkey();
            if (keypress == 0x30)
            {
                LATE = (LATE & 0xFFF0) | 0x0001;
                continue;
            }
            if (keypress == 0x31)
            {
                LATE = (LATE & 0xFFF0) | 0x0002;
                continue;
            }
            if (keypress == 0x32)
            {
                LATE = (LATE & 0xFFF0) | 0x0004;
                continue;
            }
            if (keypress == 0x33)
            {
                LATE = (LATE & 0xFFF0) | 0x0008;
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
