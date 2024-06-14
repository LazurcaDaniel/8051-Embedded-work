Write a C program that displays a 4-digit number (positive integer) on the 7-segment displays.
Indications:
The display control is more complicated:
- The configuration to be displayed is written on port P1.
- The display on which the configuration is shown is controlled by bits 3 and 4 of port P3 and, additionally, by
bit 7 of port P0.
While all displays get their values from port P1, at most one of them can be turned on at any moment, due to
the decoder:
- If bit 7 of port P0 has value 0, all displays are turned off (the decoder has no active output).
- Otherwise, 3 and 4 of port P3 make a 2-bit number which indicates which decoder output is active - that is,
which display is turned on. For example, if the 2-bit number is 11 (which means 3 in base 2), then display 3 is
turned on.
Thus, in order to display multiple digits, one must cycle through those digits, always taking care that the
decoder is controlled in such a way that each digit is sent to the right display.
For a given number, the base-10 digits are determined by repeatedly dividing the number by 10; the digits are
the remainders of the division-by-10 operations.