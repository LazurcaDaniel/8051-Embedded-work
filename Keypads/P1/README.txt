Write a C program that reads a key from the keypad and displays it on one of the 7-segment displays. The
key on the keypad must have already been pressed when the program starts and the situation on the keypad is
not changing during program execution.
Indications:
The keypad is connected to the microcontroller in a special manner, which leads to a more sophisticated scan
procedure:
- Each row of the keypad is connected to one of bits 0..3 of port P0.
- Similarly, each column of the keypad is connected to one of bits 4..6 of port P0.
To detect that a key is pressed, one must first write value 0 on the corresponding keypad row (keeping the other
rows on value 1) and subsequently read the value on the corresponding keypad column. For example, we can
detect that key '6' has been pressed by writing 0 on the second-highest row (i.e., bit 2 on port P0) and then
testing if value is 0 on the rightmost column (i.e., bit 4 on port P0).
As it is not known in advance which key is pressed (if any), the whole keypad must be scanned; that is, all rows
and columns, sequentially.