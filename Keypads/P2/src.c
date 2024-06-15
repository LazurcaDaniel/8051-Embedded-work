#include <8051.h>

// State definitions
#define STATE_WAIT 0
#define STATE_KEY_PRESSED 1

unsigned char getKeyPressed() {
    unsigned char value = 10;

    // Check first column
    P0 = 0b11110111;
    if (P0_6 == 0) {
        value = 1;
    } else if (P0_5 == 0) {
        value = 2;
    } else if (P0_4 == 0) {
        value = 3;
    }

    // Check second column
    P0 = 0b11111011;
    if (P0_6 == 0) {
        value = 4;
    } else if (P0_5 == 0) {
        value = 5;
    } else if (P0_4 == 0) {
        value = 6;
    }

    // Check third column
    P0 = 0b11111101;
    if (P0_6 == 0) {
        value = 7;
    } else if (P0_5 == 0) {
        value = 8;
    } else if (P0_4 == 0) {
        value = 9;
    }

    // Check fourth column
    P0 = 0b11111110;
    if (P0_5 == 0) {
        value = 0;
    }

    return value;
}

void printKey(unsigned char poz, unsigned char value) {
    P3 = poz << 3;
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

int main() {
    unsigned char value;
    unsigned char state = STATE_WAIT;
    unsigned char keys[4], i = 0;

    while (1) {
        value = getKeyPressed();

        if (state == STATE_WAIT) {
            if (value != 10) {
                state = STATE_KEY_PRESSED;
                keys[i] = value;
                i++;
            }
        } else {
            if (value == 10) {
                state = STATE_WAIT;
            }
        }

        if (i == 4) {
            break;
        }
    }

    P0_7 = 0;
    unsigned char j = 0;
    while (1) {
        printKey(j, keys[j]);

        P0_7 = 1;
        j++;
        if (j == 4) {
            j = 0;
        }
        P0_7 = 0;
    }

    return 0;
}
