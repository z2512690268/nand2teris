load MHalfAdder.hdl,
output-file MHalfAdder.out,
output-list a b sum carry;

set a 0, 
set b 0, 
eval, 
output;

set a 0, 
set b 1, 
eval, 
output;

set a 1, 
set b 0, 
eval, 
output;

set a 1, 
set b 1, 
eval, 
output;