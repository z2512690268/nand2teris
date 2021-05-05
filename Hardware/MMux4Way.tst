load MMux4Way.hdl,
output-file MMux4Way.out,
output-list a b c d sel%B1.2.1 out%B2.1.2;

set a 0, 
set b 0, 
set c 0, 
set d 0, 
set sel %B10, 
eval, 
output;

set a 0, 
set b 0, 
set c 0, 
set d 1, 
set sel %B10, 
eval, 
output;

set a 0, 
set b 0, 
set c 1, 
set d 1, 
set sel %B01, 
eval, 
output;

set a 0, 
set b 1, 
set c 0, 
set d 0, 
set sel %B11, 
eval, 
output;

set a 0, 
set b 1, 
set c 1, 
set d 0, 
set sel %B00, 
eval, 
output;

set a 1, 
set b 0, 
set c 0, 
set d 0, 
set sel %B10, 
eval, 
output;

set a 1, 
set b 1, 
set c 1, 
set d 1, 
set sel %B00, 
eval, 
output;

set a 0, 
set b 0, 
set c 0, 
set d 1, 
set sel %B10, 
eval, 
output;

set a 0, 
set b 1, 
set c 0, 
set d 1, 
set sel %B10, 
eval, 
output;

set a 1, 
set b 0, 
set c 0, 
set d 1, 
set sel %B10, 
eval, 
output;

set a 1, 
set b 0, 
set c 0, 
set d 1, 
set sel %B11, 
eval, 
output;

set a 1, 
set b 0, 
set c 1, 
set d 1, 
set sel %B11, 
eval, 
output;