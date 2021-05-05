@256
D = A
@SP
M = D
@Sys.init
0 ; JMP
(eq_command)
@SP
AM = M - 1
D = M
A = A - 1
D = M - D
M = 0
@R15
A = M
D ; JNE
@SP
A = M - 1
M = -1
@R15
A = M
0 ; JMP
(lt_command)
@SP
AM = M - 1
D = M
A = A - 1
D = M - D
M = 0
@R15
A = M
D ; JGE
@SP
A = M - 1
M = -1
@R15
A = M
0 ; JMP
(gt_command)
@SP
AM = M - 1
D = M
A = A - 1
D = M - D
M = 0
@R15
A = M
D ; JLE
@SP
A = M - 1
M = -1
@R15
A = M
0 ; JMP
//function Array.new 0
(Array.new)
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
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//gt
@gt_end0
D = A
@R15
M = D
@gt_command
0 ; JMP
(gt_end0)
//not
@SP
AM = M - 1
D = !M
@SP
M = M + 1
A = M - 1
M = D
//if-goto IF_TRUE0
@SP
AM = M - 1
D = M
@Array.new$IF_TRUE0
D ; JNE
//goto IF_FALSE0
@Array.new$IF_FALSE0
0 ; JMP
//label IF_TRUE0
(Array.new$IF_TRUE0)
//push constant 2
@2
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Sys.error 1
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
@LCL
M = D
@1
D = D - A
@5
D = D - A
@ARG
M = D
@Sys.error
0 ; JMP
(RET_CALL_0)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//label IF_FALSE0
(Array.new$IF_FALSE0)
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
//call Memory.alloc 1
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
@LCL
M = D
@1
D = D - A
@5
D = D - A
@ARG
M = D
@Memory.alloc
0 ; JMP
(RET_CALL_1)
//return
@LCL
D = M
@R14
M = D
@SP
A = M - 1
D = M
@ARG
M = D
@ARG
D = M + 1
@SP
M = D
@R14
AM = M - 1
D = M
@THAT
M = D
@R14
AM = M - 1
D = M
@THIS
M = D
@R14
AM = M - 1
D = M
@ARG
M = D
@R14
AM = M - 1
D = M
@LCL
M = D
@R14
AM = M - 1
A = M
0 ; JMP
//function Array.dispose 0
(Array.dispose)
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
//pop pointer 0
@SP
AM = M - 1
D = M
@3
M = D
//push pointer 0
@3
D = M
@SP
M = M + 1
A = M - 1
M = D
//call Memory.deAlloc 1
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
@LCL
M = D
@1
D = D - A
@5
D = D - A
@ARG
M = D
@Memory.deAlloc
0 ; JMP
(RET_CALL_2)
//pop temp 0
@SP
AM = M - 1
D = M
@5
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
@R14
M = D
@SP
A = M - 1
D = M
@ARG
M = D
@ARG
D = M + 1
@SP
M = D
@R14
AM = M - 1
D = M
@THAT
M = D
@R14
AM = M - 1
D = M
@THIS
M = D
@R14
AM = M - 1
D = M
@ARG
M = D
@R14
AM = M - 1
D = M
@LCL
M = D
@R14
AM = M - 1
A = M
0 ; JMP
//function Keyboard.init 0
(Keyboard.init)
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
@R14
M = D
@SP
A = M - 1
D = M
@ARG
M = D
@ARG
D = M + 1
@SP
M = D
@R14
AM = M - 1
D = M
@THAT
M = D
@R14
AM = M - 1
D = M
@THIS
M = D
@R14
AM = M - 1
D = M
@ARG
M = D
@R14
AM = M - 1
D = M
@LCL
M = D
@R14
AM = M - 1
A = M
0 ; JMP
//function Keyboard.keyPressed 0
(Keyboard.keyPressed)
//push constant 24576
@24576
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Memory.peek 1
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
@LCL
M = D
@1
D = D - A
@5
D = D - A
@ARG
M = D
@Memory.peek
0 ; JMP
(RET_CALL_3)
//return
@LCL
D = M
@R14
M = D
@SP
A = M - 1
D = M
@ARG
M = D
@ARG
D = M + 1
@SP
M = D
@R14
AM = M - 1
D = M
@THAT
M = D
@R14
AM = M - 1
D = M
@THIS
M = D
@R14
AM = M - 1
D = M
@ARG
M = D
@R14
AM = M - 1
D = M
@LCL
M = D
@R14
AM = M - 1
A = M
0 ; JMP
//function Keyboard.readChar 2
(Keyboard.readChar)
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
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.printChar 1
@RET_CALL_4
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
@LCL
M = D
@1
D = D - A
@5
D = D - A
@ARG
M = D
@Output.printChar
0 ; JMP
(RET_CALL_4)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//label WHILE_EXP0
(Keyboard.readChar$WHILE_EXP0)
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
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//eq
@eq_end1
D = A
@R15
M = D
@eq_command
0 ; JMP
(eq_end1)
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
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//gt
@gt_end2
D = A
@R15
M = D
@gt_command
0 ; JMP
(gt_end2)
//or
@SP
AM = M - 1
D = M
@SP
AM = M - 1
D = D | M
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
//if-goto WHILE_END0
@SP
AM = M - 1
D = M
@Keyboard.readChar$WHILE_END0
D ; JNE
//call Keyboard.keyPressed 0
@RET_CALL_5
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
@LCL
M = D
@0
D = D - A
@5
D = D - A
@ARG
M = D
@Keyboard.keyPressed
0 ; JMP
(RET_CALL_5)
//pop local 0
@LCL
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
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//gt
@gt_end3
D = A
@R15
M = D
@gt_command
0 ; JMP
(gt_end3)
//if-goto IF_TRUE0
@SP
AM = M - 1
D = M
@Keyboard.readChar$IF_TRUE0
D ; JNE
//goto IF_FALSE0
@Keyboard.readChar$IF_FALSE0
0 ; JMP
//label IF_TRUE0
(Keyboard.readChar$IF_TRUE0)
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
//pop local 1
@LCL
D = M
@1
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//label IF_FALSE0
(Keyboard.readChar$IF_FALSE0)
//goto WHILE_EXP0
@Keyboard.readChar$WHILE_EXP0
0 ; JMP
//label WHILE_END0
(Keyboard.readChar$WHILE_END0)
//call String.backSpace 0
@RET_CALL_6
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
@LCL
M = D
@0
D = D - A
@5
D = D - A
@ARG
M = D
@String.backSpace
0 ; JMP
(RET_CALL_6)
//call Output.printChar 1
@RET_CALL_7
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
@LCL
M = D
@1
D = D - A
@5
D = D - A
@ARG
M = D
@Output.printChar
0 ; JMP
(RET_CALL_7)
//pop temp 0
@SP
AM = M - 1
D = M
@5
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
//call Output.printChar 1
@RET_CALL_8
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
@LCL
M = D
@1
D = D - A
@5
D = D - A
@ARG
M = D
@Output.printChar
0 ; JMP
(RET_CALL_8)
//pop temp 0
@SP
AM = M - 1
D = M
@5
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
//return
@LCL
D = M
@R14
M = D
@SP
A = M - 1
D = M
@ARG
M = D
@ARG
D = M + 1
@SP
M = D
@R14
AM = M - 1
D = M
@THAT
M = D
@R14
AM = M - 1
D = M
@THIS
M = D
@R14
AM = M - 1
D = M
@ARG
M = D
@R14
AM = M - 1
D = M
@LCL
M = D
@R14
AM = M - 1
A = M
0 ; JMP
//function Keyboard.readLine 5
(Keyboard.readLine)
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
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 80
@80
D = A
@SP
M = M + 1
A = M - 1
M = D
//call String.new 1
@RET_CALL_9
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
@LCL
M = D
@1
D = D - A
@5
D = D - A
@ARG
M = D
@String.new
0 ; JMP
(RET_CALL_9)
//pop local 3
@LCL
D = M
@3
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
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
//call Output.printString 1
@RET_CALL_10
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
@LCL
M = D
@1
D = D - A
@5
D = D - A
@ARG
M = D
@Output.printString
0 ; JMP
(RET_CALL_10)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//call String.newLine 0
@RET_CALL_11
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
@LCL
M = D
@0
D = D - A
@5
D = D - A
@ARG
M = D
@String.newLine
0 ; JMP
(RET_CALL_11)
//pop local 1
@LCL
D = M
@1
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//call String.backSpace 0
@RET_CALL_12
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
@LCL
M = D
@0
D = D - A
@5
D = D - A
@ARG
M = D
@String.backSpace
0 ; JMP
(RET_CALL_12)
//pop local 2
@LCL
D = M
@2
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//label WHILE_EXP0
(Keyboard.readLine$WHILE_EXP0)
//push local 4
@4
D = A
@LCL
A = D + M
D = M
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
//not
@SP
AM = M - 1
D = !M
@SP
M = M + 1
A = M - 1
M = D
//if-goto WHILE_END0
@SP
AM = M - 1
D = M
@Keyboard.readLine$WHILE_END0
D ; JNE
//call Keyboard.readChar 0
@RET_CALL_13
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
@LCL
M = D
@0
D = D - A
@5
D = D - A
@ARG
M = D
@Keyboard.readChar
0 ; JMP
(RET_CALL_13)
//pop local 0
@LCL
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
//eq
@eq_end4
D = A
@R15
M = D
@eq_command
0 ; JMP
(eq_end4)
//pop local 4
@LCL
D = M
@4
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//push local 4
@4
D = A
@LCL
A = D + M
D = M
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
//if-goto IF_TRUE0
@SP
AM = M - 1
D = M
@Keyboard.readLine$IF_TRUE0
D ; JNE
//goto IF_FALSE0
@Keyboard.readLine$IF_FALSE0
0 ; JMP
//label IF_TRUE0
(Keyboard.readLine$IF_TRUE0)
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
//push local 2
@2
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//eq
@eq_end5
D = A
@R15
M = D
@eq_command
0 ; JMP
(eq_end5)
//if-goto IF_TRUE1
@SP
AM = M - 1
D = M
@Keyboard.readLine$IF_TRUE1
D ; JNE
//goto IF_FALSE1
@Keyboard.readLine$IF_FALSE1
0 ; JMP
//label IF_TRUE1
(Keyboard.readLine$IF_TRUE1)
//push local 3
@3
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//call String.eraseLastChar 1
@RET_CALL_14
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
@LCL
M = D
@1
D = D - A
@5
D = D - A
@ARG
M = D
@String.eraseLastChar
0 ; JMP
(RET_CALL_14)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//goto IF_END1
@Keyboard.readLine$IF_END1
0 ; JMP
//label IF_FALSE1
(Keyboard.readLine$IF_FALSE1)
//push local 3
@3
D = A
@LCL
A = D + M
D = M
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
//call String.appendChar 2
@RET_CALL_15
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
@LCL
M = D
@2
D = D - A
@5
D = D - A
@ARG
M = D
@String.appendChar
0 ; JMP
(RET_CALL_15)
//pop local 3
@LCL
D = M
@3
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//label IF_END1
(Keyboard.readLine$IF_END1)
//label IF_FALSE0
(Keyboard.readLine$IF_FALSE0)
//goto WHILE_EXP0
@Keyboard.readLine$WHILE_EXP0
0 ; JMP
//label WHILE_END0
(Keyboard.readLine$WHILE_END0)
//push local 3
@3
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//return
@LCL
D = M
@R14
M = D
@SP
A = M - 1
D = M
@ARG
M = D
@ARG
D = M + 1
@SP
M = D
@R14
AM = M - 1
D = M
@THAT
M = D
@R14
AM = M - 1
D = M
@THIS
M = D
@R14
AM = M - 1
D = M
@ARG
M = D
@R14
AM = M - 1
D = M
@LCL
M = D
@R14
AM = M - 1
A = M
0 ; JMP
//function Keyboard.readInt 2
(Keyboard.readInt)
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
//call Keyboard.readLine 1
@RET_CALL_16
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
@LCL
M = D
@1
D = D - A
@5
D = D - A
@ARG
M = D
@Keyboard.readLine
0 ; JMP
(RET_CALL_16)
//pop local 0
@LCL
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
//call String.intValue 1
@RET_CALL_17
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
@LCL
M = D
@1
D = D - A
@5
D = D - A
@ARG
M = D
@String.intValue
0 ; JMP
(RET_CALL_17)
//pop local 1
@LCL
D = M
@1
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
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
//call String.dispose 1
@RET_CALL_18
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
@LCL
M = D
@1
D = D - A
@5
D = D - A
@ARG
M = D
@String.dispose
0 ; JMP
(RET_CALL_18)
//pop temp 0
@SP
AM = M - 1
D = M
@5
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
//return
@LCL
D = M
@R14
M = D
@SP
A = M - 1
D = M
@ARG
M = D
@ARG
D = M + 1
@SP
M = D
@R14
AM = M - 1
D = M
@THAT
M = D
@R14
AM = M - 1
D = M
@THIS
M = D
@R14
AM = M - 1
D = M
@ARG
M = D
@R14
AM = M - 1
D = M
@LCL
M = D
@R14
AM = M - 1
A = M
0 ; JMP
//function Math.init 1
(Math.init)
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Array.new 1
@RET_CALL_19
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
@LCL
M = D
@1
D = D - A
@5
D = D - A
@ARG
M = D
@Array.new
0 ; JMP
(RET_CALL_19)
//pop static 1
@SP
AM = M - 1
D = M
@Math.1
M = D
//push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Array.new 1
@RET_CALL_20
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
@LCL
M = D
@1
D = D - A
@5
D = D - A
@ARG
M = D
@Array.new
0 ; JMP
(RET_CALL_20)
//pop static 0
@SP
AM = M - 1
D = M
@Math.0
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push static 0
@Math.0
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
//push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push temp 0
@5
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop that 0
@THAT
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
//label WHILE_EXP0
(Math.init$WHILE_EXP0)
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
//push constant 15
@15
D = A
@SP
M = M + 1
A = M - 1
M = D
//lt
@lt_end6
D = A
@R15
M = D
@lt_command
0 ; JMP
(lt_end6)
//not
@SP
AM = M - 1
D = !M
@SP
M = M + 1
A = M - 1
M = D
//if-goto WHILE_END0
@SP
AM = M - 1
D = M
@Math.init$WHILE_END0
D ; JNE
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
//push constant 1
@1
D = A
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
//pop local 0
@LCL
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
//push static 0
@Math.0
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
//push static 0
@Math.0
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
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push that 0
@0
D = A
@THAT
A = D + M
D = M
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
//push static 0
@Math.0
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
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push that 0
@0
D = A
@THAT
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
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push temp 0
@5
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop that 0
@THAT
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
//goto WHILE_EXP0
@Math.init$WHILE_EXP0
0 ; JMP
//label WHILE_END0
(Math.init$WHILE_END0)
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
@R14
M = D
@SP
A = M - 1
D = M
@ARG
M = D
@ARG
D = M + 1
@SP
M = D
@R14
AM = M - 1
D = M
@THAT
M = D
@R14
AM = M - 1
D = M
@THIS
M = D
@R14
AM = M - 1
D = M
@ARG
M = D
@R14
AM = M - 1
D = M
@LCL
M = D
@R14
AM = M - 1
A = M
0 ; JMP
//function Math.abs 0
(Math.abs)
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
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//lt
@lt_end7
D = A
@R15
M = D
@lt_command
0 ; JMP
(lt_end7)
//if-goto IF_TRUE0
@SP
AM = M - 1
D = M
@Math.abs$IF_TRUE0
D ; JNE
//goto IF_FALSE0
@Math.abs$IF_FALSE0
0 ; JMP
//label IF_TRUE0
(Math.abs$IF_TRUE0)
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
//neg
@SP
AM = M - 1
D = -M
@SP
M = M + 1
A = M - 1
M = D
//pop argument 0
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
//label IF_FALSE0
(Math.abs$IF_FALSE0)
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
@LCL
D = M
@R14
M = D
@SP
A = M - 1
D = M
@ARG
M = D
@ARG
D = M + 1
@SP
M = D
@R14
AM = M - 1
D = M
@THAT
M = D
@R14
AM = M - 1
D = M
@THIS
M = D
@R14
AM = M - 1
D = M
@ARG
M = D
@R14
AM = M - 1
D = M
@LCL
M = D
@R14
AM = M - 1
A = M
0 ; JMP
//function Math.multiply 5
(Math.multiply)
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
@0
D = A
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
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//lt
@lt_end8
D = A
@R15
M = D
@lt_command
0 ; JMP
(lt_end8)
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
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//gt
@gt_end9
D = A
@R15
M = D
@gt_command
0 ; JMP
(gt_end9)
//and
@SP
AM = M - 1
D = M
@SP
AM = M - 1
D = D & M
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
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//gt
@gt_end10
D = A
@R15
M = D
@gt_command
0 ; JMP
(gt_end10)
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
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//lt
@lt_end11
D = A
@R15
M = D
@lt_command
0 ; JMP
(lt_end11)
//and
@SP
AM = M - 1
D = M
@SP
AM = M - 1
D = D & M
@SP
M = M + 1
A = M - 1
M = D
//or
@SP
AM = M - 1
D = M
@SP
AM = M - 1
D = D | M
@SP
M = M + 1
A = M - 1
M = D
//pop local 4
@LCL
D = M
@4
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
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
//call Math.abs 1
@RET_CALL_21
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
@LCL
M = D
@1
D = D - A
@5
D = D - A
@ARG
M = D
@Math.abs
0 ; JMP
(RET_CALL_21)
//pop argument 0
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
//call Math.abs 1
@RET_CALL_22
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
@LCL
M = D
@1
D = D - A
@5
D = D - A
@ARG
M = D
@Math.abs
0 ; JMP
(RET_CALL_22)
//pop argument 1
@ARG
D = M
@1
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
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
//lt
@lt_end12
D = A
@R15
M = D
@lt_command
0 ; JMP
(lt_end12)
//if-goto IF_TRUE0
@SP
AM = M - 1
D = M
@Math.multiply$IF_TRUE0
D ; JNE
//goto IF_FALSE0
@Math.multiply$IF_FALSE0
0 ; JMP
//label IF_TRUE0
(Math.multiply$IF_TRUE0)
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
//pop local 1
@LCL
D = M
@1
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
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
//pop argument 0
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
//pop argument 1
@ARG
D = M
@1
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//label IF_FALSE0
(Math.multiply$IF_FALSE0)
//label WHILE_EXP0
(Math.multiply$WHILE_EXP0)
//push local 2
@2
D = A
@LCL
A = D + M
D = M
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
//lt
@lt_end13
D = A
@R15
M = D
@lt_command
0 ; JMP
(lt_end13)
//not
@SP
AM = M - 1
D = !M
@SP
M = M + 1
A = M - 1
M = D
//if-goto WHILE_END0
@SP
AM = M - 1
D = M
@Math.multiply$WHILE_END0
D ; JNE
//push local 3
@3
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//push static 0
@Math.0
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
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push that 0
@0
D = A
@THAT
A = D + M
D = M
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
//and
@SP
AM = M - 1
D = M
@SP
AM = M - 1
D = D & M
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//gt
@gt_end14
D = A
@R15
M = D
@gt_command
0 ; JMP
(gt_end14)
//if-goto IF_TRUE1
@SP
AM = M - 1
D = M
@Math.multiply$IF_TRUE1
D ; JNE
//goto IF_FALSE1
@Math.multiply$IF_FALSE1
0 ; JMP
//label IF_TRUE1
(Math.multiply$IF_TRUE1)
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
//pop local 0
@LCL
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
//push local 2
@2
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//push local 3
@3
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//push static 0
@Math.0
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
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push that 0
@0
D = A
@THAT
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
//pop local 2
@LCL
D = M
@2
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//label IF_FALSE1
(Math.multiply$IF_FALSE1)
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
//pop argument 0
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
//push local 3
@3
D = A
@LCL
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
//pop local 3
@LCL
D = M
@3
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//goto WHILE_EXP0
@Math.multiply$WHILE_EXP0
0 ; JMP
//label WHILE_END0
(Math.multiply$WHILE_END0)
//push local 4
@4
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//if-goto IF_TRUE2
@SP
AM = M - 1
D = M
@Math.multiply$IF_TRUE2
D ; JNE
//goto IF_FALSE2
@Math.multiply$IF_FALSE2
0 ; JMP
//label IF_TRUE2
(Math.multiply$IF_TRUE2)
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
//neg
@SP
AM = M - 1
D = -M
@SP
M = M + 1
A = M - 1
M = D
//pop local 0
@LCL
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
//label IF_FALSE2
(Math.multiply$IF_FALSE2)
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
//return
@LCL
D = M
@R14
M = D
@SP
A = M - 1
D = M
@ARG
M = D
@ARG
D = M + 1
@SP
M = D
@R14
AM = M - 1
D = M
@THAT
M = D
@R14
AM = M - 1
D = M
@THIS
M = D
@R14
AM = M - 1
D = M
@ARG
M = D
@R14
AM = M - 1
D = M
@LCL
M = D
@R14
AM = M - 1
A = M
0 ; JMP
//function Math.divide 4
(Math.divide)
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
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//eq
@eq_end15
D = A
@R15
M = D
@eq_command
0 ; JMP
(eq_end15)
//if-goto IF_TRUE0
@SP
AM = M - 1
D = M
@Math.divide$IF_TRUE0
D ; JNE
//goto IF_FALSE0
@Math.divide$IF_FALSE0
0 ; JMP
//label IF_TRUE0
(Math.divide$IF_TRUE0)
//push constant 3
@3
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Sys.error 1
@RET_CALL_23
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
@LCL
M = D
@1
D = D - A
@5
D = D - A
@ARG
M = D
@Sys.error
0 ; JMP
(RET_CALL_23)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//label IF_FALSE0
(Math.divide$IF_FALSE0)
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
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//lt
@lt_end16
D = A
@R15
M = D
@lt_command
0 ; JMP
(lt_end16)
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
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//gt
@gt_end17
D = A
@R15
M = D
@gt_command
0 ; JMP
(gt_end17)
//and
@SP
AM = M - 1
D = M
@SP
AM = M - 1
D = D & M
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
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//gt
@gt_end18
D = A
@R15
M = D
@gt_command
0 ; JMP
(gt_end18)
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
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//lt
@lt_end19
D = A
@R15
M = D
@lt_command
0 ; JMP
(lt_end19)
//and
@SP
AM = M - 1
D = M
@SP
AM = M - 1
D = D & M
@SP
M = M + 1
A = M - 1
M = D
//or
@SP
AM = M - 1
D = M
@SP
AM = M - 1
D = D | M
@SP
M = M + 1
A = M - 1
M = D
//pop local 2
@LCL
D = M
@2
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push static 1
@Math.1
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
//call Math.abs 1
@RET_CALL_24
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
@LCL
M = D
@1
D = D - A
@5
D = D - A
@ARG
M = D
@Math.abs
0 ; JMP
(RET_CALL_24)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push temp 0
@5
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop that 0
@THAT
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
//call Math.abs 1
@RET_CALL_25
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
@LCL
M = D
@1
D = D - A
@5
D = D - A
@ARG
M = D
@Math.abs
0 ; JMP
(RET_CALL_25)
//pop argument 0
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
//label WHILE_EXP0
(Math.divide$WHILE_EXP0)
//push local 3
@3
D = A
@LCL
A = D + M
D = M
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
//not
@SP
AM = M - 1
D = !M
@SP
M = M + 1
A = M - 1
M = D
//if-goto WHILE_END0
@SP
AM = M - 1
D = M
@Math.divide$WHILE_END0
D ; JNE
//push constant 32767
@32767
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
//push static 1
@Math.1
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
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push that 0
@0
D = A
@THAT
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
//push static 1
@Math.1
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
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push that 0
@0
D = A
@THAT
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//lt
@lt_end20
D = A
@R15
M = D
@lt_command
0 ; JMP
(lt_end20)
//pop local 3
@LCL
D = M
@3
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//push local 3
@3
D = A
@LCL
A = D + M
D = M
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
//if-goto IF_TRUE1
@SP
AM = M - 1
D = M
@Math.divide$IF_TRUE1
D ; JNE
//goto IF_FALSE1
@Math.divide$IF_FALSE1
0 ; JMP
//label IF_TRUE1
(Math.divide$IF_TRUE1)
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
//push constant 1
@1
D = A
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
//push static 1
@Math.1
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
//push static 1
@Math.1
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
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push that 0
@0
D = A
@THAT
A = D + M
D = M
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
//push static 1
@Math.1
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
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push that 0
@0
D = A
@THAT
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
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push temp 0
@5
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop that 0
@THAT
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
//push constant 1
@1
D = A
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
//push static 1
@Math.1
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
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push that 0
@0
D = A
@THAT
A = D + M
D = M
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
//gt
@gt_end21
D = A
@R15
M = D
@gt_command
0 ; JMP
(gt_end21)
//pop local 3
@LCL
D = M
@3
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//push local 3
@3
D = A
@LCL
A = D + M
D = M
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
//if-goto IF_TRUE2
@SP
AM = M - 1
D = M
@Math.divide$IF_TRUE2
D ; JNE
//goto IF_FALSE2
@Math.divide$IF_FALSE2
0 ; JMP
//label IF_TRUE2
(Math.divide$IF_TRUE2)
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
//push constant 1
@1
D = A
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
//pop local 0
@LCL
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
//label IF_FALSE2
(Math.divide$IF_FALSE2)
//label IF_FALSE1
(Math.divide$IF_FALSE1)
//goto WHILE_EXP0
@Math.divide$WHILE_EXP0
0 ; JMP
//label WHILE_END0
(Math.divide$WHILE_END0)
//label WHILE_EXP1
(Math.divide$WHILE_EXP1)
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
//push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
//neg
@SP
AM = M - 1
D = -M
@SP
M = M + 1
A = M - 1
M = D
//gt
@gt_end22
D = A
@R15
M = D
@gt_command
0 ; JMP
(gt_end22)
//not
@SP
AM = M - 1
D = !M
@SP
M = M + 1
A = M - 1
M = D
//if-goto WHILE_END1
@SP
AM = M - 1
D = M
@Math.divide$WHILE_END1
D ; JNE
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
//push static 1
@Math.1
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
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push that 0
@0
D = A
@THAT
A = D + M
D = M
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
//gt
@gt_end23
D = A
@R15
M = D
@gt_command
0 ; JMP
(gt_end23)
//not
@SP
AM = M - 1
D = !M
@SP
M = M + 1
A = M - 1
M = D
//if-goto IF_TRUE3
@SP
AM = M - 1
D = M
@Math.divide$IF_TRUE3
D ; JNE
//goto IF_FALSE3
@Math.divide$IF_FALSE3
0 ; JMP
//label IF_TRUE3
(Math.divide$IF_TRUE3)
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
//push static 0
@Math.0
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
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push that 0
@0
D = A
@THAT
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
//pop local 1
@LCL
D = M
@1
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
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
//push static 1
@Math.1
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
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push that 0
@0
D = A
@THAT
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
//pop argument 0
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
//label IF_FALSE3
(Math.divide$IF_FALSE3)
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
//pop local 0
@LCL
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
//goto WHILE_EXP1
@Math.divide$WHILE_EXP1
0 ; JMP
//label WHILE_END1
(Math.divide$WHILE_END1)
//push local 2
@2
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//if-goto IF_TRUE4
@SP
AM = M - 1
D = M
@Math.divide$IF_TRUE4
D ; JNE
//goto IF_FALSE4
@Math.divide$IF_FALSE4
0 ; JMP
//label IF_TRUE4
(Math.divide$IF_TRUE4)
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
//neg
@SP
AM = M - 1
D = -M
@SP
M = M + 1
A = M - 1
M = D
//pop local 1
@LCL
D = M
@1
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//label IF_FALSE4
(Math.divide$IF_FALSE4)
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
//return
@LCL
D = M
@R14
M = D
@SP
A = M - 1
D = M
@ARG
M = D
@ARG
D = M + 1
@SP
M = D
@R14
AM = M - 1
D = M
@THAT
M = D
@R14
AM = M - 1
D = M
@THIS
M = D
@R14
AM = M - 1
D = M
@ARG
M = D
@R14
AM = M - 1
D = M
@LCL
M = D
@R14
AM = M - 1
A = M
0 ; JMP
//function Math.sqrt 4
(Math.sqrt)
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
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//lt
@lt_end24
D = A
@R15
M = D
@lt_command
0 ; JMP
(lt_end24)
//if-goto IF_TRUE0
@SP
AM = M - 1
D = M
@Math.sqrt$IF_TRUE0
D ; JNE
//goto IF_FALSE0
@Math.sqrt$IF_FALSE0
0 ; JMP
//label IF_TRUE0
(Math.sqrt$IF_TRUE0)
//push constant 4
@4
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Sys.error 1
@RET_CALL_26
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
@LCL
M = D
@1
D = D - A
@5
D = D - A
@ARG
M = D
@Sys.error
0 ; JMP
(RET_CALL_26)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//label IF_FALSE0
(Math.sqrt$IF_FALSE0)
//push constant 7
@7
D = A
@SP
M = M + 1
A = M - 1
M = D
//pop local 0
@LCL
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
//label WHILE_EXP0
(Math.sqrt$WHILE_EXP0)
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
//push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
//neg
@SP
AM = M - 1
D = -M
@SP
M = M + 1
A = M - 1
M = D
//gt
@gt_end25
D = A
@R15
M = D
@gt_command
0 ; JMP
(gt_end25)
//not
@SP
AM = M - 1
D = !M
@SP
M = M + 1
A = M - 1
M = D
//if-goto WHILE_END0
@SP
AM = M - 1
D = M
@Math.sqrt$WHILE_END0
D ; JNE
//push local 3
@3
D = A
@LCL
A = D + M
D = M
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
//push static 0
@Math.0
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
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push that 0
@0
D = A
@THAT
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
//pop local 1
@LCL
D = M
@1
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
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
//call Math.multiply 2
@RET_CALL_27
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
@LCL
M = D
@2
D = D - A
@5
D = D - A
@ARG
M = D
@Math.multiply
0 ; JMP
(RET_CALL_27)
//pop local 2
@LCL
D = M
@2
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//push local 2
@2
D = A
@LCL
A = D + M
D = M
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
//gt
@gt_end26
D = A
@R15
M = D
@gt_command
0 ; JMP
(gt_end26)
//not
@SP
AM = M - 1
D = !M
@SP
M = M + 1
A = M - 1
M = D
//push local 2
@2
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//lt
@lt_end27
D = A
@R15
M = D
@lt_command
0 ; JMP
(lt_end27)
//not
@SP
AM = M - 1
D = !M
@SP
M = M + 1
A = M - 1
M = D
//and
@SP
AM = M - 1
D = M
@SP
AM = M - 1
D = D & M
@SP
M = M + 1
A = M - 1
M = D
//if-goto IF_TRUE1
@SP
AM = M - 1
D = M
@Math.sqrt$IF_TRUE1
D ; JNE
//goto IF_FALSE1
@Math.sqrt$IF_FALSE1
0 ; JMP
//label IF_TRUE1
(Math.sqrt$IF_TRUE1)
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
//pop local 3
@LCL
D = M
@3
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//label IF_FALSE1
(Math.sqrt$IF_FALSE1)
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
//pop local 0
@LCL
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
//goto WHILE_EXP0
@Math.sqrt$WHILE_EXP0
0 ; JMP
//label WHILE_END0
(Math.sqrt$WHILE_END0)
//push local 3
@3
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//return
@LCL
D = M
@R14
M = D
@SP
A = M - 1
D = M
@ARG
M = D
@ARG
D = M + 1
@SP
M = D
@R14
AM = M - 1
D = M
@THAT
M = D
@R14
AM = M - 1
D = M
@THIS
M = D
@R14
AM = M - 1
D = M
@ARG
M = D
@R14
AM = M - 1
D = M
@LCL
M = D
@R14
AM = M - 1
A = M
0 ; JMP
//function Math.max 0
(Math.max)
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
//gt
@gt_end28
D = A
@R15
M = D
@gt_command
0 ; JMP
(gt_end28)
//if-goto IF_TRUE0
@SP
AM = M - 1
D = M
@Math.max$IF_TRUE0
D ; JNE
//goto IF_FALSE0
@Math.max$IF_FALSE0
0 ; JMP
//label IF_TRUE0
(Math.max$IF_TRUE0)
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
//pop argument 1
@ARG
D = M
@1
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//label IF_FALSE0
(Math.max$IF_FALSE0)
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
//return
@LCL
D = M
@R14
M = D
@SP
A = M - 1
D = M
@ARG
M = D
@ARG
D = M + 1
@SP
M = D
@R14
AM = M - 1
D = M
@THAT
M = D
@R14
AM = M - 1
D = M
@THIS
M = D
@R14
AM = M - 1
D = M
@ARG
M = D
@R14
AM = M - 1
D = M
@LCL
M = D
@R14
AM = M - 1
A = M
0 ; JMP
//function Math.min 0
(Math.min)
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
//lt
@lt_end29
D = A
@R15
M = D
@lt_command
0 ; JMP
(lt_end29)
//if-goto IF_TRUE0
@SP
AM = M - 1
D = M
@Math.min$IF_TRUE0
D ; JNE
//goto IF_FALSE0
@Math.min$IF_FALSE0
0 ; JMP
//label IF_TRUE0
(Math.min$IF_TRUE0)
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
//pop argument 1
@ARG
D = M
@1
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//label IF_FALSE0
(Math.min$IF_FALSE0)
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
//return
@LCL
D = M
@R14
M = D
@SP
A = M - 1
D = M
@ARG
M = D
@ARG
D = M + 1
@SP
M = D
@R14
AM = M - 1
D = M
@THAT
M = D
@R14
AM = M - 1
D = M
@THIS
M = D
@R14
AM = M - 1
D = M
@ARG
M = D
@R14
AM = M - 1
D = M
@LCL
M = D
@R14
AM = M - 1
A = M
0 ; JMP
//function Memory.init 0
(Memory.init)
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//pop static 0
@SP
AM = M - 1
D = M
@Memory.0
M = D
//push constant 2048
@2048
D = A
@SP
M = M + 1
A = M - 1
M = D
//push static 0
@Memory.0
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
//push constant 14334
@14334
D = A
@SP
M = M + 1
A = M - 1
M = D
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push temp 0
@5
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop that 0
@THAT
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
//push constant 2049
@2049
D = A
@SP
M = M + 1
A = M - 1
M = D
//push static 0
@Memory.0
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
//push constant 2050
@2050
D = A
@SP
M = M + 1
A = M - 1
M = D
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push temp 0
@5
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop that 0
@THAT
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
@R14
M = D
@SP
A = M - 1
D = M
@ARG
M = D
@ARG
D = M + 1
@SP
M = D
@R14
AM = M - 1
D = M
@THAT
M = D
@R14
AM = M - 1
D = M
@THIS
M = D
@R14
AM = M - 1
D = M
@ARG
M = D
@R14
AM = M - 1
D = M
@LCL
M = D
@R14
AM = M - 1
A = M
0 ; JMP
//function Memory.peek 0
(Memory.peek)
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
//push static 0
@Memory.0
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
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push that 0
@0
D = A
@THAT
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//return
@LCL
D = M
@R14
M = D
@SP
A = M - 1
D = M
@ARG
M = D
@ARG
D = M + 1
@SP
M = D
@R14
AM = M - 1
D = M
@THAT
M = D
@R14
AM = M - 1
D = M
@THIS
M = D
@R14
AM = M - 1
D = M
@ARG
M = D
@R14
AM = M - 1
D = M
@LCL
M = D
@R14
AM = M - 1
A = M
0 ; JMP
//function Memory.poke 0
(Memory.poke)
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
//push static 0
@Memory.0
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
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push temp 0
@5
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop that 0
@THAT
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
@R14
M = D
@SP
A = M - 1
D = M
@ARG
M = D
@ARG
D = M + 1
@SP
M = D
@R14
AM = M - 1
D = M
@THAT
M = D
@R14
AM = M - 1
D = M
@THIS
M = D
@R14
AM = M - 1
D = M
@ARG
M = D
@R14
AM = M - 1
D = M
@LCL
M = D
@R14
AM = M - 1
A = M
0 ; JMP
//function Memory.alloc 1
(Memory.alloc)
@0
D = A
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
//push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
//lt
@lt_end30
D = A
@R15
M = D
@lt_command
0 ; JMP
(lt_end30)
//if-goto IF_TRUE0
@SP
AM = M - 1
D = M
@Memory.alloc$IF_TRUE0
D ; JNE
//goto IF_FALSE0
@Memory.alloc$IF_FALSE0
0 ; JMP
//label IF_TRUE0
(Memory.alloc$IF_TRUE0)
//push constant 5
@5
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Sys.error 1
@RET_CALL_28
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
@LCL
M = D
@1
D = D - A
@5
D = D - A
@ARG
M = D
@Sys.error
0 ; JMP
(RET_CALL_28)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//label IF_FALSE0
(Memory.alloc$IF_FALSE0)
//push constant 2048
@2048
D = A
@SP
M = M + 1
A = M - 1
M = D
//pop local 0
@LCL
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
//label WHILE_EXP0
(Memory.alloc$WHILE_EXP0)
//push constant 0
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
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push that 0
@0
D = A
@THAT
A = D + M
D = M
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
//lt
@lt_end31
D = A
@R15
M = D
@lt_command
0 ; JMP
(lt_end31)
//not
@SP
AM = M - 1
D = !M
@SP
M = M + 1
A = M - 1
M = D
//if-goto WHILE_END0
@SP
AM = M - 1
D = M
@Memory.alloc$WHILE_END0
D ; JNE
//push constant 1
@1
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
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push that 0
@0
D = A
@THAT
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop local 0
@LCL
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
//goto WHILE_EXP0
@Memory.alloc$WHILE_EXP0
0 ; JMP
//label WHILE_END0
(Memory.alloc$WHILE_END0)
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
//push constant 16379
@16379
D = A
@SP
M = M + 1
A = M - 1
M = D
//gt
@gt_end32
D = A
@R15
M = D
@gt_command
0 ; JMP
(gt_end32)
//if-goto IF_TRUE1
@SP
AM = M - 1
D = M
@Memory.alloc$IF_TRUE1
D ; JNE
//goto IF_FALSE1
@Memory.alloc$IF_FALSE1
0 ; JMP
//label IF_TRUE1
(Memory.alloc$IF_TRUE1)
//push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Sys.error 1
@RET_CALL_29
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
@LCL
M = D
@1
D = D - A
@5
D = D - A
@ARG
M = D
@Sys.error
0 ; JMP
(RET_CALL_29)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//label IF_FALSE1
(Memory.alloc$IF_FALSE1)
//push constant 0
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
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push that 0
@0
D = A
@THAT
A = D + M
D = M
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
//push constant 2
@2
D = A
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
//gt
@gt_end33
D = A
@R15
M = D
@gt_command
0 ; JMP
(gt_end33)
//if-goto IF_TRUE2
@SP
AM = M - 1
D = M
@Memory.alloc$IF_TRUE2
D ; JNE
//goto IF_FALSE2
@Memory.alloc$IF_FALSE2
0 ; JMP
//label IF_TRUE2
(Memory.alloc$IF_TRUE2)
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
//push constant 0
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
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push that 0
@0
D = A
@THAT
A = D + M
D = M
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
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push temp 0
@5
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop that 0
@THAT
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
//push constant 1
@1
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
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push that 0
@0
D = A
@THAT
A = D + M
D = M
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
//push constant 2
@2
D = A
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
//eq
@eq_end34
D = A
@R15
M = D
@eq_command
0 ; JMP
(eq_end34)
//if-goto IF_TRUE3
@SP
AM = M - 1
D = M
@Memory.alloc$IF_TRUE3
D ; JNE
//goto IF_FALSE3
@Memory.alloc$IF_FALSE3
0 ; JMP
//label IF_TRUE3
(Memory.alloc$IF_TRUE3)
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
//push constant 3
@3
D = A
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
//push constant 4
@4
D = A
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
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push temp 0
@5
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop that 0
@THAT
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
//goto IF_END3
@Memory.alloc$IF_END3
0 ; JMP
//label IF_FALSE3
(Memory.alloc$IF_FALSE3)
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
//push constant 3
@3
D = A
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
//push constant 1
@1
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
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push that 0
@0
D = A
@THAT
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push temp 0
@5
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop that 0
@THAT
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
//label IF_END3
(Memory.alloc$IF_END3)
//push constant 1
@1
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
//push constant 2
@2
D = A
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
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push temp 0
@5
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop that 0
@THAT
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
//label IF_FALSE2
(Memory.alloc$IF_FALSE2)
//push constant 0
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
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push temp 0
@5
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop that 0
@THAT
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
//push constant 2
@2
D = A
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
//return
@LCL
D = M
@R14
M = D
@SP
A = M - 1
D = M
@ARG
M = D
@ARG
D = M + 1
@SP
M = D
@R14
AM = M - 1
D = M
@THAT
M = D
@R14
AM = M - 1
D = M
@THIS
M = D
@R14
AM = M - 1
D = M
@ARG
M = D
@R14
AM = M - 1
D = M
@LCL
M = D
@R14
AM = M - 1
A = M
0 ; JMP
//function Memory.deAlloc 2
(Memory.deAlloc)
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
//pop local 0
@LCL
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
//push constant 1
@1
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
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push that 0
@0
D = A
@THAT
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop local 1
@LCL
D = M
@1
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//push constant 0
@0
D = A
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
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push that 0
@0
D = A
@THAT
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//eq
@eq_end35
D = A
@R15
M = D
@eq_command
0 ; JMP
(eq_end35)
//if-goto IF_TRUE0
@SP
AM = M - 1
D = M
@Memory.deAlloc$IF_TRUE0
D ; JNE
//goto IF_FALSE0
@Memory.deAlloc$IF_FALSE0
0 ; JMP
//label IF_TRUE0
(Memory.deAlloc$IF_TRUE0)
//push constant 0
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
//push constant 1
@1
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
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push that 0
@0
D = A
@THAT
A = D + M
D = M
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
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push temp 0
@5
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop that 0
@THAT
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
//goto IF_END0
@Memory.deAlloc$IF_END0
0 ; JMP
//label IF_FALSE0
(Memory.deAlloc$IF_FALSE0)
//push constant 0
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
//push constant 1
@1
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
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push that 0
@0
D = A
@THAT
A = D + M
D = M
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
//push constant 0
@0
D = A
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
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push that 0
@0
D = A
@THAT
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
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push temp 0
@5
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop that 0
@THAT
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
//push constant 1
@1
D = A
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
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push that 0
@0
D = A
@THAT
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
//push constant 2
@2
D = A
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
//eq
@eq_end36
D = A
@R15
M = D
@eq_command
0 ; JMP
(eq_end36)
//if-goto IF_TRUE1
@SP
AM = M - 1
D = M
@Memory.deAlloc$IF_TRUE1
D ; JNE
//goto IF_FALSE1
@Memory.deAlloc$IF_FALSE1
0 ; JMP
//label IF_TRUE1
(Memory.deAlloc$IF_TRUE1)
//push constant 1
@1
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
//push constant 2
@2
D = A
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
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push temp 0
@5
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop that 0
@THAT
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
//goto IF_END1
@Memory.deAlloc$IF_END1
0 ; JMP
//label IF_FALSE1
(Memory.deAlloc$IF_FALSE1)
//push constant 1
@1
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
//push constant 1
@1
D = A
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
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push that 0
@0
D = A
@THAT
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push temp 0
@5
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop that 0
@THAT
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
//label IF_END1
(Memory.deAlloc$IF_END1)
//label IF_END0
(Memory.deAlloc$IF_END0)
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
@R14
M = D
@SP
A = M - 1
D = M
@ARG
M = D
@ARG
D = M + 1
@SP
M = D
@R14
AM = M - 1
D = M
@THAT
M = D
@R14
AM = M - 1
D = M
@THIS
M = D
@R14
AM = M - 1
D = M
@ARG
M = D
@R14
AM = M - 1
D = M
@LCL
M = D
@R14
AM = M - 1
A = M
0 ; JMP
//function Output.init 0
(Output.init)
//push constant 16384
@16384
D = A
@SP
M = M + 1
A = M - 1
M = D
//pop static 4
@SP
AM = M - 1
D = M
@Output.4
M = D
//push constant 0
@0
D = A
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
//pop static 2
@SP
AM = M - 1
D = M
@Output.2
M = D
//push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
//pop static 1
@SP
AM = M - 1
D = M
@Output.1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//pop static 0
@SP
AM = M - 1
D = M
@Output.0
M = D
//push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
//call String.new 1
@RET_CALL_30
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
@LCL
M = D
@1
D = D - A
@5
D = D - A
@ARG
M = D
@String.new
0 ; JMP
(RET_CALL_30)
//pop static 3
@SP
AM = M - 1
D = M
@Output.3
M = D
//call Output.initMap 0
@RET_CALL_31
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
@LCL
M = D
@0
D = D - A
@5
D = D - A
@ARG
M = D
@Output.initMap
0 ; JMP
(RET_CALL_31)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//call Output.createShiftedMap 0
@RET_CALL_32
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
@LCL
M = D
@0
D = D - A
@5
D = D - A
@ARG
M = D
@Output.createShiftedMap
0 ; JMP
(RET_CALL_32)
//pop temp 0
@SP
AM = M - 1
D = M
@5
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
@R14
M = D
@SP
A = M - 1
D = M
@ARG
M = D
@ARG
D = M + 1
@SP
M = D
@R14
AM = M - 1
D = M
@THAT
M = D
@R14
AM = M - 1
D = M
@THIS
M = D
@R14
AM = M - 1
D = M
@ARG
M = D
@R14
AM = M - 1
D = M
@LCL
M = D
@R14
AM = M - 1
A = M
0 ; JMP
//function Output.initMap 0
(Output.initMap)
//push constant 127
@127
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Array.new 1
@RET_CALL_33
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
@LCL
M = D
@1
D = D - A
@5
D = D - A
@ARG
M = D
@Array.new
0 ; JMP
(RET_CALL_33)
//pop static 5
@SP
AM = M - 1
D = M
@Output.5
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_34
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_34)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_35
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_35)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 33
@33
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_36
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_36)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 34
@34
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 54
@54
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 54
@54
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 20
@20
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_37
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_37)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 35
@35
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 18
@18
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 18
@18
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 18
@18
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 18
@18
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 18
@18
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 18
@18
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_38
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_38)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 36
@36
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 3
@3
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 48
@48
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_39
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_39)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 37
@37
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 35
@35
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 49
@49
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_40
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_40)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 38
@38
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 54
@54
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 27
@27
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 27
@27
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 27
@27
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 54
@54
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_41
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_41)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 39
@39
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_42
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_42)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 40
@40
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_43
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_43)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 41
@41
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_44
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_44)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 42
@42
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_45
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_45)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 43
@43
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_46
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_46)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 44
@44
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_47
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_47)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 45
@45
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_48
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_48)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 46
@46
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_49
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_49)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 47
@47
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 48
@48
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 3
@3
D = A
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
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_50
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_50)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 48
@48
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_51
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_51)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 49
@49
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 14
@14
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
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_52
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_52)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 50
@50
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 48
@48
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 3
@3
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_53
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_53)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 48
@48
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 48
@48
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 28
@28
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 48
@48
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 48
@48
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_54
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_54)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 52
@52
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 28
@28
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 26
@26
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 25
@25
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 60
@60
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_55
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_55)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 53
@53
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 3
@3
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 3
@3
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 31
@31
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 48
@48
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 48
@48
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 48
@48
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_56
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_56)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 54
@54
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 28
@28
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 3
@3
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 3
@3
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 31
@31
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_57
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_57)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 55
@55
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 49
@49
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 48
@48
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 48
@48
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_58
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_58)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 56
@56
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_59
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_59)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 57
@57
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 62
@62
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 48
@48
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 48
@48
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 14
@14
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_60
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_60)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 58
@58
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_61
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_61)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 59
@59
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_62
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_62)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 60
@60
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 3
@3
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_63
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_63)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 61
@61
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_64
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_64)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 62
@62
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 3
@3
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 3
@3
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_65
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_65)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 64
@64
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 59
@59
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 59
@59
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 59
@59
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 27
@27
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 3
@3
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_66
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_66)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_67
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_67)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 65
@65
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_68
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_68)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 66
@66
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 31
@31
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 31
@31
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 31
@31
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_69
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_69)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 67
@67
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 28
@28
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 54
@54
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 35
@35
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 3
@3
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 3
@3
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 3
@3
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 35
@35
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 54
@54
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 28
@28
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_70
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_70)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 68
@68
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
//push constant 27
@27
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 27
@27
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
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_71
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_71)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 69
@69
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 35
@35
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 11
@11
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
//push constant 11
@11
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 35
@35
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_72
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_72)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 70
@70
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 35
@35
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 11
@11
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
//push constant 11
@11
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 3
@3
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 3
@3
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 3
@3
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_73
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_73)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 71
@71
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 28
@28
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 54
@54
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 35
@35
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 3
@3
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 59
@59
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 54
@54
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 44
@44
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_74
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_74)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 72
@72
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_75
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_75)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 73
@73
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_76
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_76)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 74
@74
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 60
@60
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 27
@27
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 27
@27
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 14
@14
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_77
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_77)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 75
@75
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 27
@27
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
//push constant 27
@27
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_78
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_78)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 76
@76
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 3
@3
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 3
@3
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 3
@3
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 3
@3
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 3
@3
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 3
@3
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 35
@35
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_79
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_79)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 77
@77
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 33
@33
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_80
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_80)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 78
@78
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 55
@55
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 55
@55
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 59
@59
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 59
@59
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_81
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_81)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 79
@79
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_82
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_82)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 80
@80
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 31
@31
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 31
@31
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 3
@3
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 3
@3
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 3
@3
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 3
@3
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_83
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_83)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 81
@81
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 59
@59
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 48
@48
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_84
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_84)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 82
@82
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 31
@31
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 31
@31
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 27
@27
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_85
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_85)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 83
@83
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 28
@28
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 48
@48
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_86
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_86)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 84
@84
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 45
@45
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_87
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_87)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 85
@85
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_88
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_88)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 86
@86
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_89
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_89)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 87
@87
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 18
@18
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_90
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_90)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 88
@88
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_91
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_91)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 89
@89
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_92
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_92)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 90
@90
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 49
@49
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 35
@35
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_93
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_93)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 91
@91
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_94
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_94)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 92
@92
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
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
//push constant 3
@3
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 48
@48
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_95
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_95)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 93
@93
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_96
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_96)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 94
@94
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
//push constant 28
@28
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 54
@54
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_97
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_97)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 95
@95
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_98
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_98)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 96
@96
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_99
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_99)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 97
@97
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 14
@14
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 27
@27
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 27
@27
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 54
@54
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_100
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_100)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 98
@98
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 3
@3
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 3
@3
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 3
@3
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
//push constant 27
@27
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_101
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_101)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 99
@99
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 3
@3
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 3
@3
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_102
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_102)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 100
@100
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 48
@48
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 48
@48
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 48
@48
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 60
@60
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 54
@54
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_103
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_103)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 101
@101
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 3
@3
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_104
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_104)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 102
@102
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 28
@28
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 54
@54
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 38
@38
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 6
@6
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
//push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 6
@6
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
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_105
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_105)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 103
@103
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 62
@62
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 48
@48
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_106
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_106)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 104
@104
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 3
@3
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 3
@3
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 3
@3
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 27
@27
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 55
@55
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_107
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_107)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 105
@105
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 14
@14
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_108
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_108)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 106
@106
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 48
@48
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 48
@48
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 56
@56
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 48
@48
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 48
@48
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 48
@48
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 48
@48
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_109
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_109)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 107
@107
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 3
@3
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 3
@3
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 3
@3
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 27
@27
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
//push constant 15
@15
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 27
@27
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_110
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_110)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 108
@108
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 14
@14
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_111
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_111)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 109
@109
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 29
@29
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 43
@43
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 43
@43
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 43
@43
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 43
@43
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_112
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_112)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 110
@110
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 29
@29
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_113
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_113)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 111
@111
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_114
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_114)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 112
@112
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 31
@31
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 3
@3
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 3
@3
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_115
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_115)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 113
@113
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 62
@62
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 48
@48
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 48
@48
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_116
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_116)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 114
@114
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 29
@29
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 55
@55
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 3
@3
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 3
@3
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 7
@7
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_117
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_117)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 115
@115
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_118
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_118)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 116
@116
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 4
@4
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 6
@6
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
//push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 54
@54
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 28
@28
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_119
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_119)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 117
@117
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 27
@27
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 27
@27
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 27
@27
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 27
@27
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 27
@27
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 54
@54
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_120
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_120)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 118
@118
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_121
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_121)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 119
@119
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 18
@18
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_122
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_122)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 120
@120
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_123
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_123)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 121
@121
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 62
@62
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 48
@48
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 24
@24
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
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_124
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_124)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 122
@122
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 27
@27
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_125
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_125)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 123
@123
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 56
@56
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 7
@7
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 56
@56
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_126
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_126)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 124
@124
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_127
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_127)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 125
@125
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 7
@7
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 56
@56
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 7
@7
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_128
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_128)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 126
@126
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 38
@38
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 45
@45
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 25
@25
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.create 12
@RET_CALL_129
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
@LCL
M = D
@12
D = D - A
@5
D = D - A
@ARG
M = D
@Output.create
0 ; JMP
(RET_CALL_129)
//pop temp 0
@SP
AM = M - 1
D = M
@5
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
@R14
M = D
@SP
A = M - 1
D = M
@ARG
M = D
@ARG
D = M + 1
@SP
M = D
@R14
AM = M - 1
D = M
@THAT
M = D
@R14
AM = M - 1
D = M
@THIS
M = D
@R14
AM = M - 1
D = M
@ARG
M = D
@R14
AM = M - 1
D = M
@LCL
M = D
@R14
AM = M - 1
A = M
0 ; JMP
//function Output.create 1
(Output.create)
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 11
@11
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Array.new 1
@RET_CALL_130
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
@LCL
M = D
@1
D = D - A
@5
D = D - A
@ARG
M = D
@Array.new
0 ; JMP
(RET_CALL_130)
//pop local 0
@LCL
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
//push static 5
@Output.5
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
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push temp 0
@5
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop that 0
@THAT
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
//push constant 0
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
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push temp 0
@5
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop that 0
@THAT
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
//push constant 1
@1
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
//push argument 2
@2
D = A
@ARG
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push temp 0
@5
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop that 0
@THAT
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
//push constant 2
@2
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
//push argument 3
@3
D = A
@ARG
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push temp 0
@5
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop that 0
@THAT
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
//push constant 3
@3
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
//push argument 4
@4
D = A
@ARG
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push temp 0
@5
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop that 0
@THAT
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
//push constant 4
@4
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
//push argument 5
@5
D = A
@ARG
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push temp 0
@5
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop that 0
@THAT
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
//push constant 5
@5
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
//push argument 6
@6
D = A
@ARG
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push temp 0
@5
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop that 0
@THAT
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
//push constant 6
@6
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
//push argument 7
@7
D = A
@ARG
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push temp 0
@5
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop that 0
@THAT
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
//push constant 7
@7
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
//push argument 8
@8
D = A
@ARG
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push temp 0
@5
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop that 0
@THAT
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
//push constant 8
@8
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
//push argument 9
@9
D = A
@ARG
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push temp 0
@5
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop that 0
@THAT
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
//push constant 9
@9
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
//push argument 10
@10
D = A
@ARG
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push temp 0
@5
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop that 0
@THAT
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
//push constant 10
@10
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
//push argument 11
@11
D = A
@ARG
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push temp 0
@5
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop that 0
@THAT
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
@R14
M = D
@SP
A = M - 1
D = M
@ARG
M = D
@ARG
D = M + 1
@SP
M = D
@R14
AM = M - 1
D = M
@THAT
M = D
@R14
AM = M - 1
D = M
@THIS
M = D
@R14
AM = M - 1
D = M
@ARG
M = D
@R14
AM = M - 1
D = M
@LCL
M = D
@R14
AM = M - 1
A = M
0 ; JMP
//function Output.createShiftedMap 4
(Output.createShiftedMap)
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
//push constant 127
@127
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Array.new 1
@RET_CALL_131
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
@LCL
M = D
@1
D = D - A
@5
D = D - A
@ARG
M = D
@Array.new
0 ; JMP
(RET_CALL_131)
//pop static 6
@SP
AM = M - 1
D = M
@Output.6
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//pop local 2
@LCL
D = M
@2
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//label WHILE_EXP0
(Output.createShiftedMap$WHILE_EXP0)
//push local 2
@2
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//push constant 127
@127
D = A
@SP
M = M + 1
A = M - 1
M = D
//lt
@lt_end37
D = A
@R15
M = D
@lt_command
0 ; JMP
(lt_end37)
//not
@SP
AM = M - 1
D = !M
@SP
M = M + 1
A = M - 1
M = D
//if-goto WHILE_END0
@SP
AM = M - 1
D = M
@Output.createShiftedMap$WHILE_END0
D ; JNE
//push local 2
@2
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//push static 5
@Output.5
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
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push that 0
@0
D = A
@THAT
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop local 0
@LCL
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
//push constant 11
@11
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Array.new 1
@RET_CALL_132
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
@LCL
M = D
@1
D = D - A
@5
D = D - A
@ARG
M = D
@Array.new
0 ; JMP
(RET_CALL_132)
//pop local 1
@LCL
D = M
@1
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//push local 2
@2
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//push static 6
@Output.6
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
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push temp 0
@5
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop that 0
@THAT
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
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//pop local 3
@LCL
D = M
@3
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//label WHILE_EXP1
(Output.createShiftedMap$WHILE_EXP1)
//push local 3
@3
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//push constant 11
@11
D = A
@SP
M = M + 1
A = M - 1
M = D
//lt
@lt_end38
D = A
@R15
M = D
@lt_command
0 ; JMP
(lt_end38)
//not
@SP
AM = M - 1
D = !M
@SP
M = M + 1
A = M - 1
M = D
//if-goto WHILE_END1
@SP
AM = M - 1
D = M
@Output.createShiftedMap$WHILE_END1
D ; JNE
//push local 3
@3
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
//push local 3
@3
D = A
@LCL
A = D + M
D = M
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
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push that 0
@0
D = A
@THAT
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//push constant 256
@256
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Math.multiply 2
@RET_CALL_133
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
@LCL
M = D
@2
D = D - A
@5
D = D - A
@ARG
M = D
@Math.multiply
0 ; JMP
(RET_CALL_133)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push temp 0
@5
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop that 0
@THAT
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
//push local 3
@3
D = A
@LCL
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
//pop local 3
@LCL
D = M
@3
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//goto WHILE_EXP1
@Output.createShiftedMap$WHILE_EXP1
0 ; JMP
//label WHILE_END1
(Output.createShiftedMap$WHILE_END1)
//push local 2
@2
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//eq
@eq_end39
D = A
@R15
M = D
@eq_command
0 ; JMP
(eq_end39)
//if-goto IF_TRUE0
@SP
AM = M - 1
D = M
@Output.createShiftedMap$IF_TRUE0
D ; JNE
//goto IF_FALSE0
@Output.createShiftedMap$IF_FALSE0
0 ; JMP
//label IF_TRUE0
(Output.createShiftedMap$IF_TRUE0)
//push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
//pop local 2
@LCL
D = M
@2
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//goto IF_END0
@Output.createShiftedMap$IF_END0
0 ; JMP
//label IF_FALSE0
(Output.createShiftedMap$IF_FALSE0)
//push local 2
@2
D = A
@LCL
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
//pop local 2
@LCL
D = M
@2
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//label IF_END0
(Output.createShiftedMap$IF_END0)
//goto WHILE_EXP0
@Output.createShiftedMap$WHILE_EXP0
0 ; JMP
//label WHILE_END0
(Output.createShiftedMap$WHILE_END0)
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
@R14
M = D
@SP
A = M - 1
D = M
@ARG
M = D
@ARG
D = M + 1
@SP
M = D
@R14
AM = M - 1
D = M
@THAT
M = D
@R14
AM = M - 1
D = M
@THIS
M = D
@R14
AM = M - 1
D = M
@ARG
M = D
@R14
AM = M - 1
D = M
@LCL
M = D
@R14
AM = M - 1
A = M
0 ; JMP
//function Output.getMap 1
(Output.getMap)
@0
D = A
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
//push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
//lt
@lt_end40
D = A
@R15
M = D
@lt_command
0 ; JMP
(lt_end40)
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
//push constant 126
@126
D = A
@SP
M = M + 1
A = M - 1
M = D
//gt
@gt_end41
D = A
@R15
M = D
@gt_command
0 ; JMP
(gt_end41)
//or
@SP
AM = M - 1
D = M
@SP
AM = M - 1
D = D | M
@SP
M = M + 1
A = M - 1
M = D
//if-goto IF_TRUE0
@SP
AM = M - 1
D = M
@Output.getMap$IF_TRUE0
D ; JNE
//goto IF_FALSE0
@Output.getMap$IF_FALSE0
0 ; JMP
//label IF_TRUE0
(Output.getMap$IF_TRUE0)
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//pop argument 0
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
//label IF_FALSE0
(Output.getMap$IF_FALSE0)
//push static 2
@Output.2
D = M
@SP
M = M + 1
A = M - 1
M = D
//if-goto IF_TRUE1
@SP
AM = M - 1
D = M
@Output.getMap$IF_TRUE1
D ; JNE
//goto IF_FALSE1
@Output.getMap$IF_FALSE1
0 ; JMP
//label IF_TRUE1
(Output.getMap$IF_TRUE1)
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
//push static 5
@Output.5
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
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push that 0
@0
D = A
@THAT
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop local 0
@LCL
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
//goto IF_END1
@Output.getMap$IF_END1
0 ; JMP
//label IF_FALSE1
(Output.getMap$IF_FALSE1)
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
//push static 6
@Output.6
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
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push that 0
@0
D = A
@THAT
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop local 0
@LCL
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
//label IF_END1
(Output.getMap$IF_END1)
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
//return
@LCL
D = M
@R14
M = D
@SP
A = M - 1
D = M
@ARG
M = D
@ARG
D = M + 1
@SP
M = D
@R14
AM = M - 1
D = M
@THAT
M = D
@R14
AM = M - 1
D = M
@THIS
M = D
@R14
AM = M - 1
D = M
@ARG
M = D
@R14
AM = M - 1
D = M
@LCL
M = D
@R14
AM = M - 1
A = M
0 ; JMP
//function Output.drawChar 4
(Output.drawChar)
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
//call Output.getMap 1
@RET_CALL_134
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
@LCL
M = D
@1
D = D - A
@5
D = D - A
@ARG
M = D
@Output.getMap
0 ; JMP
(RET_CALL_134)
//pop local 2
@LCL
D = M
@2
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//push static 1
@Output.1
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop local 0
@LCL
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
//label WHILE_EXP0
(Output.drawChar$WHILE_EXP0)
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
//push constant 11
@11
D = A
@SP
M = M + 1
A = M - 1
M = D
//lt
@lt_end42
D = A
@R15
M = D
@lt_command
0 ; JMP
(lt_end42)
//not
@SP
AM = M - 1
D = !M
@SP
M = M + 1
A = M - 1
M = D
//if-goto WHILE_END0
@SP
AM = M - 1
D = M
@Output.drawChar$WHILE_END0
D ; JNE
//push static 2
@Output.2
D = M
@SP
M = M + 1
A = M - 1
M = D
//if-goto IF_TRUE0
@SP
AM = M - 1
D = M
@Output.drawChar$IF_TRUE0
D ; JNE
//goto IF_FALSE0
@Output.drawChar$IF_FALSE0
0 ; JMP
//label IF_TRUE0
(Output.drawChar$IF_TRUE0)
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
//push static 4
@Output.4
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
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push that 0
@0
D = A
@THAT
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//push constant 256
@256
D = A
@SP
M = M + 1
A = M - 1
M = D
//neg
@SP
AM = M - 1
D = -M
@SP
M = M + 1
A = M - 1
M = D
//and
@SP
AM = M - 1
D = M
@SP
AM = M - 1
D = D & M
@SP
M = M + 1
A = M - 1
M = D
//pop local 3
@LCL
D = M
@3
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//goto IF_END0
@Output.drawChar$IF_END0
0 ; JMP
//label IF_FALSE0
(Output.drawChar$IF_FALSE0)
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
//push static 4
@Output.4
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
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push that 0
@0
D = A
@THAT
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//push constant 255
@255
D = A
@SP
M = M + 1
A = M - 1
M = D
//and
@SP
AM = M - 1
D = M
@SP
AM = M - 1
D = D & M
@SP
M = M + 1
A = M - 1
M = D
//pop local 3
@LCL
D = M
@3
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//label IF_END0
(Output.drawChar$IF_END0)
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
//push static 4
@Output.4
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
//push local 2
@2
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
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push that 0
@0
D = A
@THAT
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//push local 3
@3
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//or
@SP
AM = M - 1
D = M
@SP
AM = M - 1
D = D | M
@SP
M = M + 1
A = M - 1
M = D
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push temp 0
@5
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop that 0
@THAT
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
//push constant 32
@32
D = A
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
//pop local 0
@LCL
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
//push constant 1
@1
D = A
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
//pop local 1
@LCL
D = M
@1
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//goto WHILE_EXP0
@Output.drawChar$WHILE_EXP0
0 ; JMP
//label WHILE_END0
(Output.drawChar$WHILE_END0)
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
@R14
M = D
@SP
A = M - 1
D = M
@ARG
M = D
@ARG
D = M + 1
@SP
M = D
@R14
AM = M - 1
D = M
@THAT
M = D
@R14
AM = M - 1
D = M
@THIS
M = D
@R14
AM = M - 1
D = M
@ARG
M = D
@R14
AM = M - 1
D = M
@LCL
M = D
@R14
AM = M - 1
A = M
0 ; JMP
//function Output.moveCursor 0
(Output.moveCursor)
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
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//lt
@lt_end43
D = A
@R15
M = D
@lt_command
0 ; JMP
(lt_end43)
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
//push constant 22
@22
D = A
@SP
M = M + 1
A = M - 1
M = D
//gt
@gt_end44
D = A
@R15
M = D
@gt_command
0 ; JMP
(gt_end44)
//or
@SP
AM = M - 1
D = M
@SP
AM = M - 1
D = D | M
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
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//lt
@lt_end45
D = A
@R15
M = D
@lt_command
0 ; JMP
(lt_end45)
//or
@SP
AM = M - 1
D = M
@SP
AM = M - 1
D = D | M
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
//push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
//gt
@gt_end46
D = A
@R15
M = D
@gt_command
0 ; JMP
(gt_end46)
//or
@SP
AM = M - 1
D = M
@SP
AM = M - 1
D = D | M
@SP
M = M + 1
A = M - 1
M = D
//if-goto IF_TRUE0
@SP
AM = M - 1
D = M
@Output.moveCursor$IF_TRUE0
D ; JNE
//goto IF_FALSE0
@Output.moveCursor$IF_FALSE0
0 ; JMP
//label IF_TRUE0
(Output.moveCursor$IF_TRUE0)
//push constant 20
@20
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Sys.error 1
@RET_CALL_135
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
@LCL
M = D
@1
D = D - A
@5
D = D - A
@ARG
M = D
@Sys.error
0 ; JMP
(RET_CALL_135)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//label IF_FALSE0
(Output.moveCursor$IF_FALSE0)
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
//push constant 2
@2
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Math.divide 2
@RET_CALL_136
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
@LCL
M = D
@2
D = D - A
@5
D = D - A
@ARG
M = D
@Math.divide
0 ; JMP
(RET_CALL_136)
//pop static 0
@SP
AM = M - 1
D = M
@Output.0
M = D
//push constant 32
@32
D = A
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
//push constant 352
@352
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Math.multiply 2
@RET_CALL_137
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
@LCL
M = D
@2
D = D - A
@5
D = D - A
@ARG
M = D
@Math.multiply
0 ; JMP
(RET_CALL_137)
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
//push static 0
@Output.0
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
//pop static 1
@SP
AM = M - 1
D = M
@Output.1
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
//push static 0
@Output.0
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
//call Math.multiply 2
@RET_CALL_138
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
@LCL
M = D
@2
D = D - A
@5
D = D - A
@ARG
M = D
@Math.multiply
0 ; JMP
(RET_CALL_138)
//eq
@eq_end47
D = A
@R15
M = D
@eq_command
0 ; JMP
(eq_end47)
//pop static 2
@SP
AM = M - 1
D = M
@Output.2
M = D
//push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.drawChar 1
@RET_CALL_139
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
@LCL
M = D
@1
D = D - A
@5
D = D - A
@ARG
M = D
@Output.drawChar
0 ; JMP
(RET_CALL_139)
//pop temp 0
@SP
AM = M - 1
D = M
@5
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
@R14
M = D
@SP
A = M - 1
D = M
@ARG
M = D
@ARG
D = M + 1
@SP
M = D
@R14
AM = M - 1
D = M
@THAT
M = D
@R14
AM = M - 1
D = M
@THIS
M = D
@R14
AM = M - 1
D = M
@ARG
M = D
@R14
AM = M - 1
D = M
@LCL
M = D
@R14
AM = M - 1
A = M
0 ; JMP
//function Output.printChar 0
(Output.printChar)
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
//call String.newLine 0
@RET_CALL_140
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
@LCL
M = D
@0
D = D - A
@5
D = D - A
@ARG
M = D
@String.newLine
0 ; JMP
(RET_CALL_140)
//eq
@eq_end48
D = A
@R15
M = D
@eq_command
0 ; JMP
(eq_end48)
//if-goto IF_TRUE0
@SP
AM = M - 1
D = M
@Output.printChar$IF_TRUE0
D ; JNE
//goto IF_FALSE0
@Output.printChar$IF_FALSE0
0 ; JMP
//label IF_TRUE0
(Output.printChar$IF_TRUE0)
//call Output.println 0
@RET_CALL_141
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
@LCL
M = D
@0
D = D - A
@5
D = D - A
@ARG
M = D
@Output.println
0 ; JMP
(RET_CALL_141)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//goto IF_END0
@Output.printChar$IF_END0
0 ; JMP
//label IF_FALSE0
(Output.printChar$IF_FALSE0)
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
//call String.backSpace 0
@RET_CALL_142
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
@LCL
M = D
@0
D = D - A
@5
D = D - A
@ARG
M = D
@String.backSpace
0 ; JMP
(RET_CALL_142)
//eq
@eq_end49
D = A
@R15
M = D
@eq_command
0 ; JMP
(eq_end49)
//if-goto IF_TRUE1
@SP
AM = M - 1
D = M
@Output.printChar$IF_TRUE1
D ; JNE
//goto IF_FALSE1
@Output.printChar$IF_FALSE1
0 ; JMP
//label IF_TRUE1
(Output.printChar$IF_TRUE1)
//call Output.backSpace 0
@RET_CALL_143
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
@LCL
M = D
@0
D = D - A
@5
D = D - A
@ARG
M = D
@Output.backSpace
0 ; JMP
(RET_CALL_143)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//goto IF_END1
@Output.printChar$IF_END1
0 ; JMP
//label IF_FALSE1
(Output.printChar$IF_FALSE1)
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
//call Output.drawChar 1
@RET_CALL_144
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
@LCL
M = D
@1
D = D - A
@5
D = D - A
@ARG
M = D
@Output.drawChar
0 ; JMP
(RET_CALL_144)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push static 2
@Output.2
D = M
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
//if-goto IF_TRUE2
@SP
AM = M - 1
D = M
@Output.printChar$IF_TRUE2
D ; JNE
//goto IF_FALSE2
@Output.printChar$IF_FALSE2
0 ; JMP
//label IF_TRUE2
(Output.printChar$IF_TRUE2)
//push static 0
@Output.0
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
//pop static 0
@SP
AM = M - 1
D = M
@Output.0
M = D
//push static 1
@Output.1
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
//pop static 1
@SP
AM = M - 1
D = M
@Output.1
M = D
//label IF_FALSE2
(Output.printChar$IF_FALSE2)
//push static 0
@Output.0
D = M
@SP
M = M + 1
A = M - 1
M = D
//push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
//eq
@eq_end50
D = A
@R15
M = D
@eq_command
0 ; JMP
(eq_end50)
//if-goto IF_TRUE3
@SP
AM = M - 1
D = M
@Output.printChar$IF_TRUE3
D ; JNE
//goto IF_FALSE3
@Output.printChar$IF_FALSE3
0 ; JMP
//label IF_TRUE3
(Output.printChar$IF_TRUE3)
//call Output.println 0
@RET_CALL_145
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
@LCL
M = D
@0
D = D - A
@5
D = D - A
@ARG
M = D
@Output.println
0 ; JMP
(RET_CALL_145)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//goto IF_END3
@Output.printChar$IF_END3
0 ; JMP
//label IF_FALSE3
(Output.printChar$IF_FALSE3)
//push static 2
@Output.2
D = M
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
//pop static 2
@SP
AM = M - 1
D = M
@Output.2
M = D
//label IF_END3
(Output.printChar$IF_END3)
//label IF_END1
(Output.printChar$IF_END1)
//label IF_END0
(Output.printChar$IF_END0)
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
@R14
M = D
@SP
A = M - 1
D = M
@ARG
M = D
@ARG
D = M + 1
@SP
M = D
@R14
AM = M - 1
D = M
@THAT
M = D
@R14
AM = M - 1
D = M
@THIS
M = D
@R14
AM = M - 1
D = M
@ARG
M = D
@R14
AM = M - 1
D = M
@LCL
M = D
@R14
AM = M - 1
A = M
0 ; JMP
//function Output.printString 2
(Output.printString)
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
//call String.length 1
@RET_CALL_146
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
@LCL
M = D
@1
D = D - A
@5
D = D - A
@ARG
M = D
@String.length
0 ; JMP
(RET_CALL_146)
//pop local 1
@LCL
D = M
@1
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//label WHILE_EXP0
(Output.printString$WHILE_EXP0)
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
//lt
@lt_end51
D = A
@R15
M = D
@lt_command
0 ; JMP
(lt_end51)
//not
@SP
AM = M - 1
D = !M
@SP
M = M + 1
A = M - 1
M = D
//if-goto WHILE_END0
@SP
AM = M - 1
D = M
@Output.printString$WHILE_END0
D ; JNE
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
//call String.charAt 2
@RET_CALL_147
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
@LCL
M = D
@2
D = D - A
@5
D = D - A
@ARG
M = D
@String.charAt
0 ; JMP
(RET_CALL_147)
//call Output.printChar 1
@RET_CALL_148
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
@LCL
M = D
@1
D = D - A
@5
D = D - A
@ARG
M = D
@Output.printChar
0 ; JMP
(RET_CALL_148)
//pop temp 0
@SP
AM = M - 1
D = M
@5
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
//push constant 1
@1
D = A
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
//pop local 0
@LCL
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
//goto WHILE_EXP0
@Output.printString$WHILE_EXP0
0 ; JMP
//label WHILE_END0
(Output.printString$WHILE_END0)
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
@R14
M = D
@SP
A = M - 1
D = M
@ARG
M = D
@ARG
D = M + 1
@SP
M = D
@R14
AM = M - 1
D = M
@THAT
M = D
@R14
AM = M - 1
D = M
@THIS
M = D
@R14
AM = M - 1
D = M
@ARG
M = D
@R14
AM = M - 1
D = M
@LCL
M = D
@R14
AM = M - 1
A = M
0 ; JMP
//function Output.printInt 0
(Output.printInt)
//push static 3
@Output.3
D = M
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
//call String.setInt 2
@RET_CALL_149
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
@LCL
M = D
@2
D = D - A
@5
D = D - A
@ARG
M = D
@String.setInt
0 ; JMP
(RET_CALL_149)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push static 3
@Output.3
D = M
@SP
M = M + 1
A = M - 1
M = D
//call Output.printString 1
@RET_CALL_150
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
@LCL
M = D
@1
D = D - A
@5
D = D - A
@ARG
M = D
@Output.printString
0 ; JMP
(RET_CALL_150)
//pop temp 0
@SP
AM = M - 1
D = M
@5
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
@R14
M = D
@SP
A = M - 1
D = M
@ARG
M = D
@ARG
D = M + 1
@SP
M = D
@R14
AM = M - 1
D = M
@THAT
M = D
@R14
AM = M - 1
D = M
@THIS
M = D
@R14
AM = M - 1
D = M
@ARG
M = D
@R14
AM = M - 1
D = M
@LCL
M = D
@R14
AM = M - 1
A = M
0 ; JMP
//function Output.println 0
(Output.println)
//push static 1
@Output.1
D = M
@SP
M = M + 1
A = M - 1
M = D
//push constant 352
@352
D = A
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
//push static 0
@Output.0
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
//pop static 1
@SP
AM = M - 1
D = M
@Output.1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//pop static 0
@SP
AM = M - 1
D = M
@Output.0
M = D
//push constant 0
@0
D = A
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
//pop static 2
@SP
AM = M - 1
D = M
@Output.2
M = D
//push static 1
@Output.1
D = M
@SP
M = M + 1
A = M - 1
M = D
//push constant 8128
@8128
D = A
@SP
M = M + 1
A = M - 1
M = D
//eq
@eq_end52
D = A
@R15
M = D
@eq_command
0 ; JMP
(eq_end52)
//if-goto IF_TRUE0
@SP
AM = M - 1
D = M
@Output.println$IF_TRUE0
D ; JNE
//goto IF_FALSE0
@Output.println$IF_FALSE0
0 ; JMP
//label IF_TRUE0
(Output.println$IF_TRUE0)
//push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
//pop static 1
@SP
AM = M - 1
D = M
@Output.1
M = D
//label IF_FALSE0
(Output.println$IF_FALSE0)
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
@R14
M = D
@SP
A = M - 1
D = M
@ARG
M = D
@ARG
D = M + 1
@SP
M = D
@R14
AM = M - 1
D = M
@THAT
M = D
@R14
AM = M - 1
D = M
@THIS
M = D
@R14
AM = M - 1
D = M
@ARG
M = D
@R14
AM = M - 1
D = M
@LCL
M = D
@R14
AM = M - 1
A = M
0 ; JMP
//function Output.backSpace 0
(Output.backSpace)
//push static 2
@Output.2
D = M
@SP
M = M + 1
A = M - 1
M = D
//if-goto IF_TRUE0
@SP
AM = M - 1
D = M
@Output.backSpace$IF_TRUE0
D ; JNE
//goto IF_FALSE0
@Output.backSpace$IF_FALSE0
0 ; JMP
//label IF_TRUE0
(Output.backSpace$IF_TRUE0)
//push static 0
@Output.0
D = M
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//gt
@gt_end53
D = A
@R15
M = D
@gt_command
0 ; JMP
(gt_end53)
//if-goto IF_TRUE1
@SP
AM = M - 1
D = M
@Output.backSpace$IF_TRUE1
D ; JNE
//goto IF_FALSE1
@Output.backSpace$IF_FALSE1
0 ; JMP
//label IF_TRUE1
(Output.backSpace$IF_TRUE1)
//push static 0
@Output.0
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
//pop static 0
@SP
AM = M - 1
D = M
@Output.0
M = D
//push static 1
@Output.1
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
//pop static 1
@SP
AM = M - 1
D = M
@Output.1
M = D
//goto IF_END1
@Output.backSpace$IF_END1
0 ; JMP
//label IF_FALSE1
(Output.backSpace$IF_FALSE1)
//push constant 31
@31
D = A
@SP
M = M + 1
A = M - 1
M = D
//pop static 0
@SP
AM = M - 1
D = M
@Output.0
M = D
//push static 1
@Output.1
D = M
@SP
M = M + 1
A = M - 1
M = D
//push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
//eq
@eq_end54
D = A
@R15
M = D
@eq_command
0 ; JMP
(eq_end54)
//if-goto IF_TRUE2
@SP
AM = M - 1
D = M
@Output.backSpace$IF_TRUE2
D ; JNE
//goto IF_FALSE2
@Output.backSpace$IF_FALSE2
0 ; JMP
//label IF_TRUE2
(Output.backSpace$IF_TRUE2)
//push constant 8128
@8128
D = A
@SP
M = M + 1
A = M - 1
M = D
//pop static 1
@SP
AM = M - 1
D = M
@Output.1
M = D
//label IF_FALSE2
(Output.backSpace$IF_FALSE2)
//push static 1
@Output.1
D = M
@SP
M = M + 1
A = M - 1
M = D
//push constant 321
@321
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
//pop static 1
@SP
AM = M - 1
D = M
@Output.1
M = D
//label IF_END1
(Output.backSpace$IF_END1)
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//pop static 2
@SP
AM = M - 1
D = M
@Output.2
M = D
//goto IF_END0
@Output.backSpace$IF_END0
0 ; JMP
//label IF_FALSE0
(Output.backSpace$IF_FALSE0)
//push constant 0
@0
D = A
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
//pop static 2
@SP
AM = M - 1
D = M
@Output.2
M = D
//label IF_END0
(Output.backSpace$IF_END0)
//push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.drawChar 1
@RET_CALL_151
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
@LCL
M = D
@1
D = D - A
@5
D = D - A
@ARG
M = D
@Output.drawChar
0 ; JMP
(RET_CALL_151)
//pop temp 0
@SP
AM = M - 1
D = M
@5
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
@R14
M = D
@SP
A = M - 1
D = M
@ARG
M = D
@ARG
D = M + 1
@SP
M = D
@R14
AM = M - 1
D = M
@THAT
M = D
@R14
AM = M - 1
D = M
@THIS
M = D
@R14
AM = M - 1
D = M
@ARG
M = D
@R14
AM = M - 1
D = M
@LCL
M = D
@R14
AM = M - 1
A = M
0 ; JMP
//function Screen.init 1
(Screen.init)
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 16384
@16384
D = A
@SP
M = M + 1
A = M - 1
M = D
//pop static 1
@SP
AM = M - 1
D = M
@Screen.1
M = D
//push constant 0
@0
D = A
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
//pop static 2
@SP
AM = M - 1
D = M
@Screen.2
M = D
//push constant 17
@17
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Array.new 1
@RET_CALL_152
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
@LCL
M = D
@1
D = D - A
@5
D = D - A
@ARG
M = D
@Array.new
0 ; JMP
(RET_CALL_152)
//pop static 0
@SP
AM = M - 1
D = M
@Screen.0
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push static 0
@Screen.0
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
//push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push temp 0
@5
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop that 0
@THAT
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
//label WHILE_EXP0
(Screen.init$WHILE_EXP0)
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
//push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
//lt
@lt_end55
D = A
@R15
M = D
@lt_command
0 ; JMP
(lt_end55)
//not
@SP
AM = M - 1
D = !M
@SP
M = M + 1
A = M - 1
M = D
//if-goto WHILE_END0
@SP
AM = M - 1
D = M
@Screen.init$WHILE_END0
D ; JNE
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
//push constant 1
@1
D = A
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
//pop local 0
@LCL
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
//push static 0
@Screen.0
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
//push static 0
@Screen.0
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
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push that 0
@0
D = A
@THAT
A = D + M
D = M
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
//push static 0
@Screen.0
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
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push that 0
@0
D = A
@THAT
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
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push temp 0
@5
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop that 0
@THAT
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
//goto WHILE_EXP0
@Screen.init$WHILE_EXP0
0 ; JMP
//label WHILE_END0
(Screen.init$WHILE_END0)
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
@R14
M = D
@SP
A = M - 1
D = M
@ARG
M = D
@ARG
D = M + 1
@SP
M = D
@R14
AM = M - 1
D = M
@THAT
M = D
@R14
AM = M - 1
D = M
@THIS
M = D
@R14
AM = M - 1
D = M
@ARG
M = D
@R14
AM = M - 1
D = M
@LCL
M = D
@R14
AM = M - 1
A = M
0 ; JMP
//function Screen.clearScreen 1
(Screen.clearScreen)
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//label WHILE_EXP0
(Screen.clearScreen$WHILE_EXP0)
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
//push constant 8192
@8192
D = A
@SP
M = M + 1
A = M - 1
M = D
//lt
@lt_end56
D = A
@R15
M = D
@lt_command
0 ; JMP
(lt_end56)
//not
@SP
AM = M - 1
D = !M
@SP
M = M + 1
A = M - 1
M = D
//if-goto WHILE_END0
@SP
AM = M - 1
D = M
@Screen.clearScreen$WHILE_END0
D ; JNE
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
//push static 1
@Screen.1
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
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push temp 0
@5
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop that 0
@THAT
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
//push constant 1
@1
D = A
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
//pop local 0
@LCL
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
//goto WHILE_EXP0
@Screen.clearScreen$WHILE_EXP0
0 ; JMP
//label WHILE_END0
(Screen.clearScreen$WHILE_END0)
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
@R14
M = D
@SP
A = M - 1
D = M
@ARG
M = D
@ARG
D = M + 1
@SP
M = D
@R14
AM = M - 1
D = M
@THAT
M = D
@R14
AM = M - 1
D = M
@THIS
M = D
@R14
AM = M - 1
D = M
@ARG
M = D
@R14
AM = M - 1
D = M
@LCL
M = D
@R14
AM = M - 1
A = M
0 ; JMP
//function Screen.updateLocation 0
(Screen.updateLocation)
//push static 2
@Screen.2
D = M
@SP
M = M + 1
A = M - 1
M = D
//if-goto IF_TRUE0
@SP
AM = M - 1
D = M
@Screen.updateLocation$IF_TRUE0
D ; JNE
//goto IF_FALSE0
@Screen.updateLocation$IF_FALSE0
0 ; JMP
//label IF_TRUE0
(Screen.updateLocation$IF_TRUE0)
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
//push static 1
@Screen.1
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
//push static 1
@Screen.1
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
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push that 0
@0
D = A
@THAT
A = D + M
D = M
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
//or
@SP
AM = M - 1
D = M
@SP
AM = M - 1
D = D | M
@SP
M = M + 1
A = M - 1
M = D
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push temp 0
@5
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop that 0
@THAT
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
//goto IF_END0
@Screen.updateLocation$IF_END0
0 ; JMP
//label IF_FALSE0
(Screen.updateLocation$IF_FALSE0)
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
//push static 1
@Screen.1
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
//push static 1
@Screen.1
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
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push that 0
@0
D = A
@THAT
A = D + M
D = M
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
//not
@SP
AM = M - 1
D = !M
@SP
M = M + 1
A = M - 1
M = D
//and
@SP
AM = M - 1
D = M
@SP
AM = M - 1
D = D & M
@SP
M = M + 1
A = M - 1
M = D
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push temp 0
@5
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop that 0
@THAT
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
//label IF_END0
(Screen.updateLocation$IF_END0)
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
@R14
M = D
@SP
A = M - 1
D = M
@ARG
M = D
@ARG
D = M + 1
@SP
M = D
@R14
AM = M - 1
D = M
@THAT
M = D
@R14
AM = M - 1
D = M
@THIS
M = D
@R14
AM = M - 1
D = M
@ARG
M = D
@R14
AM = M - 1
D = M
@LCL
M = D
@R14
AM = M - 1
A = M
0 ; JMP
//function Screen.setColor 0
(Screen.setColor)
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
//pop static 2
@SP
AM = M - 1
D = M
@Screen.2
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
@R14
M = D
@SP
A = M - 1
D = M
@ARG
M = D
@ARG
D = M + 1
@SP
M = D
@R14
AM = M - 1
D = M
@THAT
M = D
@R14
AM = M - 1
D = M
@THIS
M = D
@R14
AM = M - 1
D = M
@ARG
M = D
@R14
AM = M - 1
D = M
@LCL
M = D
@R14
AM = M - 1
A = M
0 ; JMP
//function Screen.drawPixel 3
(Screen.drawPixel)
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
@0
D = A
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
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//lt
@lt_end57
D = A
@R15
M = D
@lt_command
0 ; JMP
(lt_end57)
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
//push constant 511
@511
D = A
@SP
M = M + 1
A = M - 1
M = D
//gt
@gt_end58
D = A
@R15
M = D
@gt_command
0 ; JMP
(gt_end58)
//or
@SP
AM = M - 1
D = M
@SP
AM = M - 1
D = D | M
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
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//lt
@lt_end59
D = A
@R15
M = D
@lt_command
0 ; JMP
(lt_end59)
//or
@SP
AM = M - 1
D = M
@SP
AM = M - 1
D = D | M
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
//push constant 255
@255
D = A
@SP
M = M + 1
A = M - 1
M = D
//gt
@gt_end60
D = A
@R15
M = D
@gt_command
0 ; JMP
(gt_end60)
//or
@SP
AM = M - 1
D = M
@SP
AM = M - 1
D = D | M
@SP
M = M + 1
A = M - 1
M = D
//if-goto IF_TRUE0
@SP
AM = M - 1
D = M
@Screen.drawPixel$IF_TRUE0
D ; JNE
//goto IF_FALSE0
@Screen.drawPixel$IF_FALSE0
0 ; JMP
//label IF_TRUE0
(Screen.drawPixel$IF_TRUE0)
//push constant 7
@7
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Sys.error 1
@RET_CALL_153
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
@LCL
M = D
@1
D = D - A
@5
D = D - A
@ARG
M = D
@Sys.error
0 ; JMP
(RET_CALL_153)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//label IF_FALSE0
(Screen.drawPixel$IF_FALSE0)
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
//push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Math.divide 2
@RET_CALL_154
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
@LCL
M = D
@2
D = D - A
@5
D = D - A
@ARG
M = D
@Math.divide
0 ; JMP
(RET_CALL_154)
//pop local 0
@LCL
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
//push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Math.multiply 2
@RET_CALL_155
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
@LCL
M = D
@2
D = D - A
@5
D = D - A
@ARG
M = D
@Math.multiply
0 ; JMP
(RET_CALL_155)
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
//pop local 1
@LCL
D = M
@1
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
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
//push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Math.multiply 2
@RET_CALL_156
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
@LCL
M = D
@2
D = D - A
@5
D = D - A
@ARG
M = D
@Math.multiply
0 ; JMP
(RET_CALL_156)
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
//pop local 2
@LCL
D = M
@2
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//push local 2
@2
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
//push static 0
@Screen.0
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
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push that 0
@0
D = A
@THAT
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//call Screen.updateLocation 2
@RET_CALL_157
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
@LCL
M = D
@2
D = D - A
@5
D = D - A
@ARG
M = D
@Screen.updateLocation
0 ; JMP
(RET_CALL_157)
//pop temp 0
@SP
AM = M - 1
D = M
@5
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
@R14
M = D
@SP
A = M - 1
D = M
@ARG
M = D
@ARG
D = M + 1
@SP
M = D
@R14
AM = M - 1
D = M
@THAT
M = D
@R14
AM = M - 1
D = M
@THIS
M = D
@R14
AM = M - 1
D = M
@ARG
M = D
@R14
AM = M - 1
D = M
@LCL
M = D
@R14
AM = M - 1
A = M
0 ; JMP
//function Screen.drawConditional 0
(Screen.drawConditional)
//push argument 2
@2
D = A
@ARG
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//if-goto IF_TRUE0
@SP
AM = M - 1
D = M
@Screen.drawConditional$IF_TRUE0
D ; JNE
//goto IF_FALSE0
@Screen.drawConditional$IF_FALSE0
0 ; JMP
//label IF_TRUE0
(Screen.drawConditional$IF_TRUE0)
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
//call Screen.drawPixel 2
@RET_CALL_158
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
@LCL
M = D
@2
D = D - A
@5
D = D - A
@ARG
M = D
@Screen.drawPixel
0 ; JMP
(RET_CALL_158)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//goto IF_END0
@Screen.drawConditional$IF_END0
0 ; JMP
//label IF_FALSE0
(Screen.drawConditional$IF_FALSE0)
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
//call Screen.drawPixel 2
@RET_CALL_159
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
@LCL
M = D
@2
D = D - A
@5
D = D - A
@ARG
M = D
@Screen.drawPixel
0 ; JMP
(RET_CALL_159)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//label IF_END0
(Screen.drawConditional$IF_END0)
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
@R14
M = D
@SP
A = M - 1
D = M
@ARG
M = D
@ARG
D = M + 1
@SP
M = D
@R14
AM = M - 1
D = M
@THAT
M = D
@R14
AM = M - 1
D = M
@THIS
M = D
@R14
AM = M - 1
D = M
@ARG
M = D
@R14
AM = M - 1
D = M
@LCL
M = D
@R14
AM = M - 1
A = M
0 ; JMP
//function Screen.drawLine 11
(Screen.drawLine)
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
@0
D = A
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
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//lt
@lt_end61
D = A
@R15
M = D
@lt_command
0 ; JMP
(lt_end61)
//push argument 2
@2
D = A
@ARG
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//push constant 511
@511
D = A
@SP
M = M + 1
A = M - 1
M = D
//gt
@gt_end62
D = A
@R15
M = D
@gt_command
0 ; JMP
(gt_end62)
//or
@SP
AM = M - 1
D = M
@SP
AM = M - 1
D = D | M
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
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//lt
@lt_end63
D = A
@R15
M = D
@lt_command
0 ; JMP
(lt_end63)
//or
@SP
AM = M - 1
D = M
@SP
AM = M - 1
D = D | M
@SP
M = M + 1
A = M - 1
M = D
//push argument 3
@3
D = A
@ARG
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//push constant 255
@255
D = A
@SP
M = M + 1
A = M - 1
M = D
//gt
@gt_end64
D = A
@R15
M = D
@gt_command
0 ; JMP
(gt_end64)
//or
@SP
AM = M - 1
D = M
@SP
AM = M - 1
D = D | M
@SP
M = M + 1
A = M - 1
M = D
//if-goto IF_TRUE0
@SP
AM = M - 1
D = M
@Screen.drawLine$IF_TRUE0
D ; JNE
//goto IF_FALSE0
@Screen.drawLine$IF_FALSE0
0 ; JMP
//label IF_TRUE0
(Screen.drawLine$IF_TRUE0)
//push constant 8
@8
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Sys.error 1
@RET_CALL_160
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
@LCL
M = D
@1
D = D - A
@5
D = D - A
@ARG
M = D
@Sys.error
0 ; JMP
(RET_CALL_160)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//label IF_FALSE0
(Screen.drawLine$IF_FALSE0)
//push argument 2
@2
D = A
@ARG
A = D + M
D = M
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
//call Math.abs 1
@RET_CALL_161
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
@LCL
M = D
@1
D = D - A
@5
D = D - A
@ARG
M = D
@Math.abs
0 ; JMP
(RET_CALL_161)
//pop local 3
@LCL
D = M
@3
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//push argument 3
@3
D = A
@ARG
A = D + M
D = M
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
//call Math.abs 1
@RET_CALL_162
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
@LCL
M = D
@1
D = D - A
@5
D = D - A
@ARG
M = D
@Math.abs
0 ; JMP
(RET_CALL_162)
//pop local 2
@LCL
D = M
@2
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//push local 3
@3
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//push local 2
@2
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//lt
@lt_end65
D = A
@R15
M = D
@lt_command
0 ; JMP
(lt_end65)
//pop local 6
@LCL
D = M
@6
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//push local 6
@6
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//push argument 3
@3
D = A
@ARG
A = D + M
D = M
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
//lt
@lt_end66
D = A
@R15
M = D
@lt_command
0 ; JMP
(lt_end66)
//and
@SP
AM = M - 1
D = M
@SP
AM = M - 1
D = D & M
@SP
M = M + 1
A = M - 1
M = D
//push local 6
@6
D = A
@LCL
A = D + M
D = M
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
//push argument 2
@2
D = A
@ARG
A = D + M
D = M
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
//lt
@lt_end67
D = A
@R15
M = D
@lt_command
0 ; JMP
(lt_end67)
//and
@SP
AM = M - 1
D = M
@SP
AM = M - 1
D = D & M
@SP
M = M + 1
A = M - 1
M = D
//or
@SP
AM = M - 1
D = M
@SP
AM = M - 1
D = D | M
@SP
M = M + 1
A = M - 1
M = D
//if-goto IF_TRUE1
@SP
AM = M - 1
D = M
@Screen.drawLine$IF_TRUE1
D ; JNE
//goto IF_FALSE1
@Screen.drawLine$IF_FALSE1
0 ; JMP
//label IF_TRUE1
(Screen.drawLine$IF_TRUE1)
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
//pop local 4
@LCL
D = M
@4
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//push argument 2
@2
D = A
@ARG
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop argument 0
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
//push local 4
@4
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop argument 2
@ARG
D = M
@2
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
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
//pop local 4
@LCL
D = M
@4
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//push argument 3
@3
D = A
@ARG
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop argument 1
@ARG
D = M
@1
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//push local 4
@4
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop argument 3
@ARG
D = M
@3
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//label IF_FALSE1
(Screen.drawLine$IF_FALSE1)
//push local 6
@6
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//if-goto IF_TRUE2
@SP
AM = M - 1
D = M
@Screen.drawLine$IF_TRUE2
D ; JNE
//goto IF_FALSE2
@Screen.drawLine$IF_FALSE2
0 ; JMP
//label IF_TRUE2
(Screen.drawLine$IF_TRUE2)
//push local 3
@3
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop local 4
@LCL
D = M
@4
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//push local 2
@2
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop local 3
@LCL
D = M
@3
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//push local 4
@4
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop local 2
@LCL
D = M
@2
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
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
//pop local 1
@LCL
D = M
@1
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
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
//pop local 0
@LCL
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
//push argument 3
@3
D = A
@ARG
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop local 8
@LCL
D = M
@8
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
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
//push argument 2
@2
D = A
@ARG
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//gt
@gt_end68
D = A
@R15
M = D
@gt_command
0 ; JMP
(gt_end68)
//pop local 7
@LCL
D = M
@7
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//goto IF_END2
@Screen.drawLine$IF_END2
0 ; JMP
//label IF_FALSE2
(Screen.drawLine$IF_FALSE2)
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
//pop local 1
@LCL
D = M
@1
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
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
//pop local 0
@LCL
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
//push argument 2
@2
D = A
@ARG
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop local 8
@LCL
D = M
@8
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
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
//push argument 3
@3
D = A
@ARG
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//gt
@gt_end69
D = A
@R15
M = D
@gt_command
0 ; JMP
(gt_end69)
//pop local 7
@LCL
D = M
@7
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//label IF_END2
(Screen.drawLine$IF_END2)
//push constant 2
@2
D = A
@SP
M = M + 1
A = M - 1
M = D
//push local 2
@2
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//call Math.multiply 2
@RET_CALL_163
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
@LCL
M = D
@2
D = D - A
@5
D = D - A
@ARG
M = D
@Math.multiply
0 ; JMP
(RET_CALL_163)
//push local 3
@3
D = A
@LCL
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
//pop local 5
@LCL
D = M
@5
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//push constant 2
@2
D = A
@SP
M = M + 1
A = M - 1
M = D
//push local 2
@2
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//call Math.multiply 2
@RET_CALL_164
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
@LCL
M = D
@2
D = D - A
@5
D = D - A
@ARG
M = D
@Math.multiply
0 ; JMP
(RET_CALL_164)
//pop local 9
@LCL
D = M
@9
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//push constant 2
@2
D = A
@SP
M = M + 1
A = M - 1
M = D
//push local 2
@2
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//push local 3
@3
D = A
@LCL
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
//call Math.multiply 2
@RET_CALL_165
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
@LCL
M = D
@2
D = D - A
@5
D = D - A
@ARG
M = D
@Math.multiply
0 ; JMP
(RET_CALL_165)
//pop local 10
@LCL
D = M
@10
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
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
//push local 6
@6
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//call Screen.drawConditional 3
@RET_CALL_166
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
@LCL
M = D
@3
D = D - A
@5
D = D - A
@ARG
M = D
@Screen.drawConditional
0 ; JMP
(RET_CALL_166)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//label WHILE_EXP0
(Screen.drawLine$WHILE_EXP0)
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
//push local 8
@8
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//lt
@lt_end70
D = A
@R15
M = D
@lt_command
0 ; JMP
(lt_end70)
//not
@SP
AM = M - 1
D = !M
@SP
M = M + 1
A = M - 1
M = D
//if-goto WHILE_END0
@SP
AM = M - 1
D = M
@Screen.drawLine$WHILE_END0
D ; JNE
//push local 5
@5
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//lt
@lt_end71
D = A
@R15
M = D
@lt_command
0 ; JMP
(lt_end71)
//if-goto IF_TRUE3
@SP
AM = M - 1
D = M
@Screen.drawLine$IF_TRUE3
D ; JNE
//goto IF_FALSE3
@Screen.drawLine$IF_FALSE3
0 ; JMP
//label IF_TRUE3
(Screen.drawLine$IF_TRUE3)
//push local 5
@5
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//push local 9
@9
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
//pop local 5
@LCL
D = M
@5
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//goto IF_END3
@Screen.drawLine$IF_END3
0 ; JMP
//label IF_FALSE3
(Screen.drawLine$IF_FALSE3)
//push local 5
@5
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//push local 10
@10
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
//pop local 5
@LCL
D = M
@5
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//push local 7
@7
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//if-goto IF_TRUE4
@SP
AM = M - 1
D = M
@Screen.drawLine$IF_TRUE4
D ; JNE
//goto IF_FALSE4
@Screen.drawLine$IF_FALSE4
0 ; JMP
//label IF_TRUE4
(Screen.drawLine$IF_TRUE4)
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
//pop local 0
@LCL
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
//goto IF_END4
@Screen.drawLine$IF_END4
0 ; JMP
//label IF_FALSE4
(Screen.drawLine$IF_FALSE4)
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
//push constant 1
@1
D = A
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
//pop local 0
@LCL
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
//label IF_END4
(Screen.drawLine$IF_END4)
//label IF_END3
(Screen.drawLine$IF_END3)
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
//push constant 1
@1
D = A
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
//pop local 1
@LCL
D = M
@1
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
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
//push local 6
@6
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//call Screen.drawConditional 3
@RET_CALL_167
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
@LCL
M = D
@3
D = D - A
@5
D = D - A
@ARG
M = D
@Screen.drawConditional
0 ; JMP
(RET_CALL_167)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//goto WHILE_EXP0
@Screen.drawLine$WHILE_EXP0
0 ; JMP
//label WHILE_END0
(Screen.drawLine$WHILE_END0)
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
@R14
M = D
@SP
A = M - 1
D = M
@ARG
M = D
@ARG
D = M + 1
@SP
M = D
@R14
AM = M - 1
D = M
@THAT
M = D
@R14
AM = M - 1
D = M
@THIS
M = D
@R14
AM = M - 1
D = M
@ARG
M = D
@R14
AM = M - 1
D = M
@LCL
M = D
@R14
AM = M - 1
A = M
0 ; JMP
//function Screen.drawRectangle 9
(Screen.drawRectangle)
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
@0
D = A
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
//push argument 2
@2
D = A
@ARG
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//gt
@gt_end72
D = A
@R15
M = D
@gt_command
0 ; JMP
(gt_end72)
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
//push argument 3
@3
D = A
@ARG
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//gt
@gt_end73
D = A
@R15
M = D
@gt_command
0 ; JMP
(gt_end73)
//or
@SP
AM = M - 1
D = M
@SP
AM = M - 1
D = D | M
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
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//lt
@lt_end74
D = A
@R15
M = D
@lt_command
0 ; JMP
(lt_end74)
//or
@SP
AM = M - 1
D = M
@SP
AM = M - 1
D = D | M
@SP
M = M + 1
A = M - 1
M = D
//push argument 2
@2
D = A
@ARG
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//push constant 511
@511
D = A
@SP
M = M + 1
A = M - 1
M = D
//gt
@gt_end75
D = A
@R15
M = D
@gt_command
0 ; JMP
(gt_end75)
//or
@SP
AM = M - 1
D = M
@SP
AM = M - 1
D = D | M
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
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//lt
@lt_end76
D = A
@R15
M = D
@lt_command
0 ; JMP
(lt_end76)
//or
@SP
AM = M - 1
D = M
@SP
AM = M - 1
D = D | M
@SP
M = M + 1
A = M - 1
M = D
//push argument 3
@3
D = A
@ARG
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//push constant 255
@255
D = A
@SP
M = M + 1
A = M - 1
M = D
//gt
@gt_end77
D = A
@R15
M = D
@gt_command
0 ; JMP
(gt_end77)
//or
@SP
AM = M - 1
D = M
@SP
AM = M - 1
D = D | M
@SP
M = M + 1
A = M - 1
M = D
//if-goto IF_TRUE0
@SP
AM = M - 1
D = M
@Screen.drawRectangle$IF_TRUE0
D ; JNE
//goto IF_FALSE0
@Screen.drawRectangle$IF_FALSE0
0 ; JMP
//label IF_TRUE0
(Screen.drawRectangle$IF_TRUE0)
//push constant 9
@9
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Sys.error 1
@RET_CALL_168
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
@LCL
M = D
@1
D = D - A
@5
D = D - A
@ARG
M = D
@Sys.error
0 ; JMP
(RET_CALL_168)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//label IF_FALSE0
(Screen.drawRectangle$IF_FALSE0)
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
//push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Math.divide 2
@RET_CALL_169
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
@LCL
M = D
@2
D = D - A
@5
D = D - A
@ARG
M = D
@Math.divide
0 ; JMP
(RET_CALL_169)
//pop local 3
@LCL
D = M
@3
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
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
//push local 3
@3
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Math.multiply 2
@RET_CALL_170
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
@LCL
M = D
@2
D = D - A
@5
D = D - A
@ARG
M = D
@Math.multiply
0 ; JMP
(RET_CALL_170)
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
//pop local 7
@LCL
D = M
@7
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//push argument 2
@2
D = A
@ARG
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Math.divide 2
@RET_CALL_171
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
@LCL
M = D
@2
D = D - A
@5
D = D - A
@ARG
M = D
@Math.divide
0 ; JMP
(RET_CALL_171)
//pop local 4
@LCL
D = M
@4
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//push argument 2
@2
D = A
@ARG
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//push local 4
@4
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Math.multiply 2
@RET_CALL_172
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
@LCL
M = D
@2
D = D - A
@5
D = D - A
@ARG
M = D
@Math.multiply
0 ; JMP
(RET_CALL_172)
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
//pop local 8
@LCL
D = M
@8
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//push local 7
@7
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//push static 0
@Screen.0
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
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push that 0
@0
D = A
@THAT
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
//not
@SP
AM = M - 1
D = !M
@SP
M = M + 1
A = M - 1
M = D
//pop local 6
@LCL
D = M
@6
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//push local 8
@8
D = A
@LCL
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
//push static 0
@Screen.0
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
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push that 0
@0
D = A
@THAT
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
//pop local 5
@LCL
D = M
@5
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
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
//push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Math.multiply 2
@RET_CALL_173
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
@LCL
M = D
@2
D = D - A
@5
D = D - A
@ARG
M = D
@Math.multiply
0 ; JMP
(RET_CALL_173)
//push local 3
@3
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
//pop local 0
@LCL
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
//push local 4
@4
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//push local 3
@3
D = A
@LCL
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
//pop local 2
@LCL
D = M
@2
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//label WHILE_EXP0
(Screen.drawRectangle$WHILE_EXP0)
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
//push argument 3
@3
D = A
@ARG
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//gt
@gt_end78
D = A
@R15
M = D
@gt_command
0 ; JMP
(gt_end78)
//not
@SP
AM = M - 1
D = !M
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
//if-goto WHILE_END0
@SP
AM = M - 1
D = M
@Screen.drawRectangle$WHILE_END0
D ; JNE
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
//push local 2
@2
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
//pop local 1
@LCL
D = M
@1
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//push local 2
@2
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//eq
@eq_end79
D = A
@R15
M = D
@eq_command
0 ; JMP
(eq_end79)
//if-goto IF_TRUE1
@SP
AM = M - 1
D = M
@Screen.drawRectangle$IF_TRUE1
D ; JNE
//goto IF_FALSE1
@Screen.drawRectangle$IF_FALSE1
0 ; JMP
//label IF_TRUE1
(Screen.drawRectangle$IF_TRUE1)
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
//push local 5
@5
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//push local 6
@6
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//and
@SP
AM = M - 1
D = M
@SP
AM = M - 1
D = D & M
@SP
M = M + 1
A = M - 1
M = D
//call Screen.updateLocation 2
@RET_CALL_174
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
@LCL
M = D
@2
D = D - A
@5
D = D - A
@ARG
M = D
@Screen.updateLocation
0 ; JMP
(RET_CALL_174)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//goto IF_END1
@Screen.drawRectangle$IF_END1
0 ; JMP
//label IF_FALSE1
(Screen.drawRectangle$IF_FALSE1)
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
//push local 6
@6
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//call Screen.updateLocation 2
@RET_CALL_175
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
@LCL
M = D
@2
D = D - A
@5
D = D - A
@ARG
M = D
@Screen.updateLocation
0 ; JMP
(RET_CALL_175)
//pop temp 0
@SP
AM = M - 1
D = M
@5
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
//push constant 1
@1
D = A
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
//pop local 0
@LCL
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
//label WHILE_EXP1
(Screen.drawRectangle$WHILE_EXP1)
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
//lt
@lt_end80
D = A
@R15
M = D
@lt_command
0 ; JMP
(lt_end80)
//not
@SP
AM = M - 1
D = !M
@SP
M = M + 1
A = M - 1
M = D
//if-goto WHILE_END1
@SP
AM = M - 1
D = M
@Screen.drawRectangle$WHILE_END1
D ; JNE
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
//push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
//neg
@SP
AM = M - 1
D = -M
@SP
M = M + 1
A = M - 1
M = D
//call Screen.updateLocation 2
@RET_CALL_176
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
@LCL
M = D
@2
D = D - A
@5
D = D - A
@ARG
M = D
@Screen.updateLocation
0 ; JMP
(RET_CALL_176)
//pop temp 0
@SP
AM = M - 1
D = M
@5
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
//push constant 1
@1
D = A
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
//pop local 0
@LCL
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
//goto WHILE_EXP1
@Screen.drawRectangle$WHILE_EXP1
0 ; JMP
//label WHILE_END1
(Screen.drawRectangle$WHILE_END1)
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
//push local 5
@5
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//call Screen.updateLocation 2
@RET_CALL_177
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
@LCL
M = D
@2
D = D - A
@5
D = D - A
@ARG
M = D
@Screen.updateLocation
0 ; JMP
(RET_CALL_177)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//label IF_END1
(Screen.drawRectangle$IF_END1)
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
//push constant 1
@1
D = A
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
//pop argument 1
@ARG
D = M
@1
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
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
//push constant 32
@32
D = A
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
//push local 2
@2
D = A
@LCL
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
//pop local 0
@LCL
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
//goto WHILE_EXP0
@Screen.drawRectangle$WHILE_EXP0
0 ; JMP
//label WHILE_END0
(Screen.drawRectangle$WHILE_END0)
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
@R14
M = D
@SP
A = M - 1
D = M
@ARG
M = D
@ARG
D = M + 1
@SP
M = D
@R14
AM = M - 1
D = M
@THAT
M = D
@R14
AM = M - 1
D = M
@THIS
M = D
@R14
AM = M - 1
D = M
@ARG
M = D
@R14
AM = M - 1
D = M
@LCL
M = D
@R14
AM = M - 1
A = M
0 ; JMP
//function Screen.drawHorizontal 11
(Screen.drawHorizontal)
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
@0
D = A
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
//push argument 2
@2
D = A
@ARG
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//call Math.min 2
@RET_CALL_178
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
@LCL
M = D
@2
D = D - A
@5
D = D - A
@ARG
M = D
@Math.min
0 ; JMP
(RET_CALL_178)
//pop local 7
@LCL
D = M
@7
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
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
//push argument 2
@2
D = A
@ARG
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//call Math.max 2
@RET_CALL_179
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
@LCL
M = D
@2
D = D - A
@5
D = D - A
@ARG
M = D
@Math.max
0 ; JMP
(RET_CALL_179)
//pop local 8
@LCL
D = M
@8
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
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
//push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
//neg
@SP
AM = M - 1
D = -M
@SP
M = M + 1
A = M - 1
M = D
//gt
@gt_end81
D = A
@R15
M = D
@gt_command
0 ; JMP
(gt_end81)
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
//push constant 256
@256
D = A
@SP
M = M + 1
A = M - 1
M = D
//lt
@lt_end82
D = A
@R15
M = D
@lt_command
0 ; JMP
(lt_end82)
//and
@SP
AM = M - 1
D = M
@SP
AM = M - 1
D = D & M
@SP
M = M + 1
A = M - 1
M = D
//push local 7
@7
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//push constant 512
@512
D = A
@SP
M = M + 1
A = M - 1
M = D
//lt
@lt_end83
D = A
@R15
M = D
@lt_command
0 ; JMP
(lt_end83)
//and
@SP
AM = M - 1
D = M
@SP
AM = M - 1
D = D & M
@SP
M = M + 1
A = M - 1
M = D
//push local 8
@8
D = A
@LCL
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
//neg
@SP
AM = M - 1
D = -M
@SP
M = M + 1
A = M - 1
M = D
//gt
@gt_end84
D = A
@R15
M = D
@gt_command
0 ; JMP
(gt_end84)
//and
@SP
AM = M - 1
D = M
@SP
AM = M - 1
D = D & M
@SP
M = M + 1
A = M - 1
M = D
//if-goto IF_TRUE0
@SP
AM = M - 1
D = M
@Screen.drawHorizontal$IF_TRUE0
D ; JNE
//goto IF_FALSE0
@Screen.drawHorizontal$IF_FALSE0
0 ; JMP
//label IF_TRUE0
(Screen.drawHorizontal$IF_TRUE0)
//push local 7
@7
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Math.max 2
@RET_CALL_180
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
@LCL
M = D
@2
D = D - A
@5
D = D - A
@ARG
M = D
@Math.max
0 ; JMP
(RET_CALL_180)
//pop local 7
@LCL
D = M
@7
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//push local 8
@8
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//push constant 511
@511
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Math.min 2
@RET_CALL_181
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
@LCL
M = D
@2
D = D - A
@5
D = D - A
@ARG
M = D
@Math.min
0 ; JMP
(RET_CALL_181)
//pop local 8
@LCL
D = M
@8
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//push local 7
@7
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Math.divide 2
@RET_CALL_182
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
@LCL
M = D
@2
D = D - A
@5
D = D - A
@ARG
M = D
@Math.divide
0 ; JMP
(RET_CALL_182)
//pop local 1
@LCL
D = M
@1
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//push local 7
@7
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
//push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Math.multiply 2
@RET_CALL_183
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
@LCL
M = D
@2
D = D - A
@5
D = D - A
@ARG
M = D
@Math.multiply
0 ; JMP
(RET_CALL_183)
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
//pop local 9
@LCL
D = M
@9
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//push local 8
@8
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Math.divide 2
@RET_CALL_184
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
@LCL
M = D
@2
D = D - A
@5
D = D - A
@ARG
M = D
@Math.divide
0 ; JMP
(RET_CALL_184)
//pop local 2
@LCL
D = M
@2
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//push local 8
@8
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//push local 2
@2
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Math.multiply 2
@RET_CALL_185
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
@LCL
M = D
@2
D = D - A
@5
D = D - A
@ARG
M = D
@Math.multiply
0 ; JMP
(RET_CALL_185)
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
//pop local 10
@LCL
D = M
@10
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//push local 9
@9
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//push static 0
@Screen.0
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
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push that 0
@0
D = A
@THAT
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
//not
@SP
AM = M - 1
D = !M
@SP
M = M + 1
A = M - 1
M = D
//pop local 5
@LCL
D = M
@5
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//push local 10
@10
D = A
@LCL
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
//push static 0
@Screen.0
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
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push that 0
@0
D = A
@THAT
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
//pop local 4
@LCL
D = M
@4
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
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
//push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Math.multiply 2
@RET_CALL_186
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
@LCL
M = D
@2
D = D - A
@5
D = D - A
@ARG
M = D
@Math.multiply
0 ; JMP
(RET_CALL_186)
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
//pop local 0
@LCL
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
//push local 2
@2
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
//pop local 6
@LCL
D = M
@6
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
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
//push local 6
@6
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
//pop local 3
@LCL
D = M
@3
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//push local 6
@6
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//eq
@eq_end85
D = A
@R15
M = D
@eq_command
0 ; JMP
(eq_end85)
//if-goto IF_TRUE1
@SP
AM = M - 1
D = M
@Screen.drawHorizontal$IF_TRUE1
D ; JNE
//goto IF_FALSE1
@Screen.drawHorizontal$IF_FALSE1
0 ; JMP
//label IF_TRUE1
(Screen.drawHorizontal$IF_TRUE1)
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
//push local 4
@4
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//push local 5
@5
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//and
@SP
AM = M - 1
D = M
@SP
AM = M - 1
D = D & M
@SP
M = M + 1
A = M - 1
M = D
//call Screen.updateLocation 2
@RET_CALL_187
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
@LCL
M = D
@2
D = D - A
@5
D = D - A
@ARG
M = D
@Screen.updateLocation
0 ; JMP
(RET_CALL_187)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//goto IF_END1
@Screen.drawHorizontal$IF_END1
0 ; JMP
//label IF_FALSE1
(Screen.drawHorizontal$IF_FALSE1)
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
//push local 5
@5
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//call Screen.updateLocation 2
@RET_CALL_188
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
@LCL
M = D
@2
D = D - A
@5
D = D - A
@ARG
M = D
@Screen.updateLocation
0 ; JMP
(RET_CALL_188)
//pop temp 0
@SP
AM = M - 1
D = M
@5
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
//push constant 1
@1
D = A
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
//pop local 0
@LCL
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
//label WHILE_EXP0
(Screen.drawHorizontal$WHILE_EXP0)
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
//push local 3
@3
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//lt
@lt_end86
D = A
@R15
M = D
@lt_command
0 ; JMP
(lt_end86)
//not
@SP
AM = M - 1
D = !M
@SP
M = M + 1
A = M - 1
M = D
//if-goto WHILE_END0
@SP
AM = M - 1
D = M
@Screen.drawHorizontal$WHILE_END0
D ; JNE
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
//push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
//neg
@SP
AM = M - 1
D = -M
@SP
M = M + 1
A = M - 1
M = D
//call Screen.updateLocation 2
@RET_CALL_189
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
@LCL
M = D
@2
D = D - A
@5
D = D - A
@ARG
M = D
@Screen.updateLocation
0 ; JMP
(RET_CALL_189)
//pop temp 0
@SP
AM = M - 1
D = M
@5
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
//push constant 1
@1
D = A
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
//pop local 0
@LCL
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
//goto WHILE_EXP0
@Screen.drawHorizontal$WHILE_EXP0
0 ; JMP
//label WHILE_END0
(Screen.drawHorizontal$WHILE_END0)
//push local 3
@3
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//push local 4
@4
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//call Screen.updateLocation 2
@RET_CALL_190
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
@LCL
M = D
@2
D = D - A
@5
D = D - A
@ARG
M = D
@Screen.updateLocation
0 ; JMP
(RET_CALL_190)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//label IF_END1
(Screen.drawHorizontal$IF_END1)
//label IF_FALSE0
(Screen.drawHorizontal$IF_FALSE0)
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
@R14
M = D
@SP
A = M - 1
D = M
@ARG
M = D
@ARG
D = M + 1
@SP
M = D
@R14
AM = M - 1
D = M
@THAT
M = D
@R14
AM = M - 1
D = M
@THIS
M = D
@R14
AM = M - 1
D = M
@ARG
M = D
@R14
AM = M - 1
D = M
@LCL
M = D
@R14
AM = M - 1
A = M
0 ; JMP
//function Screen.drawSymetric 0
(Screen.drawSymetric)
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
//push argument 3
@3
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
//push argument 2
@2
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
//push argument 2
@2
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
//call Screen.drawHorizontal 3
@RET_CALL_191
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
@LCL
M = D
@3
D = D - A
@5
D = D - A
@ARG
M = D
@Screen.drawHorizontal
0 ; JMP
(RET_CALL_191)
//pop temp 0
@SP
AM = M - 1
D = M
@5
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
//push argument 3
@3
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
//push argument 2
@2
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
//push argument 2
@2
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
//call Screen.drawHorizontal 3
@RET_CALL_192
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
@LCL
M = D
@3
D = D - A
@5
D = D - A
@ARG
M = D
@Screen.drawHorizontal
0 ; JMP
(RET_CALL_192)
//pop temp 0
@SP
AM = M - 1
D = M
@5
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
//push argument 2
@2
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
//push argument 3
@3
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
//push argument 3
@3
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
//call Screen.drawHorizontal 3
@RET_CALL_193
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
@LCL
M = D
@3
D = D - A
@5
D = D - A
@ARG
M = D
@Screen.drawHorizontal
0 ; JMP
(RET_CALL_193)
//pop temp 0
@SP
AM = M - 1
D = M
@5
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
//push argument 2
@2
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
//push argument 3
@3
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
//push argument 3
@3
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
//call Screen.drawHorizontal 3
@RET_CALL_194
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
@LCL
M = D
@3
D = D - A
@5
D = D - A
@ARG
M = D
@Screen.drawHorizontal
0 ; JMP
(RET_CALL_194)
//pop temp 0
@SP
AM = M - 1
D = M
@5
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
@R14
M = D
@SP
A = M - 1
D = M
@ARG
M = D
@ARG
D = M + 1
@SP
M = D
@R14
AM = M - 1
D = M
@THAT
M = D
@R14
AM = M - 1
D = M
@THIS
M = D
@R14
AM = M - 1
D = M
@ARG
M = D
@R14
AM = M - 1
D = M
@LCL
M = D
@R14
AM = M - 1
A = M
0 ; JMP
//function Screen.drawCircle 3
(Screen.drawCircle)
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
@0
D = A
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
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//lt
@lt_end87
D = A
@R15
M = D
@lt_command
0 ; JMP
(lt_end87)
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
//push constant 511
@511
D = A
@SP
M = M + 1
A = M - 1
M = D
//gt
@gt_end88
D = A
@R15
M = D
@gt_command
0 ; JMP
(gt_end88)
//or
@SP
AM = M - 1
D = M
@SP
AM = M - 1
D = D | M
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
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//lt
@lt_end89
D = A
@R15
M = D
@lt_command
0 ; JMP
(lt_end89)
//or
@SP
AM = M - 1
D = M
@SP
AM = M - 1
D = D | M
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
//push constant 255
@255
D = A
@SP
M = M + 1
A = M - 1
M = D
//gt
@gt_end90
D = A
@R15
M = D
@gt_command
0 ; JMP
(gt_end90)
//or
@SP
AM = M - 1
D = M
@SP
AM = M - 1
D = D | M
@SP
M = M + 1
A = M - 1
M = D
//if-goto IF_TRUE0
@SP
AM = M - 1
D = M
@Screen.drawCircle$IF_TRUE0
D ; JNE
//goto IF_FALSE0
@Screen.drawCircle$IF_FALSE0
0 ; JMP
//label IF_TRUE0
(Screen.drawCircle$IF_TRUE0)
//push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Sys.error 1
@RET_CALL_195
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
@LCL
M = D
@1
D = D - A
@5
D = D - A
@ARG
M = D
@Sys.error
0 ; JMP
(RET_CALL_195)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//label IF_FALSE0
(Screen.drawCircle$IF_FALSE0)
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
//push argument 2
@2
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
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//lt
@lt_end91
D = A
@R15
M = D
@lt_command
0 ; JMP
(lt_end91)
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
//push argument 2
@2
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
//push constant 511
@511
D = A
@SP
M = M + 1
A = M - 1
M = D
//gt
@gt_end92
D = A
@R15
M = D
@gt_command
0 ; JMP
(gt_end92)
//or
@SP
AM = M - 1
D = M
@SP
AM = M - 1
D = D | M
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
//push argument 2
@2
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
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//lt
@lt_end93
D = A
@R15
M = D
@lt_command
0 ; JMP
(lt_end93)
//or
@SP
AM = M - 1
D = M
@SP
AM = M - 1
D = D | M
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
//push argument 2
@2
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
//push constant 255
@255
D = A
@SP
M = M + 1
A = M - 1
M = D
//gt
@gt_end94
D = A
@R15
M = D
@gt_command
0 ; JMP
(gt_end94)
//or
@SP
AM = M - 1
D = M
@SP
AM = M - 1
D = D | M
@SP
M = M + 1
A = M - 1
M = D
//if-goto IF_TRUE1
@SP
AM = M - 1
D = M
@Screen.drawCircle$IF_TRUE1
D ; JNE
//goto IF_FALSE1
@Screen.drawCircle$IF_FALSE1
0 ; JMP
//label IF_TRUE1
(Screen.drawCircle$IF_TRUE1)
//push constant 13
@13
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Sys.error 1
@RET_CALL_196
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
@LCL
M = D
@1
D = D - A
@5
D = D - A
@ARG
M = D
@Sys.error
0 ; JMP
(RET_CALL_196)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//label IF_FALSE1
(Screen.drawCircle$IF_FALSE1)
//push argument 2
@2
D = A
@ARG
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop local 1
@LCL
D = M
@1
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
//push argument 2
@2
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
//pop local 2
@LCL
D = M
@2
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
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
//call Screen.drawSymetric 4
@RET_CALL_197
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
@LCL
M = D
@4
D = D - A
@5
D = D - A
@ARG
M = D
@Screen.drawSymetric
0 ; JMP
(RET_CALL_197)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//label WHILE_EXP0
(Screen.drawCircle$WHILE_EXP0)
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
//gt
@gt_end95
D = A
@R15
M = D
@gt_command
0 ; JMP
(gt_end95)
//not
@SP
AM = M - 1
D = !M
@SP
M = M + 1
A = M - 1
M = D
//if-goto WHILE_END0
@SP
AM = M - 1
D = M
@Screen.drawCircle$WHILE_END0
D ; JNE
//push local 2
@2
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//lt
@lt_end96
D = A
@R15
M = D
@lt_command
0 ; JMP
(lt_end96)
//if-goto IF_TRUE2
@SP
AM = M - 1
D = M
@Screen.drawCircle$IF_TRUE2
D ; JNE
//goto IF_FALSE2
@Screen.drawCircle$IF_FALSE2
0 ; JMP
//label IF_TRUE2
(Screen.drawCircle$IF_TRUE2)
//push local 2
@2
D = A
@LCL
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
//call Math.multiply 2
@RET_CALL_198
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
@LCL
M = D
@2
D = D - A
@5
D = D - A
@ARG
M = D
@Math.multiply
0 ; JMP
(RET_CALL_198)
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
//push constant 3
@3
D = A
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
//pop local 2
@LCL
D = M
@2
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//goto IF_END2
@Screen.drawCircle$IF_END2
0 ; JMP
//label IF_FALSE2
(Screen.drawCircle$IF_FALSE2)
//push local 2
@2
D = A
@LCL
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
//call Math.multiply 2
@RET_CALL_199
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
@LCL
M = D
@2
D = D - A
@5
D = D - A
@ARG
M = D
@Math.multiply
0 ; JMP
(RET_CALL_199)
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
//push constant 5
@5
D = A
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
//pop local 2
@LCL
D = M
@2
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
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
//pop local 1
@LCL
D = M
@1
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//label IF_END2
(Screen.drawCircle$IF_END2)
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
//push constant 1
@1
D = A
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
//pop local 0
@LCL
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
//call Screen.drawSymetric 4
@RET_CALL_200
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
@LCL
M = D
@4
D = D - A
@5
D = D - A
@ARG
M = D
@Screen.drawSymetric
0 ; JMP
(RET_CALL_200)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//goto WHILE_EXP0
@Screen.drawCircle$WHILE_EXP0
0 ; JMP
//label WHILE_END0
(Screen.drawCircle$WHILE_END0)
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
@R14
M = D
@SP
A = M - 1
D = M
@ARG
M = D
@ARG
D = M + 1
@SP
M = D
@R14
AM = M - 1
D = M
@THAT
M = D
@R14
AM = M - 1
D = M
@THIS
M = D
@R14
AM = M - 1
D = M
@ARG
M = D
@R14
AM = M - 1
D = M
@LCL
M = D
@R14
AM = M - 1
A = M
0 ; JMP
//function String.new 0
(String.new)
//push constant 3
@3
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Memory.alloc 1
@RET_CALL_201
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
@LCL
M = D
@1
D = D - A
@5
D = D - A
@ARG
M = D
@Memory.alloc
0 ; JMP
(RET_CALL_201)
//pop pointer 0
@SP
AM = M - 1
D = M
@3
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
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//lt
@lt_end97
D = A
@R15
M = D
@lt_command
0 ; JMP
(lt_end97)
//if-goto IF_TRUE0
@SP
AM = M - 1
D = M
@String.new$IF_TRUE0
D ; JNE
//goto IF_FALSE0
@String.new$IF_FALSE0
0 ; JMP
//label IF_TRUE0
(String.new$IF_TRUE0)
//push constant 14
@14
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Sys.error 1
@RET_CALL_202
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
@LCL
M = D
@1
D = D - A
@5
D = D - A
@ARG
M = D
@Sys.error
0 ; JMP
(RET_CALL_202)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//label IF_FALSE0
(String.new$IF_FALSE0)
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
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//gt
@gt_end98
D = A
@R15
M = D
@gt_command
0 ; JMP
(gt_end98)
//if-goto IF_TRUE1
@SP
AM = M - 1
D = M
@String.new$IF_TRUE1
D ; JNE
//goto IF_FALSE1
@String.new$IF_FALSE1
0 ; JMP
//label IF_TRUE1
(String.new$IF_TRUE1)
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
//call Array.new 1
@RET_CALL_203
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
@LCL
M = D
@1
D = D - A
@5
D = D - A
@ARG
M = D
@Array.new
0 ; JMP
(RET_CALL_203)
//pop this 1
@THIS
D = M
@1
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//label IF_FALSE1
(String.new$IF_FALSE1)
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
//pop this 0
@THIS
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
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//pop this 2
@THIS
D = M
@2
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//push pointer 0
@3
D = M
@SP
M = M + 1
A = M - 1
M = D
//return
@LCL
D = M
@R14
M = D
@SP
A = M - 1
D = M
@ARG
M = D
@ARG
D = M + 1
@SP
M = D
@R14
AM = M - 1
D = M
@THAT
M = D
@R14
AM = M - 1
D = M
@THIS
M = D
@R14
AM = M - 1
D = M
@ARG
M = D
@R14
AM = M - 1
D = M
@LCL
M = D
@R14
AM = M - 1
A = M
0 ; JMP
//function String.dispose 0
(String.dispose)
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
//pop pointer 0
@SP
AM = M - 1
D = M
@3
M = D
//push this 0
@0
D = A
@THIS
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//gt
@gt_end99
D = A
@R15
M = D
@gt_command
0 ; JMP
(gt_end99)
//if-goto IF_TRUE0
@SP
AM = M - 1
D = M
@String.dispose$IF_TRUE0
D ; JNE
//goto IF_FALSE0
@String.dispose$IF_FALSE0
0 ; JMP
//label IF_TRUE0
(String.dispose$IF_TRUE0)
//push this 1
@1
D = A
@THIS
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//call Array.dispose 1
@RET_CALL_204
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
@LCL
M = D
@1
D = D - A
@5
D = D - A
@ARG
M = D
@Array.dispose
0 ; JMP
(RET_CALL_204)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//label IF_FALSE0
(String.dispose$IF_FALSE0)
//push pointer 0
@3
D = M
@SP
M = M + 1
A = M - 1
M = D
//call Memory.deAlloc 1
@RET_CALL_205
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
@LCL
M = D
@1
D = D - A
@5
D = D - A
@ARG
M = D
@Memory.deAlloc
0 ; JMP
(RET_CALL_205)
//pop temp 0
@SP
AM = M - 1
D = M
@5
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
@R14
M = D
@SP
A = M - 1
D = M
@ARG
M = D
@ARG
D = M + 1
@SP
M = D
@R14
AM = M - 1
D = M
@THAT
M = D
@R14
AM = M - 1
D = M
@THIS
M = D
@R14
AM = M - 1
D = M
@ARG
M = D
@R14
AM = M - 1
D = M
@LCL
M = D
@R14
AM = M - 1
A = M
0 ; JMP
//function String.length 0
(String.length)
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
//pop pointer 0
@SP
AM = M - 1
D = M
@3
M = D
//push this 2
@2
D = A
@THIS
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//return
@LCL
D = M
@R14
M = D
@SP
A = M - 1
D = M
@ARG
M = D
@ARG
D = M + 1
@SP
M = D
@R14
AM = M - 1
D = M
@THAT
M = D
@R14
AM = M - 1
D = M
@THIS
M = D
@R14
AM = M - 1
D = M
@ARG
M = D
@R14
AM = M - 1
D = M
@LCL
M = D
@R14
AM = M - 1
A = M
0 ; JMP
//function String.charAt 0
(String.charAt)
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
//pop pointer 0
@SP
AM = M - 1
D = M
@3
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
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//lt
@lt_end100
D = A
@R15
M = D
@lt_command
0 ; JMP
(lt_end100)
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
//push this 2
@2
D = A
@THIS
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//gt
@gt_end101
D = A
@R15
M = D
@gt_command
0 ; JMP
(gt_end101)
//or
@SP
AM = M - 1
D = M
@SP
AM = M - 1
D = D | M
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
//push this 2
@2
D = A
@THIS
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//eq
@eq_end102
D = A
@R15
M = D
@eq_command
0 ; JMP
(eq_end102)
//or
@SP
AM = M - 1
D = M
@SP
AM = M - 1
D = D | M
@SP
M = M + 1
A = M - 1
M = D
//if-goto IF_TRUE0
@SP
AM = M - 1
D = M
@String.charAt$IF_TRUE0
D ; JNE
//goto IF_FALSE0
@String.charAt$IF_FALSE0
0 ; JMP
//label IF_TRUE0
(String.charAt$IF_TRUE0)
//push constant 15
@15
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Sys.error 1
@RET_CALL_206
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
@LCL
M = D
@1
D = D - A
@5
D = D - A
@ARG
M = D
@Sys.error
0 ; JMP
(RET_CALL_206)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//label IF_FALSE0
(String.charAt$IF_FALSE0)
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
//push this 1
@1
D = A
@THIS
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
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push that 0
@0
D = A
@THAT
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//return
@LCL
D = M
@R14
M = D
@SP
A = M - 1
D = M
@ARG
M = D
@ARG
D = M + 1
@SP
M = D
@R14
AM = M - 1
D = M
@THAT
M = D
@R14
AM = M - 1
D = M
@THIS
M = D
@R14
AM = M - 1
D = M
@ARG
M = D
@R14
AM = M - 1
D = M
@LCL
M = D
@R14
AM = M - 1
A = M
0 ; JMP
//function String.setCharAt 0
(String.setCharAt)
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
//pop pointer 0
@SP
AM = M - 1
D = M
@3
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
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//lt
@lt_end103
D = A
@R15
M = D
@lt_command
0 ; JMP
(lt_end103)
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
//push this 2
@2
D = A
@THIS
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//gt
@gt_end104
D = A
@R15
M = D
@gt_command
0 ; JMP
(gt_end104)
//or
@SP
AM = M - 1
D = M
@SP
AM = M - 1
D = D | M
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
//push this 2
@2
D = A
@THIS
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//eq
@eq_end105
D = A
@R15
M = D
@eq_command
0 ; JMP
(eq_end105)
//or
@SP
AM = M - 1
D = M
@SP
AM = M - 1
D = D | M
@SP
M = M + 1
A = M - 1
M = D
//if-goto IF_TRUE0
@SP
AM = M - 1
D = M
@String.setCharAt$IF_TRUE0
D ; JNE
//goto IF_FALSE0
@String.setCharAt$IF_FALSE0
0 ; JMP
//label IF_TRUE0
(String.setCharAt$IF_TRUE0)
//push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Sys.error 1
@RET_CALL_207
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
@LCL
M = D
@1
D = D - A
@5
D = D - A
@ARG
M = D
@Sys.error
0 ; JMP
(RET_CALL_207)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//label IF_FALSE0
(String.setCharAt$IF_FALSE0)
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
//push this 1
@1
D = A
@THIS
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
//push argument 2
@2
D = A
@ARG
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push temp 0
@5
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop that 0
@THAT
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
@R14
M = D
@SP
A = M - 1
D = M
@ARG
M = D
@ARG
D = M + 1
@SP
M = D
@R14
AM = M - 1
D = M
@THAT
M = D
@R14
AM = M - 1
D = M
@THIS
M = D
@R14
AM = M - 1
D = M
@ARG
M = D
@R14
AM = M - 1
D = M
@LCL
M = D
@R14
AM = M - 1
A = M
0 ; JMP
//function String.appendChar 0
(String.appendChar)
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
//pop pointer 0
@SP
AM = M - 1
D = M
@3
M = D
//push this 2
@2
D = A
@THIS
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//push this 0
@0
D = A
@THIS
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//eq
@eq_end106
D = A
@R15
M = D
@eq_command
0 ; JMP
(eq_end106)
//if-goto IF_TRUE0
@SP
AM = M - 1
D = M
@String.appendChar$IF_TRUE0
D ; JNE
//goto IF_FALSE0
@String.appendChar$IF_FALSE0
0 ; JMP
//label IF_TRUE0
(String.appendChar$IF_TRUE0)
//push constant 17
@17
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Sys.error 1
@RET_CALL_208
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
@LCL
M = D
@1
D = D - A
@5
D = D - A
@ARG
M = D
@Sys.error
0 ; JMP
(RET_CALL_208)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//label IF_FALSE0
(String.appendChar$IF_FALSE0)
//push this 2
@2
D = A
@THIS
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//push this 1
@1
D = A
@THIS
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
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push temp 0
@5
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop that 0
@THAT
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
//push this 2
@2
D = A
@THIS
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
//pop this 2
@THIS
D = M
@2
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//push pointer 0
@3
D = M
@SP
M = M + 1
A = M - 1
M = D
//return
@LCL
D = M
@R14
M = D
@SP
A = M - 1
D = M
@ARG
M = D
@ARG
D = M + 1
@SP
M = D
@R14
AM = M - 1
D = M
@THAT
M = D
@R14
AM = M - 1
D = M
@THIS
M = D
@R14
AM = M - 1
D = M
@ARG
M = D
@R14
AM = M - 1
D = M
@LCL
M = D
@R14
AM = M - 1
A = M
0 ; JMP
//function String.eraseLastChar 0
(String.eraseLastChar)
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
//pop pointer 0
@SP
AM = M - 1
D = M
@3
M = D
//push this 2
@2
D = A
@THIS
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//eq
@eq_end107
D = A
@R15
M = D
@eq_command
0 ; JMP
(eq_end107)
//if-goto IF_TRUE0
@SP
AM = M - 1
D = M
@String.eraseLastChar$IF_TRUE0
D ; JNE
//goto IF_FALSE0
@String.eraseLastChar$IF_FALSE0
0 ; JMP
//label IF_TRUE0
(String.eraseLastChar$IF_TRUE0)
//push constant 18
@18
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Sys.error 1
@RET_CALL_209
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
@LCL
M = D
@1
D = D - A
@5
D = D - A
@ARG
M = D
@Sys.error
0 ; JMP
(RET_CALL_209)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//label IF_FALSE0
(String.eraseLastChar$IF_FALSE0)
//push this 2
@2
D = A
@THIS
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
//pop this 2
@THIS
D = M
@2
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
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
@R14
M = D
@SP
A = M - 1
D = M
@ARG
M = D
@ARG
D = M + 1
@SP
M = D
@R14
AM = M - 1
D = M
@THAT
M = D
@R14
AM = M - 1
D = M
@THIS
M = D
@R14
AM = M - 1
D = M
@ARG
M = D
@R14
AM = M - 1
D = M
@LCL
M = D
@R14
AM = M - 1
A = M
0 ; JMP
//function String.intValue 5
(String.intValue)
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
@0
D = A
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
//pop pointer 0
@SP
AM = M - 1
D = M
@3
M = D
//push this 2
@2
D = A
@THIS
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//eq
@eq_end108
D = A
@R15
M = D
@eq_command
0 ; JMP
(eq_end108)
//if-goto IF_TRUE0
@SP
AM = M - 1
D = M
@String.intValue$IF_TRUE0
D ; JNE
//goto IF_FALSE0
@String.intValue$IF_FALSE0
0 ; JMP
//label IF_TRUE0
(String.intValue$IF_TRUE0)
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
@R14
M = D
@SP
A = M - 1
D = M
@ARG
M = D
@ARG
D = M + 1
@SP
M = D
@R14
AM = M - 1
D = M
@THAT
M = D
@R14
AM = M - 1
D = M
@THIS
M = D
@R14
AM = M - 1
D = M
@ARG
M = D
@R14
AM = M - 1
D = M
@LCL
M = D
@R14
AM = M - 1
A = M
0 ; JMP
//label IF_FALSE0
(String.intValue$IF_FALSE0)
//push constant 0
@0
D = A
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
//pop local 3
@LCL
D = M
@3
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push this 1
@1
D = A
@THIS
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
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push that 0
@0
D = A
@THAT
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//push constant 45
@45
D = A
@SP
M = M + 1
A = M - 1
M = D
//eq
@eq_end109
D = A
@R15
M = D
@eq_command
0 ; JMP
(eq_end109)
//if-goto IF_TRUE1
@SP
AM = M - 1
D = M
@String.intValue$IF_TRUE1
D ; JNE
//goto IF_FALSE1
@String.intValue$IF_FALSE1
0 ; JMP
//label IF_TRUE1
(String.intValue$IF_TRUE1)
//push constant 0
@0
D = A
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
//pop local 4
@LCL
D = M
@4
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
//pop local 0
@LCL
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
//label IF_FALSE1
(String.intValue$IF_FALSE1)
//label WHILE_EXP0
(String.intValue$WHILE_EXP0)
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
//push this 2
@2
D = A
@THIS
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//lt
@lt_end110
D = A
@R15
M = D
@lt_command
0 ; JMP
(lt_end110)
//push local 3
@3
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//and
@SP
AM = M - 1
D = M
@SP
AM = M - 1
D = D & M
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
//if-goto WHILE_END0
@SP
AM = M - 1
D = M
@String.intValue$WHILE_END0
D ; JNE
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
//push this 1
@1
D = A
@THIS
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
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push that 0
@0
D = A
@THAT
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//push constant 48
@48
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
//pop local 2
@LCL
D = M
@2
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//push local 2
@2
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//lt
@lt_end111
D = A
@R15
M = D
@lt_command
0 ; JMP
(lt_end111)
//push local 2
@2
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//push constant 9
@9
D = A
@SP
M = M + 1
A = M - 1
M = D
//gt
@gt_end112
D = A
@R15
M = D
@gt_command
0 ; JMP
(gt_end112)
//or
@SP
AM = M - 1
D = M
@SP
AM = M - 1
D = D | M
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
//pop local 3
@LCL
D = M
@3
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//push local 3
@3
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//if-goto IF_TRUE2
@SP
AM = M - 1
D = M
@String.intValue$IF_TRUE2
D ; JNE
//goto IF_FALSE2
@String.intValue$IF_FALSE2
0 ; JMP
//label IF_TRUE2
(String.intValue$IF_TRUE2)
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
//push constant 10
@10
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Math.multiply 2
@RET_CALL_210
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
@LCL
M = D
@2
D = D - A
@5
D = D - A
@ARG
M = D
@Math.multiply
0 ; JMP
(RET_CALL_210)
//push local 2
@2
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
//pop local 1
@LCL
D = M
@1
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
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
//push constant 1
@1
D = A
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
//pop local 0
@LCL
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
//label IF_FALSE2
(String.intValue$IF_FALSE2)
//goto WHILE_EXP0
@String.intValue$WHILE_EXP0
0 ; JMP
//label WHILE_END0
(String.intValue$WHILE_END0)
//push local 4
@4
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//if-goto IF_TRUE3
@SP
AM = M - 1
D = M
@String.intValue$IF_TRUE3
D ; JNE
//goto IF_FALSE3
@String.intValue$IF_FALSE3
0 ; JMP
//label IF_TRUE3
(String.intValue$IF_TRUE3)
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
//neg
@SP
AM = M - 1
D = -M
@SP
M = M + 1
A = M - 1
M = D
//pop local 1
@LCL
D = M
@1
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//label IF_FALSE3
(String.intValue$IF_FALSE3)
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
//return
@LCL
D = M
@R14
M = D
@SP
A = M - 1
D = M
@ARG
M = D
@ARG
D = M + 1
@SP
M = D
@R14
AM = M - 1
D = M
@THAT
M = D
@R14
AM = M - 1
D = M
@THIS
M = D
@R14
AM = M - 1
D = M
@ARG
M = D
@R14
AM = M - 1
D = M
@LCL
M = D
@R14
AM = M - 1
A = M
0 ; JMP
//function String.setInt 4
(String.setInt)
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
//pop pointer 0
@SP
AM = M - 1
D = M
@3
M = D
//push this 0
@0
D = A
@THIS
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//eq
@eq_end113
D = A
@R15
M = D
@eq_command
0 ; JMP
(eq_end113)
//if-goto IF_TRUE0
@SP
AM = M - 1
D = M
@String.setInt$IF_TRUE0
D ; JNE
//goto IF_FALSE0
@String.setInt$IF_FALSE0
0 ; JMP
//label IF_TRUE0
(String.setInt$IF_TRUE0)
//push constant 19
@19
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Sys.error 1
@RET_CALL_211
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
@LCL
M = D
@1
D = D - A
@5
D = D - A
@ARG
M = D
@Sys.error
0 ; JMP
(RET_CALL_211)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//label IF_FALSE0
(String.setInt$IF_FALSE0)
//push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Array.new 1
@RET_CALL_212
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
@LCL
M = D
@1
D = D - A
@5
D = D - A
@ARG
M = D
@Array.new
0 ; JMP
(RET_CALL_212)
//pop local 2
@LCL
D = M
@2
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
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
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//lt
@lt_end114
D = A
@R15
M = D
@lt_command
0 ; JMP
(lt_end114)
//if-goto IF_TRUE1
@SP
AM = M - 1
D = M
@String.setInt$IF_TRUE1
D ; JNE
//goto IF_FALSE1
@String.setInt$IF_FALSE1
0 ; JMP
//label IF_TRUE1
(String.setInt$IF_TRUE1)
//push constant 0
@0
D = A
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
//pop local 3
@LCL
D = M
@3
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
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
//neg
@SP
AM = M - 1
D = -M
@SP
M = M + 1
A = M - 1
M = D
//pop argument 1
@ARG
D = M
@1
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//label IF_FALSE1
(String.setInt$IF_FALSE1)
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
//pop local 1
@LCL
D = M
@1
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//label WHILE_EXP0
(String.setInt$WHILE_EXP0)
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
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//gt
@gt_end115
D = A
@R15
M = D
@gt_command
0 ; JMP
(gt_end115)
//not
@SP
AM = M - 1
D = !M
@SP
M = M + 1
A = M - 1
M = D
//if-goto WHILE_END0
@SP
AM = M - 1
D = M
@String.setInt$WHILE_END0
D ; JNE
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
//push constant 10
@10
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Math.divide 2
@RET_CALL_213
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
@LCL
M = D
@2
D = D - A
@5
D = D - A
@ARG
M = D
@Math.divide
0 ; JMP
(RET_CALL_213)
//pop local 1
@LCL
D = M
@1
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
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
//push local 2
@2
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
//push constant 48
@48
D = A
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
//push constant 10
@10
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Math.multiply 2
@RET_CALL_214
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
@LCL
M = D
@2
D = D - A
@5
D = D - A
@ARG
M = D
@Math.multiply
0 ; JMP
(RET_CALL_214)
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
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push temp 0
@5
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop that 0
@THAT
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
//push constant 1
@1
D = A
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
//pop local 0
@LCL
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
//pop argument 1
@ARG
D = M
@1
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//goto WHILE_EXP0
@String.setInt$WHILE_EXP0
0 ; JMP
//label WHILE_END0
(String.setInt$WHILE_END0)
//push local 3
@3
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//if-goto IF_TRUE2
@SP
AM = M - 1
D = M
@String.setInt$IF_TRUE2
D ; JNE
//goto IF_FALSE2
@String.setInt$IF_FALSE2
0 ; JMP
//label IF_TRUE2
(String.setInt$IF_TRUE2)
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
//push local 2
@2
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
//push constant 45
@45
D = A
@SP
M = M + 1
A = M - 1
M = D
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push temp 0
@5
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop that 0
@THAT
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
//push constant 1
@1
D = A
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
//pop local 0
@LCL
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
//label IF_FALSE2
(String.setInt$IF_FALSE2)
//push this 0
@0
D = A
@THIS
A = D + M
D = M
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
//lt
@lt_end116
D = A
@R15
M = D
@lt_command
0 ; JMP
(lt_end116)
//if-goto IF_TRUE3
@SP
AM = M - 1
D = M
@String.setInt$IF_TRUE3
D ; JNE
//goto IF_FALSE3
@String.setInt$IF_FALSE3
0 ; JMP
//label IF_TRUE3
(String.setInt$IF_TRUE3)
//push constant 19
@19
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Sys.error 1
@RET_CALL_215
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
@LCL
M = D
@1
D = D - A
@5
D = D - A
@ARG
M = D
@Sys.error
0 ; JMP
(RET_CALL_215)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//label IF_FALSE3
(String.setInt$IF_FALSE3)
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
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//eq
@eq_end117
D = A
@R15
M = D
@eq_command
0 ; JMP
(eq_end117)
//if-goto IF_TRUE4
@SP
AM = M - 1
D = M
@String.setInt$IF_TRUE4
D ; JNE
//goto IF_FALSE4
@String.setInt$IF_FALSE4
0 ; JMP
//label IF_TRUE4
(String.setInt$IF_TRUE4)
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push this 1
@1
D = A
@THIS
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
//push constant 48
@48
D = A
@SP
M = M + 1
A = M - 1
M = D
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push temp 0
@5
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop that 0
@THAT
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
//push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
//pop this 2
@THIS
D = M
@2
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//goto IF_END4
@String.setInt$IF_END4
0 ; JMP
//label IF_FALSE4
(String.setInt$IF_FALSE4)
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//pop this 2
@THIS
D = M
@2
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//label WHILE_EXP1
(String.setInt$WHILE_EXP1)
//push this 2
@2
D = A
@THIS
A = D + M
D = M
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
//lt
@lt_end118
D = A
@R15
M = D
@lt_command
0 ; JMP
(lt_end118)
//not
@SP
AM = M - 1
D = !M
@SP
M = M + 1
A = M - 1
M = D
//if-goto WHILE_END1
@SP
AM = M - 1
D = M
@String.setInt$WHILE_END1
D ; JNE
//push this 2
@2
D = A
@THIS
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//push this 1
@1
D = A
@THIS
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
//push this 2
@2
D = A
@THIS
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
//push local 2
@2
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
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push that 0
@0
D = A
@THAT
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//pop pointer 1
@SP
AM = M - 1
D = M
@4
M = D
//push temp 0
@5
D = M
@SP
M = M + 1
A = M - 1
M = D
//pop that 0
@THAT
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
//push this 2
@2
D = A
@THIS
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
//pop this 2
@THIS
D = M
@2
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//goto WHILE_EXP1
@String.setInt$WHILE_EXP1
0 ; JMP
//label WHILE_END1
(String.setInt$WHILE_END1)
//label IF_END4
(String.setInt$IF_END4)
//push local 2
@2
D = A
@LCL
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//call Array.dispose 1
@RET_CALL_216
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
@LCL
M = D
@1
D = D - A
@5
D = D - A
@ARG
M = D
@Array.dispose
0 ; JMP
(RET_CALL_216)
//pop temp 0
@SP
AM = M - 1
D = M
@5
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
@R14
M = D
@SP
A = M - 1
D = M
@ARG
M = D
@ARG
D = M + 1
@SP
M = D
@R14
AM = M - 1
D = M
@THAT
M = D
@R14
AM = M - 1
D = M
@THIS
M = D
@R14
AM = M - 1
D = M
@ARG
M = D
@R14
AM = M - 1
D = M
@LCL
M = D
@R14
AM = M - 1
A = M
0 ; JMP
//function String.newLine 0
(String.newLine)
//push constant 128
@128
D = A
@SP
M = M + 1
A = M - 1
M = D
//return
@LCL
D = M
@R14
M = D
@SP
A = M - 1
D = M
@ARG
M = D
@ARG
D = M + 1
@SP
M = D
@R14
AM = M - 1
D = M
@THAT
M = D
@R14
AM = M - 1
D = M
@THIS
M = D
@R14
AM = M - 1
D = M
@ARG
M = D
@R14
AM = M - 1
D = M
@LCL
M = D
@R14
AM = M - 1
A = M
0 ; JMP
//function String.backSpace 0
(String.backSpace)
//push constant 129
@129
D = A
@SP
M = M + 1
A = M - 1
M = D
//return
@LCL
D = M
@R14
M = D
@SP
A = M - 1
D = M
@ARG
M = D
@ARG
D = M + 1
@SP
M = D
@R14
AM = M - 1
D = M
@THAT
M = D
@R14
AM = M - 1
D = M
@THIS
M = D
@R14
AM = M - 1
D = M
@ARG
M = D
@R14
AM = M - 1
D = M
@LCL
M = D
@R14
AM = M - 1
A = M
0 ; JMP
//function String.doubleQuote 0
(String.doubleQuote)
//push constant 34
@34
D = A
@SP
M = M + 1
A = M - 1
M = D
//return
@LCL
D = M
@R14
M = D
@SP
A = M - 1
D = M
@ARG
M = D
@ARG
D = M + 1
@SP
M = D
@R14
AM = M - 1
D = M
@THAT
M = D
@R14
AM = M - 1
D = M
@THIS
M = D
@R14
AM = M - 1
D = M
@ARG
M = D
@R14
AM = M - 1
D = M
@LCL
M = D
@R14
AM = M - 1
A = M
0 ; JMP
//function Sys.init 0
(Sys.init)
//call Memory.init 0
@RET_CALL_217
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
@LCL
M = D
@0
D = D - A
@5
D = D - A
@ARG
M = D
@Memory.init
0 ; JMP
(RET_CALL_217)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//call Math.init 0
@RET_CALL_218
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
@LCL
M = D
@0
D = D - A
@5
D = D - A
@ARG
M = D
@Math.init
0 ; JMP
(RET_CALL_218)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//call Screen.init 0
@RET_CALL_219
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
@LCL
M = D
@0
D = D - A
@5
D = D - A
@ARG
M = D
@Screen.init
0 ; JMP
(RET_CALL_219)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//call Output.init 0
@RET_CALL_220
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
@LCL
M = D
@0
D = D - A
@5
D = D - A
@ARG
M = D
@Output.init
0 ; JMP
(RET_CALL_220)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//call Keyboard.init 0
@RET_CALL_221
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
@LCL
M = D
@0
D = D - A
@5
D = D - A
@ARG
M = D
@Keyboard.init
0 ; JMP
(RET_CALL_221)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//call Main.main 0
@RET_CALL_222
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
@LCL
M = D
@0
D = D - A
@5
D = D - A
@ARG
M = D
@Main.main
0 ; JMP
(RET_CALL_222)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//call Sys.halt 0
@RET_CALL_223
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
@LCL
M = D
@0
D = D - A
@5
D = D - A
@ARG
M = D
@Sys.halt
0 ; JMP
(RET_CALL_223)
//pop temp 0
@SP
AM = M - 1
D = M
@5
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
@R14
M = D
@SP
A = M - 1
D = M
@ARG
M = D
@ARG
D = M + 1
@SP
M = D
@R14
AM = M - 1
D = M
@THAT
M = D
@R14
AM = M - 1
D = M
@THIS
M = D
@R14
AM = M - 1
D = M
@ARG
M = D
@R14
AM = M - 1
D = M
@LCL
M = D
@R14
AM = M - 1
A = M
0 ; JMP
//function Sys.halt 0
(Sys.halt)
//label WHILE_EXP0
(Sys.halt$WHILE_EXP0)
//push constant 0
@0
D = A
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
//not
@SP
AM = M - 1
D = !M
@SP
M = M + 1
A = M - 1
M = D
//if-goto WHILE_END0
@SP
AM = M - 1
D = M
@Sys.halt$WHILE_END0
D ; JNE
//goto WHILE_EXP0
@Sys.halt$WHILE_EXP0
0 ; JMP
//label WHILE_END0
(Sys.halt$WHILE_END0)
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
@R14
M = D
@SP
A = M - 1
D = M
@ARG
M = D
@ARG
D = M + 1
@SP
M = D
@R14
AM = M - 1
D = M
@THAT
M = D
@R14
AM = M - 1
D = M
@THIS
M = D
@R14
AM = M - 1
D = M
@ARG
M = D
@R14
AM = M - 1
D = M
@LCL
M = D
@R14
AM = M - 1
A = M
0 ; JMP
//function Sys.wait 1
(Sys.wait)
@0
D = A
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
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//lt
@lt_end119
D = A
@R15
M = D
@lt_command
0 ; JMP
(lt_end119)
//if-goto IF_TRUE0
@SP
AM = M - 1
D = M
@Sys.wait$IF_TRUE0
D ; JNE
//goto IF_FALSE0
@Sys.wait$IF_FALSE0
0 ; JMP
//label IF_TRUE0
(Sys.wait$IF_TRUE0)
//push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Sys.error 1
@RET_CALL_224
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
@LCL
M = D
@1
D = D - A
@5
D = D - A
@ARG
M = D
@Sys.error
0 ; JMP
(RET_CALL_224)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//label IF_FALSE0
(Sys.wait$IF_FALSE0)
//label WHILE_EXP0
(Sys.wait$WHILE_EXP0)
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
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//gt
@gt_end120
D = A
@R15
M = D
@gt_command
0 ; JMP
(gt_end120)
//not
@SP
AM = M - 1
D = !M
@SP
M = M + 1
A = M - 1
M = D
//if-goto WHILE_END0
@SP
AM = M - 1
D = M
@Sys.wait$WHILE_END0
D ; JNE
//push constant 50
@50
D = A
@SP
M = M + 1
A = M - 1
M = D
//pop local 0
@LCL
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
//label WHILE_EXP1
(Sys.wait$WHILE_EXP1)
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
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//gt
@gt_end121
D = A
@R15
M = D
@gt_command
0 ; JMP
(gt_end121)
//not
@SP
AM = M - 1
D = !M
@SP
M = M + 1
A = M - 1
M = D
//if-goto WHILE_END1
@SP
AM = M - 1
D = M
@Sys.wait$WHILE_END1
D ; JNE
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
//pop local 0
@LCL
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
//goto WHILE_EXP1
@Sys.wait$WHILE_EXP1
0 ; JMP
//label WHILE_END1
(Sys.wait$WHILE_END1)
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
//pop argument 0
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
//goto WHILE_EXP0
@Sys.wait$WHILE_EXP0
0 ; JMP
//label WHILE_END0
(Sys.wait$WHILE_END0)
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
@R14
M = D
@SP
A = M - 1
D = M
@ARG
M = D
@ARG
D = M + 1
@SP
M = D
@R14
AM = M - 1
D = M
@THAT
M = D
@R14
AM = M - 1
D = M
@THIS
M = D
@R14
AM = M - 1
D = M
@ARG
M = D
@R14
AM = M - 1
D = M
@LCL
M = D
@R14
AM = M - 1
A = M
0 ; JMP
//function Sys.error 0
(Sys.error)
//push constant 3
@3
D = A
@SP
M = M + 1
A = M - 1
M = D
//call String.new 1
@RET_CALL_225
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
@LCL
M = D
@1
D = D - A
@5
D = D - A
@ARG
M = D
@String.new
0 ; JMP
(RET_CALL_225)
//push constant 69
@69
D = A
@SP
M = M + 1
A = M - 1
M = D
//call String.appendChar 2
@RET_CALL_226
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
@LCL
M = D
@2
D = D - A
@5
D = D - A
@ARG
M = D
@String.appendChar
0 ; JMP
(RET_CALL_226)
//push constant 82
@82
D = A
@SP
M = M + 1
A = M - 1
M = D
//call String.appendChar 2
@RET_CALL_227
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
@LCL
M = D
@2
D = D - A
@5
D = D - A
@ARG
M = D
@String.appendChar
0 ; JMP
(RET_CALL_227)
//push constant 82
@82
D = A
@SP
M = M + 1
A = M - 1
M = D
//call String.appendChar 2
@RET_CALL_228
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
@LCL
M = D
@2
D = D - A
@5
D = D - A
@ARG
M = D
@String.appendChar
0 ; JMP
(RET_CALL_228)
//call Output.printString 1
@RET_CALL_229
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
@LCL
M = D
@1
D = D - A
@5
D = D - A
@ARG
M = D
@Output.printString
0 ; JMP
(RET_CALL_229)
//pop temp 0
@SP
AM = M - 1
D = M
@5
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
//call Output.printInt 1
@RET_CALL_230
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
@LCL
M = D
@1
D = D - A
@5
D = D - A
@ARG
M = D
@Output.printInt
0 ; JMP
(RET_CALL_230)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//call Sys.halt 0
@RET_CALL_231
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
@LCL
M = D
@0
D = D - A
@5
D = D - A
@ARG
M = D
@Sys.halt
0 ; JMP
(RET_CALL_231)
//pop temp 0
@SP
AM = M - 1
D = M
@5
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
@R14
M = D
@SP
A = M - 1
D = M
@ARG
M = D
@ARG
D = M + 1
@SP
M = D
@R14
AM = M - 1
D = M
@THAT
M = D
@R14
AM = M - 1
D = M
@THIS
M = D
@R14
AM = M - 1
D = M
@ARG
M = D
@R14
AM = M - 1
D = M
@LCL
M = D
@R14
AM = M - 1
A = M
0 ; JMP
