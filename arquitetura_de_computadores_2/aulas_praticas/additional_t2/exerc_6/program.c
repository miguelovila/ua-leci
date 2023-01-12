#include <detpic32.h>

// Circular FiFo
char buffer[16];

void putc(char char2send)
{
	while (U2STAbits.UTXBF)
	{
	};
	U2TXREG = char2send;
}

void putstr(char *str2send)
{
	for (; *str2send != '\0'; *str2send++)
	{
		putc(*str2send);
	}
}

void _int_(32) isr_uart2rx(void)
{
	char c = U2RXREG;
	if (c == 'D')
	{
		putstr("\nBuffer = ");
		int i;
		for (i = 15; i >= 0; i--)
		{
			putc((buffer[i] & 0x0008) ? '1' : '0');
			putc((buffer[i] & 0x0004) ? '1' : '0');
			putc((buffer[i] & 0x0002) ? '1' : '0');
			putc((buffer[i] & 0x0001) ? '1' : '0');
			buffer[i] = 0;
			putc(' ');
		}
	}
	IFS1bits.U2RXIF = 0;
}

int main(void)
{
	// RB3 TO RB0 INPUT
	TRISB = TRISB | 0x000F;
	// Config UART2
	U2BRG = 21;
	U2MODEbits.BRGH = 0b0;
	U2MODEbits.PDSEL = 0b10;
	U2MODEbits.STSEL = 0b0;
	U2STAbits.UTXEN = 0b1;
	U2STAbits.URXEN = 0b1;
	U2MODEbits.ON = 0b1;
	// Config UART2 interrupts
	U2STAbits.UTXISEL = 0b11;
	U2STAbits.URXISEL = 0b00;
	IEC1bits.U2RXIE = 1;
	IEC1bits.U2TXIE = 0;
	IPC8bits.U2IP = 1;
	IFS1bits.U2RXIF = 0;

	EnableInterrupts();

	while (1)
	{
		// Read RB3-RB0
		int i;
		for (i = 14; i >= 0; i--)
		{
			buffer[i + 1] = buffer[i];
		}
		buffer[0] = PORTB & 0x000F;

		resetCoreTimer();
		while (readCoreTimer() <= 13333333)
		{
		};
	};
	return 0;
}

// UART2 57600,8,PI,1
// U2BRG = (20000000/16*57600)-1 = 21
