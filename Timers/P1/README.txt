Write a C program that turns on all LEDs individually, one LED at a time, then moves to the next LED and
so on. Moving from one LED to the next is done at a constant pace.  
Indications:
The most difficult problem here is measuring the time. As program loops do not provide an accurate and
reliable control of the elapsed time, it is necessary to use the built-in timers (see the 8051 data sheet).
Timer control (examples below are for timer 0; the commands are similar for timer 1):
- Set the working mode of the timer by writing the proper value into register TMOD. For our purposes, the value
to be written into TMOD is 1.
- Load the desired initial value of the timer (2 bytes) into registers TH0 (upper byte) and TL0 (lower byte).
- Start/stop the timer by assigning value 1/0 to bit TR0. When the timer is started, its value is incremented at a
constant rate; when the timer reaches value 0 (overflow), bit TF0 is set.
There are two ways of detecting timer overflow:
a) Test bit TF0 repeatedly until it becomes 1.
b) Configure the timer to generate an interrupt on overflow.