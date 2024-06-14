#include<8051.h>

int main(){
    while(1){
        if(P2_0 == 0)
            {
                P3_0 = 0;
                P3_1 = 1;
            }
        else{
            P3_0 = 1;
            P3_1 = 0;
        }
    }
}