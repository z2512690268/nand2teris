load MMux.hdl,
output-file MMux.out,
output-list a b sel out;

set a 0, set b 0, set sel 0,
eval, output;

set a 0, set b 0, set sel 1,
eval, output;

set a 0, set b 1, set sel 0,
eval, output;

set a 0, set b 1, set sel 1,
eval, output;

set a 1, set b 0, set sel 0,
eval, output;

set a 1, set b 0, set sel 1,
eval, output;

set a 1, set b 1, set sel 0,
eval, output;

set a 1, set b 1, set sel 1,
eval, output;
