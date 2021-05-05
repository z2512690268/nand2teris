load MFullAdder.hdl,
output-file MFullAdder.out,
output-list a b c sum carry;

set a 0, 
set b 0, 
set c 0, 
eval, 
output;

set a 0, 
set b 0, 
set c 1, 
eval, 
output;

set a 0, 
set b 1, 
set c 0, 
eval, 
output;

set a 0, 
set b 1, 
set c 1, 
eval, 
output;

set a 1, 
set b 0, 
set c 0, 
eval, 
output;

set a 1, 
set b 0, 
set c 1, 
eval, 
output;

set a 1, 
set b 1, 
set c 0, 
eval, 
output;

set a 1, 
set b 1, 
set c 1, 
eval, 
output;