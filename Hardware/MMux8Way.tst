load MMux8Way.hdl,
output-file MMux8Way.out,
output-list a b c d e f g h sel%B1.3.1 out%B2.1.2;

set a 1, 
set b 1, 
set c 1, 
set d 0, 
set e 0, 
set f 1, 
set g 0, 
set h 1, 
set sel %B001, 
eval, 
output;

set a 0, 
set b 1, 
set c 0, 
set d 1, 
set e 0, 
set f 0, 
set g 1, 
set h 1, 
set sel %B101, 
eval, 
output;

set a 1, 
set b 1, 
set c 0, 
set d 1, 
set e 1, 
set f 0, 
set g 0, 
set h 0, 
set sel %B111, 
eval, 
output;

set a 0, 
set b 0, 
set c 0, 
set d 0, 
set e 1, 
set f 1, 
set g 0, 
set h 1, 
set sel %B010, 
eval, 
output;

set a 1, 
set b 1, 
set c 1, 
set d 0, 
set e 0, 
set f 0, 
set g 1, 
set h 1, 
set sel %B101, 
eval, 
output;

set a 0, 
set b 0, 
set c 0, 
set d 0, 
set e 1, 
set f 1, 
set g 0, 
set h 0, 
set sel %B111, 
eval, 
output;

set a 0, 
set b 0, 
set c 0, 
set d 1, 
set e 0, 
set f 0, 
set g 1, 
set h 0, 
set sel %B101, 
eval, 
output;

set a 0, 
set b 1, 
set c 1, 
set d 0, 
set e 0, 
set f 0, 
set g 1, 
set h 1, 
set sel %B101, 
eval, 
output;

set a 0, 
set b 1, 
set c 0, 
set d 1, 
set e 1, 
set f 0, 
set g 1, 
set h 1, 
set sel %B111, 
eval, 
output;

set a 0, 
set b 0, 
set c 0, 
set d 1, 
set e 0, 
set f 1, 
set g 1, 
set h 0, 
set sel %B000, 
eval, 
output;

set a 1, 
set b 1, 
set c 1, 
set d 1, 
set e 1, 
set f 1, 
set g 0, 
set h 1, 
set sel %B111, 
eval, 
output;

set a 0, 
set b 0, 
set c 0, 
set d 1, 
set e 0, 
set f 1, 
set g 0, 
set h 0, 
set sel %B000, 
eval, 
output;

set a 1, 
set b 1, 
set c 1, 
set d 1, 
set e 1, 
set f 1, 
set g 0, 
set h 0, 
set sel %B110, 
eval, 
output;

set a 1, 
set b 0, 
set c 0, 
set d 1, 
set e 0, 
set f 0, 
set g 1, 
set h 1, 
set sel %B011, 
eval, 
output;

set a 0, 
set b 0, 
set c 0, 
set d 0, 
set e 1, 
set f 0, 
set g 0, 
set h 1, 
set sel %B010, 
eval, 
output;

set a 1, 
set b 1, 
set c 0, 
set d 1, 
set e 1, 
set f 1, 
set g 0, 
set h 0, 
set sel %B110, 
eval, 
output;
