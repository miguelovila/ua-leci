#include <detpic32.h>

void putc1(char byte) 
{ 
    while (U1STAbits.UTXBF == 1) { }
    U1TXREG = byte;
}

char getc1(void) {
    while (U1STAbits.URXDA == 0) { }
    return U1RXREG;
}

void putstr1(char * str) {
    for (; *str != '\0'; str++) {
        putc1(*str);
    }
}

int main (void) {
    U1BRG = 10;
    U1MODEbits.BRGH = 0;

    U1MODEbits.PDSEL = 00;
    U1MODEbits.STSEL = 0;

    U1STAbits.UTXEN = 1;
    U1STAbits.URXEN = 1;
    U1MODEbits.ON = 1;

    while (1) {
        putc1(0x5A);
        resetCoreTimer();
        while (readCoreTimer() <= 200000) {}
    }
    return 0;
}

/*
// Configuração do Baud Generator
// baudrate = 115200 = 20000000/16*(U2BRRG + 1)
//
// assim,
//
// U2BRG = ((20000000/115200)/16) - 1 = 10
*/
