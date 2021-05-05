load MRAM8.hdl,
output-file MRAM8.out,
output-list time%S1.4.1 in%B1.16.1 address%B1.3.1 load%B2.3.2 out%B1.16.1;

set in %B1101101010101101, 
set address %B100, 
set load 1, 
tick,
output;

tock,
output;

set in %B0110000100001001, 
set address %B010, 
set load 0, 
tick,
output;

tock,
output;

set in %B0000010101110101, 
set address %B001, 
set load 0, 
tick,
output;

tock,
output;

set in %B1010011011000100, 
set address %B100, 
set load 0, 
tick,
output;

tock,
output;

set in %B1110101010011011, 
set address %B001, 
set load 1, 
tick,
output;

tock,
output;

set in %B1100111110001010, 
set address %B000, 
set load 0, 
tick,
output;

tock,
output;

set in %B0010010001000110, 
set address %B100, 
set load 0, 
tick,
output;

tock,
output;

set in %B0110011010000100, 
set address %B000, 
set load 0, 
tick,
output;

tock,
output;

set in %B1101001000111010, 
set address %B011, 
set load 0, 
tick,
output;

tock,
output;

set in %B1000110001001010, 
set address %B001, 
set load 0, 
tick,
output;

tock,
output;

set in %B0001001111010110, 
set address %B011, 
set load 0, 
tick,
output;

tock,
output;

set in %B0010100000110111, 
set address %B000, 
set load 0, 
tick,
output;

tock,
output;

set in %B0000100100100000, 
set address %B111, 
set load 1, 
tick,
output;

tock,
output;

set in %B0011001000001000, 
set address %B011, 
set load 1, 
tick,
output;

tock,
output;

set in %B0011011111101001, 
set address %B000, 
set load 1, 
tick,
output;

tock,
output;

set in %B0100001010101000, 
set address %B101, 
set load 1, 
tick,
output;

tock,
output;