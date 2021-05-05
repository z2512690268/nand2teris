load MMux4Way16.hdl,
output-file MMux4Way16.out,
output-list a%B1.16.1 b%B1.16.1 c%B1.16.1 d%B1.16.1 sel%B1.2.1 out%B1.16.1;

set a %B0111100101100011, 
set b %B1010010100010100, 
set c %B0100000010001101, 
set d %B1001101000011111, 
set sel %B00, 
eval, 
output;

set a %B0011110100001100, 
set b %B1011100101010010, 
set c %B1111011110000111, 
set d %B0001000000001001, 
set sel %B01, 
eval, 
output;

set a %B1111100010010110, 
set b %B0100011011110000, 
set c %B0000101011000011, 
set d %B0110011010010101, 
set sel %B10, 
eval, 
output;

set a %B1111011111010001, 
set b %B0011001000001011, 
set c %B1001000000111111, 
set d %B1010011001001111, 
set sel %B10, 
eval, 
output;

set a %B1011000110110111, 
set b %B0000011010101011, 
set c %B1010010000000011, 
set d %B1111011011111111, 
set sel %B10, 
eval, 
output;

set a %B1111001011010111, 
set b %B1011001001011111, 
set c %B0000000100110110, 
set d %B1011100111000110, 
set sel %B11, 
eval, 
output;

set a %B0110100111101110, 
set b %B0010100100011000, 
set c %B0100010011001100, 
set d %B0111000101111001, 
set sel %B10, 
eval, 
output;

set a %B0011110001000000, 
set b %B1100110000111111, 
set c %B1100010010110010, 
set d %B0001010100001100, 
set sel %B11, 
eval, 
output;

