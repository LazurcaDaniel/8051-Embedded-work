Write a C program that controls the motor, by making it continuously change its spinning direction. That is,
the motor spins clockwise for a time T, then counter clockwise for another time T, and so on.
Indications:
In order to control the motion of the motor, one must write the right values to bits 1 and 0 of port P3:
- If the bits have the same value (either 0 or 1), the motor stops.
- If the bit values are different, the motor spins; the spinning direction depends on which bit has value 0 and
which has value 1.
- In conclusion, the values that must be written to port P3 for making the motor spin are 1 and 2, respectively;
they correspond to binary combinations 01 and 10, respectively, on bits 1 and 0.
- The time T is actually a delay and can be implemented as an empty loop. It is not important what is the value
of the delay, but is recommended not to make it very long, because the program will become slow.