#include<8051.h>

int main(){
    P3_0 = 0;
    P3_1 = 1;
    while(1)
    {
        for(int i=0;i<10;i++);
        
        P3_0 = !P3_0;
        P3_1 = !P3_1;

    }
}