#include <8051.h>

int main(){
    P3 = 0;
    unsigned char value;
    P0 = 0b01110111;///P0_7 = 0, P0_3 = 0
        if(P0_6 == 0){
            value = 1;
        }
        else if(P0_5 == 0){
            value = 2;
        }
        else if(P0_4 == 0){
            value = 3;
        }

    P0 = 0b01111011; ///P0_2 = 0
        if(P0_6 == 0){
            value = 4;
        }
        else if(P0_5 == 0){
            value = 5;
        }
        else if(P0_4 == 0){
            value = 6;
        }
    P0 = 0b011111101;
        if(P0_6 == 0){
            value = 7;
        }
        else if(P0_5 == 0){
            value = 8;
        }
        else if(P0_4 == 0){
            value = 9;
        }
    P0 = 0b011111110;
        if(P0_5 == 0)
            value = 0;
    while(1){
        switch (value)
        {
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
            P1 = 0b101100001;
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
}