//
//
//
//
//
//
//function SimpleFunction.test 2
(SimpleFunction.test)
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push local 0
@0
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//push local 1
@1
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//add
@SP
AM = M - 1
D = M
@SP
AM = M - 1
D = D + M
@SP
M = M + 1
A = M - 1
M = D
//not
@SP
AM = M - 1
D = !M
@SP
M = M + 1
A = M - 1
M = D
//push argument 0
@0
D = A
@ARG
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//add
@SP
AM = M - 1
D = M
@SP
AM = M - 1
D = D + M
@SP
M = M + 1
A = M - 1
M = D
//push argument 1
@1
D = A
@ARG
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//sub
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
//return
@LCL
D = M
@5
A = D - A
D = M
@R15
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
@R14
D = M
@SP
M = D
@R15
A = M
0 ; JMP
