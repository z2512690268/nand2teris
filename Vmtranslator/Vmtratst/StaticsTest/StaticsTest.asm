@256
D = A
@SP
M = D
@Sys.init
0 ; JMP
//
//
//
//
//
//
//function Class1.set 0
(Class1.set)
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
//pop static 0
@SP
AM = M - 1
D = M
@Class1.0
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
//pop static 1
@SP
AM = M - 1
D = M
@Class1.1
M = D
//push constant 0
@0
D = A
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
@SP
M = M - 1
@R14
D = M
@SP
M = D
@R15
A = M
0 ; JMP
//
//
//function Class1.get 0
(Class1.get)
//push static 0
@Class1.0
D = M
@SP
M = M + 1
A = M - 1
M = D
//push static 1
@Class1.1
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
@SP
M = M - 1
@R14
D = M
@SP
M = D
@R15
A = M
0 ; JMP
//
//
//
//
//
//
//function Class2.set 0
(Class2.set)
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
//pop static 0
@SP
AM = M - 1
D = M
@Class2.0
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
//pop static 1
@SP
AM = M - 1
D = M
@Class2.1
M = D
//push constant 0
@0
D = A
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
@SP
M = M - 1
@R14
D = M
@SP
M = D
@R15
A = M
0 ; JMP
//
//
//function Class2.get 0
(Class2.get)
//push static 0
@Class2.0
D = M
@SP
M = M + 1
A = M - 1
M = D
//push static 1
@Class2.1
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
@SP
M = M - 1
@R14
D = M
@SP
M = D
@R15
A = M
0 ; JMP
//
//
//
//
//
//
//
//function Sys.init 0
(Sys.init)
//push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 8
@8
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Class1.set 2
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
@2
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
@Class1.set
0 ; JMP
(RET_CALL_0)
//pop temp 0 
@SP
AM = M - 1
D = M
@5
M = D
//push constant 23
@23
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 15
@15
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Class2.set 2
@RET_CALL_1
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
@2
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
@Class2.set
0 ; JMP
(RET_CALL_1)
//pop temp 0 
@SP
AM = M - 1
D = M
@5
M = D
//call Class1.get 0
@RET_CALL_2
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
@0
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
@Class1.get
0 ; JMP
(RET_CALL_2)
//call Class2.get 0
@RET_CALL_3
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
@0
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
@Class2.get
0 ; JMP
(RET_CALL_3)
//label WHILE
(Sys.init$WHILE)
//goto WHILE
@Sys.init$WHILE
0 ; JMP
