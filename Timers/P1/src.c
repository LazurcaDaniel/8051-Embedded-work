#include <8051.h>

volatile unsigned char count, flag;

void func(void) __interrupt(1) {
    
    TH0 = 0xD8;
    TL0 = 0xEF;
    
    if(flag == 0)
    {
        count = count << 1;
        if(count == 0b10000000)
        {
            flag = 1;
        }
    }
    else
    {
        count = count >> 1;
        if(count == 0b00000001)

        {
            flag = 0;
        }
    }   
    P1 = ~count;

}

int main(){
    TR0 = 0;
    TMOD = 1; ///modul 16 biti
    EA = 1; ///imi da voie sa bag timere
    ET0 = 1; ////activeraza timerul 0
    TH0 = 0xD8;
    TL0 = 0xEF;
    ////pleaca din 2^16 - 1 se duce in jos pana la nr TH0TL0 - 3CB0
    TR0 = 1; ///porneste timerul 0
    count = 1;
    flag = 0;
    while(1){}
}