// value of R0 * R1

@res
M = 0
@i
M = 1
(LOOP)
@i
D = M
@R1
D = D - M
@END
D;JGT
@R0
D = M
@res
M = M + D
@i
M = M + 1
@LOOP
0;JMP
(END)
@END
0;JMP

