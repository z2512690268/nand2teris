load MDMux4Way.hdl,
output-file MDMux4Way.out,
output-list in sel%B1.2.1 a b c d;

set in 0, 
set sel %B00, 
eval, 
output;

set in 0, 
set sel %B01, 
eval, 
output;

set in 0, 
set sel %B10, 
eval, 
output;

set in 0, 
set sel %B11, 
eval, 
output;

set in 1, 
set sel %B00, 
eval, 
output;

set in 1, 
set sel %B01, 
eval, 
output;

set in 1, 
set sel %B10, 
eval, 
output;

set in 1, 
set sel %B11, 
eval, 
output;