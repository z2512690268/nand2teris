@i
M = 0
@SCREEN
D = A
@pos
M = D
(LOOP)
@i
D = M
@0
D = D - M
@END
D ; JEQ

@pos
A = M
M = -1

@32
D = A
@pos
M = D + M

@i
M = M + 1
@LOOP
0 ; JMP
(END)
@END
0 ; JMP