1. Write a C program that continuously alternates the LEDs which are turned on: the odd-indexed ones (i.e., 1,
3, 5, 7) and the even-indexed ones (i.e., 0, 2, 4, 6).
Indications:
The LEDs are connected to port P1. In order to turn on/off a certain LED, the corresponding bit of port P1 must
be assigned value 0/1 (not the opposite).
It is possible to assign each bit of a port in a separate instruction (e.g., P1_0=1; etc.). However, in most cases
it is easier to assign all bits of the port in a single instruction. We remind that the C language allows writing
base 2 constants by using the 0b prefix.
For example, the following instruction turns on LEDs 0, 2, 4, 6 and off LEDs 1, 3, 5, 7, all at once:
P1=0b10101010;