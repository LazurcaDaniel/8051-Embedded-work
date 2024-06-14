#include <8051.h>

//P0_7 = 1 -- neaparat ca sa mearga display-ul.
//P1_I = 0 -- daca vreau sa mearga un segment
///0 - a , ... , 7 - .

//0 : 0b10000000
//1 : 0b11111001
//2 : 0b10100100
//3 : 0b10110000
//4 : 0b10011001
//5 : 0b10010010
//6 : 0b10000010
//7 : 0b11111000
//8 : 0b10000000
//9 : 0b10010000



int main()
{       
    P0_7 = 1;
    //unsigned char x = 4925;
    unsigned char cif[4];
    cif[0] = 5;
    cif[1] = 2;
    cif[2] = 9;
    cif[3] = 4;
    unsigned char poz = 0;
    P3 = poz << 3;
    while(1){
        
        switch (cif[poz])
        {
        case 0:
            P1 = 0b10000000;
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
            //P1 = 0b00001001;
            P1 = 0b10010000;
            break;
        default:
            break;
        }
        poz++;
        if(poz == 4)
            poz = 0;
        P0_7 = 1;

        P3 = poz << 3;

        P0_7 = 0;
    }
}