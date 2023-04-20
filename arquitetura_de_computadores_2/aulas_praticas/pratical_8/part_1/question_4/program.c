#include <detpic32.h>

int main(void) {
    // Config T1 for 2Hz
    T1CONbits.TCKPS = 2;
    PR1 = 62499; TMR1 = 0;
    // Config T3 for 2Hz
    T3CONbits.TCKPS = 6;
    PR3 = 12499; TMR3 = 0;
    // Enable Interrupts for T1
    IPC1bits.T1IP = 2;
    IEC0bits.T1IE = 1;
    IFS0bits.T1IF = 0;
    // Enable Interrupts for T3
    IPC3bits.T3IP = 2;
    IEC0bits.T3IE = 1;
    IFS0bits.T3IF = 0;
    // Turn ON T1 and T3
    T1CONbits.TON = 1;
    T3CONbits.TON = 1;

    EnableInterrupts();
    while (1) {};
    return 0;
}

void _int_(_TIMER_1_VECTOR) isr_T1(void) {
    putChar('1');
    IFS0bits.T1IF = 0;
}

void _int_(_TIMER_3_VECTOR) isr_T3(void) {
    putChar('3');
    IFS0bits.T3IF = 0;
}

/* =========== TIMER 1 (1, 8, 64, 256) ============
// Quero obter uma frequência de 5Hz
//
// PRx   = (f_in / f_out) - 1
//       = (312500 / 5) - 1 = 62499 < 65535
// 
// f_in  = 20*10^6 / 64 = 312500
// f_out = 5Hz
//
// Então, pre_scaler = 64  e couter = 62499
//
// ======== TIMER 3 (1,2,4,8,16,32,64,256) ========
// Quero obter uma frequência de 25Hz
// PRx   = (f_in / f_out) - 1
//       = (312500 / 25) - 1 = 12499 < 65535
// 
// f_in  = 20*10^6 / 64 = 312500
// f_out = 25Hz
//
// Então, pre_scaler = 64  e couter = 12499
//
*/
