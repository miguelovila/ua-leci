#include <detpic32.h>

void putc(char byte) 
{ 
    while (U2STAbits.UTXBF == 1) { }
    U2TXREG = byte;
}

int main(void) {
    // Configuração base UART
    U2BRG = 10;
    U2MODEbits.PDSEL = 0;
    U2MODEbits.STSEL = 0;
    U2STAbits.URXEN = 1;
    U2STAbits.UTXEN = 1;
    U2MODEbits.ON = 1;
    // Configuração módulo resseção
    U2STAbits.UTXISEL = 0;
    U2STAbits.URXISEL = 0;
    IEC1bits.U2RXIE = 1;
    IPC8bits.U2IP = 1;
    IFS1bits.U2RXIF = 0;
    
    EnableInterrupts();
    while (1) {};
    return 0;
}

void _int_(_UART_2_VECTOR) isr_uart2(void) {
    if (IFS1bits.U2RXIF) {
        putc(U2RXREG);
        IFS1bits.U2RXIF = 0;
    }
}

/*
// Configuração do Baud Generator
// baudrate = 115200 = 20000000/16*(U2BRRG + 1)
//
// assim,
//
// U2BRG = ((20000000/115200)/16) - 1 = 10
*/
