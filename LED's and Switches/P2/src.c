#include <8051.h>
/// P1_i = 0 -> pornit
/// P1_i = 1 -> oprit
int main(){

    P1 = 0b11111111;
    while(1){
        if(P2_0 == 0)
            P1_0 = 0;
        else
            P1_0 = 1;
        
        if(P2_1 == 0)
            P1_1 = 0;
        else
            P1_1 = 1;
        
        if(P2_2 == 0)
            P1_2 = 0;
        else
            P1_2 = 1;
        
        if(P2_3 == 0)
            P1_3 = 0;
        else
            P1_3 = 1;
        
        if(P2_4 == 0)
            P1_4 = 0;
        else
            P1_4 = 1;
        
        if(P2_5 == 0)
            P1_5 = 0;
        else
            P1_5 = 1;
        
        if(P2_6 == 0)
            P1_6 = 0;
        else
            P1_6 = 1;
        
        if(P2_7 == 0)
            P1_7 = 0;
        else
            P1_7 = 1;
    }

}