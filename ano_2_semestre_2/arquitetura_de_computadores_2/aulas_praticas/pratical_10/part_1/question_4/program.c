#include <detpic32.h>

void putc(char byte) 
{ 
    while (U2STAbits.UTXBF == 1) { }
    U2TXREG = byte;
}

void putstr(char * str) {
    for (; *str != '\0'; str++) {
        putc(*str);
    }
}

int main (void) {
    U2BRG = 2082;
    U2MODEbits.BRGH = 0;

    U2MODEbits.PDSEL = 00;
    U2MODEbits.STSEL = 0;

    U2STAbits.UTXEN = 1;
    U2STAbits.URXEN = 1;
    U2MODEbits.ON = 1;

    while (1) {
        putstr("String de teste\n");
        resetCoreTimer();
        while (readCoreTimer() <= 20000000) { }
    }
    return 0;
}

/*
// Configuração do Baud Generator
// baudrate = 600 = 20000000/16*(U2BRRG + 1)
//
// assim,
//
// U2BRG = ((20000000/600)/16) - 1 = 2082
*/
