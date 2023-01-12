#include <detpic32.h>

void putc(char byte2send)
{
    while (U2STAbits.UTXBF == 1)
    {
    };
    U2TXREG = byte2send;
}

void putstr(char *str2send)
{
    for (; *str2send != '\0'; str2send++)
    {
        putc(*str2send);
    }
}

int main(void)
{
    // RB3 TO RB0 INPUT
    TRISB = TRISB | 0x000F;
    // UART2 1200,8,N,1
    U2BRG = 1041;
    U2MODEbits.BRGH = 0b0;
    U2MODEbits.PDSEL = 0b00;
    U2MODEbits.STSEL = 0b0;
    U2STAbits.UTXEN = 0b1;
    U2STAbits.URXEN = 0b0;
    U2MODEbits.ON = 1;

    while (1)
    {
        putstr("RB30=");
        putc(PORTBbits.RB3 ? '1' : '0');
        putc(PORTBbits.RB2 ? '1' : '0');
        putc(PORTBbits.RB1 ? '1' : '0');
        putc(PORTBbits.RB0 ? '1' : '0');
        putc('\n');
        resetCoreTimer();
        while (readCoreTimer() <= 10000000)
        {
        };
    };
    return 0;
}

/* ===== UART2 =====
// UxBRG = (20000000 / 16*baudrate) - 1
//
// U2BRG = (20000000 / (16 * 1200)) -1
//       = 1040.66667
*/
