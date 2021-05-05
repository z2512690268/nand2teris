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
//
//
//
//
//function Main.fibonacci 0
(Main.fibonacci)
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
//push constant 2
@2
D = A
@SP
M = M + 1
A = M - 1
M = D
//lt                     
@SP
AM = M - 1
D = M
A = A - 1
D = M - D
M = 0
@END_LT_0
D ; JGE
@SP
A = M - 1
M = -1
(END_LT_0)
//if-goto IF_TRUE
@SP
AM = M - 1
D = M
@Main.fibonacci$IF_TRUE
D ; JNE
//goto IF_FALSE
@Main.fibonacci$IF_FALSE
0 ; JMP
//label IF_TRUE          
(Main.fibonacci$IF_TRUE)
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
//return
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
//label IF_FALSE         
(Main.fibonacci$IF_FALSE)
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
//push constant 2
@2
D = A
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
//call Main.fibonacci 1  
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
//push constant 1
@1
D = A
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
//call Main.fibonacci 1  
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
(RET_CALL_1)
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
//return
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
//
//
//
//
//
//
//
//
//
//
//function Sys.init 0
(Sys.init)
//push constant 4
@4
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Main.fibonacci 1   
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
(RET_CALL_2)
//label WHILE
(Sys.init$WHILE)
//goto WHILE              
@Sys.init$WHILE
0 ; JMP
