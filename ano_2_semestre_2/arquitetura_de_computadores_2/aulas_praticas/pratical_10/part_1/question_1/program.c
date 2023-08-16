#include <detpic32.h>

int main (void) {
    // Configure UART 2
    U2BRG = 10;
    U2MODEbits.BRGH = 0;

    U2MODEbits.PDSEL = 00;
    U2MODEbits.STSEL = 0;

    U2STAbits.UTXEN = 1;
    U2STAbits.URXEN = 1;
    U2MODEbits.ON = 1;

    while (1) { }
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
