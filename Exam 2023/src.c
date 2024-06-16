#include <8051.h>

volatile unsigned int code = 0, codeCopy;

volatile unsigned char readNr[4], readIndex = 0, nrTries = 5;


unsigned char readValue()
{
    P1 = 0b0111111;
    if(P1_0 == 0)
        return 1;
    if(P1_1 == 0)
        return 2;
    if(P1_2 == 0)
        return 3;
    P1 = 0b1011111;
    if(P1_0 == 0)
        return 4;
    if(P1_1 == 0)
        return 5;
    if(P1_2 == 0)
        return 6;
    P1 = 0b1101111;
    if(P1_0 == 0)
        return 7;
    if(P1_1 == 0)
        return 8;
    if(P1_2 == 0)
        return 9;
    P1 = 0b1110111;
    if(P1_0 == 0)
        return 10; ///steluta: reset code
    if(P1_1 == 0)
        return 0;
    if(P1_2 == 0)
        return 11; ///# backspace
    return 12;

}

void printNrTries(unsigned char nrTries){
    switch (nrTries)
    {
    case 0:
        P0 = 0b11000000;
        break;
    case 1:
        P0 = 0b11111001;
        break;
    case 2:
        P0 = 0b10100100;
        break;
    case 3:
        P0 = 0b10110000;
        break;
    case 4:
        P0 = 0b10011001;
        break;
    case 5:
        P0 = 0b10010010;
        break;
    case 6:
        P0 = 0b10000010;
        break;
    case 7:
        P0 = 0b11111000;
        break;
    case 8:
        P0 = 0b10000000;
        break;
    case 9:
        P0 = 0b10010000;
        break;
    default:
        break;
    }
}

void spinMotor(){
    P2_2 = 1;
    P2_1 = 0;
    
    while(!P2_0);
    
    P2 = 0;
}

void func(void) __interrupt(1){
    TH0 = 0xB1;
    TL0 = 0xDF;

    

    unsigned char value = readValue();
    if(value == 10){
        readIndex = 0;
        readNr[0] = 0;
        readNr[1] = 0;
        readNr[2] = 0;
        readNr[3] = 0;
    }
    else if(value == 11)
    {
        readNr[readIndex] = 0;
        readIndex--;
    }
    else if(value != 12)
    {
        readNr[readIndex] = value;
        readIndex++;
    }

    if(readIndex == 4)
    {
        code = codeCopy;
        for(unsigned char i = 0; i <4; i++)
            {
                if(readNr[i] != code%10)
                {
                    nrTries--;
                    readIndex = 0;
                    readNr[0] = 0;
                    readNr[1] = 0;
                    readNr[2] = 0;
                    readNr[3] = 0;
                    break;
                }
                code /=10;
            }
        if(readIndex == 4)
        {
            nrTries = 5;
            readIndex = 0;
            readNr[0] = 0;
            readNr[1] = 0;
            readNr[2] = 0;
            readNr[3] = 0;
            spinMotor();
        }
    }
    printNrTries(nrTries);
    if(nrTries == 0){
        TR0 = 0;
    }


}

int main()
{
    
    P2_4 = 1;
    while(!P2_3);
    code += P3 << 4;

    P2_4 = 1;
    while(!P2_3);
    code += P3;

    codeCopy = code;
    TMOD = 1;
    EA = 1;
    ET0 = 1;
    TH = 0xB1;
    TL = 0xDF;
    TR0 = 1;
}