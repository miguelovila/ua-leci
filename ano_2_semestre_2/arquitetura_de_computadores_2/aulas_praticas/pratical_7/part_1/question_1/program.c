#include <detpic32.h>

// Events

void _int_(27) isr_adc1(void) {
    putChar('\n');
    printInt(ADC1BUF0, 16 | 3 << 16);
    AD1CON1bits.ASAM = 1;
    IFS1bits.AD1IF = 0;
}


// Main functions

int main(void) {
    // Configure ADC (1 conversion)
    TRISBbits.TRISB4 = 1;
    AD1PCFGbits.PCFG4 = 0;
    AD1CON1bits.SSRC = 7;
    AD1CON1bits.CLRASAM = 1;
    AD1CON3bits.SAMC = 16;
    AD1CON2bits.SMPI = 0;
    AD1CHSbits.CH0SA = 4;
    AD1CON1bits.ON = 1;
    
    // Enable interruption system

    IPC6bits.AD1IP = 2;
    IEC1bits.AD1IE = 1;
    IFS1bits.AD1IF = 0;
    EnableInterrupts();

    // Start the ADC conversion
    AD1CON1bits.ASAM = 1;

    while (1) {};
    return 0;
}

