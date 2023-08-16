#include <detpic32.h>

int main(void) {
    LATD = ( LATD & 0xFFBF ) | 0x0020; // Write the values of RD5 and RD6
    TRISD = TRISD & 0xFF9F; // Mark RD5 - RD6 as outputs
    TRISB = ( TRISB & 0x80FF ) | 0x000F; // Mark RB0-RB3 as inputs and RB8 - RB14 as outputs

    static const char disp7Scodes[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71};
    short unsigned int index = 0;
    while(1) {
        LATB = (LATB & 0x80FF) |  disp7Scodes[index] << 8 ;
        switch ((PORTB ^ 0xFFFF ) & 0x000F) {
            case 0x0000:
                index = 0;
                break;
            case 0x0001:
                index = 1;
                break;
            case 0x0002:
                index = 2;
                break;
            case 0x0003:
                index = 3;
                break;
            case 0x0004:
                index = 4;
                break;
            case 0x0005:
                index = 5;
                break;
            case 0x0006:    
                index = 6;
                break;
            case 0x0007:
                index = 7;
                break;
            case 0x0008:
                index = 8;
                break;
            case 0x0009:
                index = 9;
                break;
            case 0x000A:
                index = 10;
                break;
            case 0x000B:
                index = 11;
                break;
            case 0x000C:
                index = 12;
                break;
            case 0x000D:
                index = 13;
                break;
            case 0x000E:    
                index = 14;
                break;
            default:
                index = 15;
                break;
        }
    }
    return 0;
}
