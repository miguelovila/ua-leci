#include <detpic32.h>

int main(void) {
    // config T3 for 2Hz
    T3CONbits.TCKPS = 7;
    PR3 = 39062;
    TMR3 = 0;



    T3CONbits.TON = 1;

    while (1)
    {
        while ( IFS0bits.T3IF == 0 ) { };
        putChar('.');
        IFS0bits.T3IF = 0;
    }
    
    return 0;
}

/*
//
// f_out_prescaler = f_pb_clk /256 = 20MHz / 256 = 78125Hz
// f_out = f_out_prescaler / PR3 + 1 = 78125Hz / (39062 + 1) = 2Hz
//
*/

/*
// Quero obter uma frequência de 10Hz
//
// PRx   = (f_in / f_out) - 1
//       = (20*10^6 / 10) - 1 = 1999999 > 65535
//                (Não pode ser maior)
// 
// f_in  = 20*10^6
// f_out = 10Hz
//
// ==============================================
//
// PRx   = (f_in / f_out) - 1
//       = (625000 / 10) - 1 = 62499 < 65535
// 
// f_in  = 20*10^6 / 32 = 625000
// f_out = 10Hz
//
// Então, pre_scaler = 32  e couter = 62499
//
*/