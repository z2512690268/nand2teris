//Add.asm Add 2 and 3 then store the result to RAM[0]
@2
//1.0000 0000 0000 0010
D = A 
//2.1110 1000 1001 0000
@3
//3.0000 0000 0000 0011
D = D + A 
//4.1110 0000 1001 0000
@0
//5.0000 0000 0000 0000
M = D
//6.1110 0010 1000 1000
(END)
@END
//7.0000 0000 0000 0111
0 ; JMP
//8.1000 1010 1000 0111