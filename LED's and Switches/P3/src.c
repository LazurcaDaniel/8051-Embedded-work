#include <8051.h>

int main()
{
    unsigned char i = 0;
    P1 = 0b11111110;
    unsigned char x = 0b00000001;
    while(1){
        if(i == 0)
        {
            x = x << 1;
            if(x == 0b10000000)
            {
                i = 1;
            }
        }
        else{
            x = x>>1;
            if(x == 0b00000001)
            {
                i = 0;
            }
        }
        P1 = ~x;
    }
}