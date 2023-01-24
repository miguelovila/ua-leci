#include <detpic32.h>

typedef struct {
    char mem[100];
    int nchar;
    int posrd;
} t_buf;

volatile t_buf txbuf;

void putStrInt(char *s) {
    while (txbuf.nchar > 0) {};
    for (; *s != '\0'; s++) {
        txbuf.mem[txbuf.nchar++] = *s;
    }
    txbuf.posrd = 0;
    IEC1bits.U2TXIE = 1;
}

void _int_(_UART_2_VECTOR) isr_uart2(void) {
    if (IFS1bits.U2TXIF) {
        if (txbuf.nchar > 0) {
            U2TXREG = txbuf.mem[txbuf.posrd++];
            txbuf.nchar--;
        } else {
            IEC1bits.U2TXIE = 0;
        }
        IFS1bits.U2TXIF = 0;
    }
}

int main(void) {
    // Configuração base UART
    U2BRG = 10;
    U2MODEbits.PDSEL = 0;
    U2MODEbits.STSEL = 0;
    U2STAbits.URXEN = 1;
    U2STAbits.UTXEN = 1;
    U2MODEbits.ON = 1;

    IEC1bits.U2RXIE = 0;
    IEC1bits.U2TXIE = 0;
    IPC8bits.U2IP = 1;
    U2STAbits.UTXISEL = 0;
    U2STAbits.URXISEL = 0;
    IFS1bits.U2RXIF = 0;

    EnableInterrupts();
    txbuf.nchar = 0;
    while (1) {
        putStrInt("Test string which can be as long as you like, up to a maximum of 100 characters\n");
    };
    return 0;
}
