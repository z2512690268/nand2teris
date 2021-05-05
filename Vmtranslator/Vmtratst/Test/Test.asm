@256
D = A
@SP
M = D
@Sys.init
0 ; JMP
(Main.fibonacci)
@0
D = A
@ARG
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@0
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
@ARG
D = M + 1
@R14
M = D
@LCL
D = M
@SP
M = D
@SP
AM = M - 1
D = M
@THAT
M = D
@SP
AM = M - 1
D = M
@THIS
M = D
@SP
AM = M - 1
D = M
@ARG
M = D
@SP
AM = M - 1
D = M
@LCL
M = D
@SP
AM = M - 1
D = M
@R15
M = D
@R14
D = M
@SP
M = D
@R15
A = M
0 ; JMP
(Sys.init)
@4
D = A
@SP
M = M + 1
A = M - 1
M = D
@RET_CALL_0
D = A
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
@THAT
D = M
@SP
M = M + 1
A = M - 1
M = D
@SP
D = M
@SP
M = M + 1
A = M - 1
M = D
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
@SP
AM = M - 1
D = M
@SP
AM = M - 1
D = M - D
@SP
M = M + 1
A = M - 1
M = D
@5
D = A
@SP
M = M + 1
A = M - 1
M = D
@SP
AM = M - 1
D = M
@SP
AM = M - 1
D = M - D
@SP
M = M + 1
A = M - 1
M = D
@SP
AM = M - 1
D = M
@ARG
M = D
@SP
D = M
@LCL
M = D
@Main.fibonacci
0 ; JMP
(RET_CALL_0)
(Sys.init$WHILE)
@Sys.init$WHILE
0 ; JMP
