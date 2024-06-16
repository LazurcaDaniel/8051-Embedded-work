#include <8051.h>

volatile unsigned char value;

unsigned char readValue(){
   P0 = 0b01110111;///P0_7 = 0, P0_3 = 0
        if(P0_6 == 0){
            return 1;
        }
        else if(P0_5 == 0){
            return 2;
        }
        else if(P0_4 == 0){
            return 3;
        }

    P0 = 0b01111011; ///P0_2 = 0
        if(P0_6 == 0){
            return 4;
        }
        else if(P0_5 == 0){
            return 5;
        }
        else if(P0_4 == 0){
            return 6;
        }
    P0 = 0b011111101;
        if(P0_6 == 0){
            return 7;
        }
        else if(P0_5 == 0){
            return 8;
        }
        else if(P0_4 == 0){
            return 9;
        }
    P0 = 0b011111110;
        if(P0_5 == 0)
            return 0;
    
    return 10;

}

void printKey( unsigned char value) {
    
    switch (value) {
        case 0:
            P1 = 0b11000000;
            break;
        case 1:
            P1 = 0b11111001;
            break;
        case 2:
            P1 = 0b10100100;
            break;
        case 3:
            P1 = 0b10110000;
            break;
        case 4:
            P1 = 0b10011001;
            break;
        case 5:
            P1 = 0b10010010;
            break;
        case 6:
            P1 = 0b10000010;
            break;
        case 7:
            P1 = 0b11111000;
            break;
        case 8:
            P1 = 0b10000000;
            break;
        case 9:
            P1 = 0b10010000;
            break;
        default:
            break;
    }
}

void func(void) __interrupt(1){
    TH0 = 0;
    TL0 = 0xC0;
    
    value = readValue();
    if(value != 10)
        {
            P0_7 = 1;
            printKey(value);
        }
    else
            P0_7 = 0;
}

int main()
{
    TMOD = 1;
    EA = 1;
    ET0 = 1;
    TH0 = 0;
    TL0 = 0xC0;
    TR0 = 1;
    P0_7 = 0;
    P3 = 0;
    while(1);
}