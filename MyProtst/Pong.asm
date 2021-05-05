@256
D = A
@SP
M = D
@Sys.init
0 ; JMP
(eq_command)
@R15
M = D
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
@R15
M = D
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
@R15
M = D
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
(call_command)
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
@R14
D = D - M
@5
D = D - A
@ARG
M = D
@R15
0 ; JMP
(return_command)
@LCL
D = M
@5
A = D - A
D = M
@R14
M = D
@SP
A = M - 1
D = M
@ARG
A = M
M = D
@ARG
D = M + 1
@SP
M = D
@LCL
AM = M - 1
D = M
@THAT
M = D
@LCL
AM = M - 1
D = M
@THIS
M = D
@LCL
AM = M - 1
D = M
@ARG
M = D
@LCL
AM = M - 1
D = M
@LCL
M = D
@R14
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
//call Memory.alloc 1
@Memory.alloc
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_0
D = A
@call_command
0 ; JMP
(RET_CALL_0)
//return
@return_command
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
@Memory.deAlloc
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_1
D = A
@call_command
0 ; JMP
(RET_CALL_1)
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
@return_command
0 ; JMP
//function Ball.new 0
(Ball.new)
//push constant 15
@15
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Memory.alloc 1
@Memory.alloc
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_2
D = A
@call_command
0 ; JMP
(RET_CALL_2)
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
//pop this 10
@THIS
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
//push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
//sub
@SP
AM = M - 1
D = M
A = A - 1
M = M - D
//pop this 11
@THIS
D = M
@11
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
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
//pop this 12
@THIS
D = M
@12
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
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
//push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
//sub
@SP
AM = M - 1
D = M
A = A - 1
M = M - D
//pop this 13
@THIS
D = M
@13
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
//pop this 14
@THIS
D = M
@14
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
//call Ball.show 1
@Ball.show
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_3
D = A
@call_command
0 ; JMP
(RET_CALL_3)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push pointer 0
@3
D = M
@SP
M = M + 1
A = M - 1
M = D
//return
@return_command
0 ; JMP
//function Ball.dispose 0
(Ball.dispose)
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
@Memory.deAlloc
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_4
D = A
@call_command
0 ; JMP
(RET_CALL_4)
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
@return_command
0 ; JMP
//function Ball.show 0
(Ball.show)
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
//push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
//neg
@SP
A = M - 1
M = -M
//call Screen.setColor 1
@Screen.setColor
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_5
D = A
@call_command
0 ; JMP
(RET_CALL_5)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push pointer 0
@3
D = M
@SP
M = M + 1
A = M - 1
M = D
//call Ball.draw 1
@Ball.draw
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_6
D = A
@call_command
0 ; JMP
(RET_CALL_6)
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
@return_command
0 ; JMP
//function Ball.hide 0
(Ball.hide)
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
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Screen.setColor 1
@Screen.setColor
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_7
D = A
@call_command
0 ; JMP
(RET_CALL_7)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push pointer 0
@3
D = M
@SP
M = M + 1
A = M - 1
M = D
//call Ball.draw 1
@Ball.draw
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_8
D = A
@call_command
0 ; JMP
(RET_CALL_8)
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
@return_command
0 ; JMP
//function Ball.draw 0
(Ball.draw)
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
A = A - 1
M = D + M
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
A = A - 1
M = D + M
//call Screen.drawRectangle 4
@Screen.drawRectangle
D = A
@R15
M = D
@4
D = A
@R14
M = D
@RET_CALL_9
D = A
@call_command
0 ; JMP
(RET_CALL_9)
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
@return_command
0 ; JMP
//function Ball.getLeft 0
(Ball.getLeft)
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
//return
@return_command
0 ; JMP
//function Ball.getRight 0
(Ball.getRight)
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
A = A - 1
M = D + M
//return
@return_command
0 ; JMP
//function Ball.setDestination 3
(Ball.setDestination)
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
//sub
@SP
AM = M - 1
D = M
A = A - 1
M = M - D
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
//sub
@SP
AM = M - 1
D = M
A = A - 1
M = M - D
//pop this 3
@THIS
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
//call Math.abs 1
@Math.abs
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_10
D = A
@call_command
0 ; JMP
(RET_CALL_10)
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
//push this 3
@3
D = A
@THIS
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//call Math.abs 1
@Math.abs
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_11
D = A
@call_command
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
@lt_end0
D = A
@lt_command
0 ; JMP
(lt_end0)
//pop this 7
@THIS
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
//push this 7
@7
D = A
@THIS
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
@Ball.setDestination$IF_TRUE0
D ; JNE
//goto IF_FALSE0
@Ball.setDestination$IF_FALSE0
0 ; JMP
//label IF_TRUE0
(Ball.setDestination$IF_TRUE0)
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
//lt
@lt_end1
D = A
@lt_command
0 ; JMP
(lt_end1)
//pop this 8
@THIS
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
@lt_end2
D = A
@lt_command
0 ; JMP
(lt_end2)
//pop this 9
@THIS
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
//goto IF_END0
@Ball.setDestination$IF_END0
0 ; JMP
//label IF_FALSE0
(Ball.setDestination$IF_FALSE0)
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
@lt_end3
D = A
@lt_command
0 ; JMP
(lt_end3)
//pop this 8
@THIS
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
//lt
@lt_end4
D = A
@lt_command
0 ; JMP
(lt_end4)
//pop this 9
@THIS
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
//label IF_END0
(Ball.setDestination$IF_END0)
//push constant 2
@2
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
//call Math.multiply 2
@Math.multiply
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_12
D = A
@call_command
0 ; JMP
(RET_CALL_12)
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
A = A - 1
M = M - D
//pop this 4
@THIS
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
//push constant 2
@2
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
//call Math.multiply 2
@Math.multiply
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_13
D = A
@call_command
0 ; JMP
(RET_CALL_13)
//pop this 5
@THIS
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
//sub
@SP
AM = M - 1
D = M
A = A - 1
M = M - D
//call Math.multiply 2
@Math.multiply
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_14
D = A
@call_command
0 ; JMP
(RET_CALL_14)
//pop this 6
@THIS
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
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//return
@return_command
0 ; JMP
//function Ball.move 0
(Ball.move)
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
//call Ball.hide 1
@Ball.hide
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_15
D = A
@call_command
0 ; JMP
(RET_CALL_15)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push this 4
@4
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
//lt
@lt_end5
D = A
@lt_command
0 ; JMP
(lt_end5)
//if-goto IF_TRUE1
@SP
AM = M - 1
D = M
@Ball.move$IF_TRUE1
D ; JNE
//goto IF_FALSE1
@Ball.move$IF_FALSE1
0 ; JMP
//label IF_TRUE1
(Ball.move$IF_TRUE1)
//push this 4
@4
D = A
@THIS
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//push this 5
@5
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
A = A - 1
M = D + M
//pop this 4
@THIS
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
//goto IF_END1
@Ball.move$IF_END1
0 ; JMP
//label IF_FALSE1
(Ball.move$IF_FALSE1)
//push this 4
@4
D = A
@THIS
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//push this 6
@6
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
A = A - 1
M = D + M
//pop this 4
@THIS
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
//push this 9
@9
D = A
@THIS
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
@Ball.move$IF_TRUE2
D ; JNE
//goto IF_FALSE2
@Ball.move$IF_FALSE2
0 ; JMP
//label IF_TRUE2
(Ball.move$IF_TRUE2)
//push this 7
@7
D = A
@THIS
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
@Ball.move$IF_TRUE3
D ; JNE
//goto IF_FALSE3
@Ball.move$IF_FALSE3
0 ; JMP
//label IF_TRUE3
(Ball.move$IF_TRUE3)
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
A = A - 1
M = D + M
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
//goto IF_END3
@Ball.move$IF_END3
0 ; JMP
//label IF_FALSE3
(Ball.move$IF_FALSE3)
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
A = A - 1
M = D + M
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
//label IF_END3
(Ball.move$IF_END3)
//goto IF_END2
@Ball.move$IF_END2
0 ; JMP
//label IF_FALSE2
(Ball.move$IF_FALSE2)
//push this 7
@7
D = A
@THIS
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
@Ball.move$IF_TRUE4
D ; JNE
//goto IF_FALSE4
@Ball.move$IF_FALSE4
0 ; JMP
//label IF_TRUE4
(Ball.move$IF_TRUE4)
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
//push constant 4
@4
D = A
@SP
M = M + 1
A = M - 1
M = D
//sub
@SP
AM = M - 1
D = M
A = A - 1
M = M - D
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
//goto IF_END4
@Ball.move$IF_END4
0 ; JMP
//label IF_FALSE4
(Ball.move$IF_FALSE4)
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
//push constant 4
@4
D = A
@SP
M = M + 1
A = M - 1
M = D
//sub
@SP
AM = M - 1
D = M
A = A - 1
M = M - D
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
//label IF_END4
(Ball.move$IF_END4)
//label IF_END2
(Ball.move$IF_END2)
//label IF_END1
(Ball.move$IF_END1)
//push this 8
@8
D = A
@THIS
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//if-goto IF_TRUE5
@SP
AM = M - 1
D = M
@Ball.move$IF_TRUE5
D ; JNE
//goto IF_FALSE5
@Ball.move$IF_FALSE5
0 ; JMP
//label IF_TRUE5
(Ball.move$IF_TRUE5)
//push this 7
@7
D = A
@THIS
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//if-goto IF_TRUE6
@SP
AM = M - 1
D = M
@Ball.move$IF_TRUE6
D ; JNE
//goto IF_FALSE6
@Ball.move$IF_FALSE6
0 ; JMP
//label IF_TRUE6
(Ball.move$IF_TRUE6)
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
A = A - 1
M = D + M
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
//goto IF_END6
@Ball.move$IF_END6
0 ; JMP
//label IF_FALSE6
(Ball.move$IF_FALSE6)
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
A = A - 1
M = D + M
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
//label IF_END6
(Ball.move$IF_END6)
//goto IF_END5
@Ball.move$IF_END5
0 ; JMP
//label IF_FALSE5
(Ball.move$IF_FALSE5)
//push this 7
@7
D = A
@THIS
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//if-goto IF_TRUE7
@SP
AM = M - 1
D = M
@Ball.move$IF_TRUE7
D ; JNE
//goto IF_FALSE7
@Ball.move$IF_FALSE7
0 ; JMP
//label IF_TRUE7
(Ball.move$IF_TRUE7)
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
//push constant 4
@4
D = A
@SP
M = M + 1
A = M - 1
M = D
//sub
@SP
AM = M - 1
D = M
A = A - 1
M = M - D
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
//goto IF_END7
@Ball.move$IF_END7
0 ; JMP
//label IF_FALSE7
(Ball.move$IF_FALSE7)
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
//push constant 4
@4
D = A
@SP
M = M + 1
A = M - 1
M = D
//sub
@SP
AM = M - 1
D = M
A = A - 1
M = M - D
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
//label IF_END7
(Ball.move$IF_END7)
//label IF_END5
(Ball.move$IF_END5)
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
//push this 10
@10
D = A
@THIS
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//gt
@gt_end6
D = A
@gt_command
0 ; JMP
(gt_end6)
//not
@SP
A = M - 1
M = !M
//if-goto IF_TRUE8
@SP
AM = M - 1
D = M
@Ball.move$IF_TRUE8
D ; JNE
//goto IF_FALSE8
@Ball.move$IF_FALSE8
0 ; JMP
//label IF_TRUE8
(Ball.move$IF_TRUE8)
//push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
//pop this 14
@THIS
D = M
@14
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//push this 10
@10
D = A
@THIS
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
//label IF_FALSE8
(Ball.move$IF_FALSE8)
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
//push this 11
@11
D = A
@THIS
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//lt
@lt_end7
D = A
@lt_command
0 ; JMP
(lt_end7)
//not
@SP
A = M - 1
M = !M
//if-goto IF_TRUE9
@SP
AM = M - 1
D = M
@Ball.move$IF_TRUE9
D ; JNE
//goto IF_FALSE9
@Ball.move$IF_FALSE9
0 ; JMP
//label IF_TRUE9
(Ball.move$IF_TRUE9)
//push constant 2
@2
D = A
@SP
M = M + 1
A = M - 1
M = D
//pop this 14
@THIS
D = M
@14
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//push this 11
@11
D = A
@THIS
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
//label IF_FALSE9
(Ball.move$IF_FALSE9)
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
//push this 12
@12
D = A
@THIS
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//gt
@gt_end8
D = A
@gt_command
0 ; JMP
(gt_end8)
//not
@SP
A = M - 1
M = !M
//if-goto IF_TRUE10
@SP
AM = M - 1
D = M
@Ball.move$IF_TRUE10
D ; JNE
//goto IF_FALSE10
@Ball.move$IF_FALSE10
0 ; JMP
//label IF_TRUE10
(Ball.move$IF_TRUE10)
//push constant 3
@3
D = A
@SP
M = M + 1
A = M - 1
M = D
//pop this 14
@THIS
D = M
@14
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//push this 12
@12
D = A
@THIS
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
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
//label IF_FALSE10
(Ball.move$IF_FALSE10)
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
//push this 13
@13
D = A
@THIS
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//lt
@lt_end9
D = A
@lt_command
0 ; JMP
(lt_end9)
//not
@SP
A = M - 1
M = !M
//if-goto IF_TRUE11
@SP
AM = M - 1
D = M
@Ball.move$IF_TRUE11
D ; JNE
//goto IF_FALSE11
@Ball.move$IF_FALSE11
0 ; JMP
//label IF_TRUE11
(Ball.move$IF_TRUE11)
//push constant 4
@4
D = A
@SP
M = M + 1
A = M - 1
M = D
//pop this 14
@THIS
D = M
@14
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
//push this 13
@13
D = A
@THIS
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
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
//label IF_FALSE11
(Ball.move$IF_FALSE11)
//push pointer 0
@3
D = M
@SP
M = M + 1
A = M - 1
M = D
//call Ball.show 1
@Ball.show
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_16
D = A
@call_command
0 ; JMP
(RET_CALL_16)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push this 14
@14
D = A
@THIS
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//return
@return_command
0 ; JMP
//function Ball.bounce 5
(Ball.bounce)
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
//push constant 10
@10
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Math.divide 2
@Math.divide
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_17
D = A
@call_command
0 ; JMP
(RET_CALL_17)
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
//push this 3
@3
D = A
@THIS
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
@Math.divide
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_18
D = A
@call_command
0 ; JMP
(RET_CALL_18)
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
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//eq
@eq_end10
D = A
@eq_command
0 ; JMP
(eq_end10)
//if-goto IF_TRUE12
@SP
AM = M - 1
D = M
@Ball.bounce$IF_TRUE12
D ; JNE
//goto IF_FALSE12
@Ball.bounce$IF_FALSE12
0 ; JMP
//label IF_TRUE12
(Ball.bounce$IF_TRUE12)
//push constant 10
@10
D = A
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
//goto IF_END12
@Ball.bounce$IF_END12
0 ; JMP
//label IF_FALSE12
(Ball.bounce$IF_FALSE12)
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
//lt
@lt_end11
D = A
@lt_command
0 ; JMP
(lt_end11)
//not
@SP
A = M - 1
M = !M
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
//eq
@eq_end12
D = A
@eq_command
0 ; JMP
(eq_end12)
//and
@SP
AM = M - 1
D = M
A = A - 1
M = D & M
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
//lt
@lt_end13
D = A
@lt_command
0 ; JMP
(lt_end13)
//or
@SP
AM = M - 1
D = M
A = A - 1
M = D | M
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
//neg
@SP
A = M - 1
M = -M
//eq
@eq_end14
D = A
@eq_command
0 ; JMP
(eq_end14)
//and
@SP
AM = M - 1
D = M
A = A - 1
M = D & M
//if-goto IF_TRUE13
@SP
AM = M - 1
D = M
@Ball.bounce$IF_TRUE13
D ; JNE
//goto IF_FALSE13
@Ball.bounce$IF_FALSE13
0 ; JMP
//label IF_TRUE13
(Ball.bounce$IF_TRUE13)
//push constant 20
@20
D = A
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
//goto IF_END13
@Ball.bounce$IF_END13
0 ; JMP
//label IF_FALSE13
(Ball.bounce$IF_FALSE13)
//push constant 5
@5
D = A
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
//label IF_END13
(Ball.bounce$IF_END13)
//label IF_END12
(Ball.bounce$IF_END12)
//push this 14
@14
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
//eq
@eq_end15
D = A
@eq_command
0 ; JMP
(eq_end15)
//if-goto IF_TRUE14
@SP
AM = M - 1
D = M
@Ball.bounce$IF_TRUE14
D ; JNE
//goto IF_FALSE14
@Ball.bounce$IF_FALSE14
0 ; JMP
//label IF_TRUE14
(Ball.bounce$IF_TRUE14)
//push constant 506
@506
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
//push constant 50
@50
D = A
@SP
M = M + 1
A = M - 1
M = D
//neg
@SP
A = M - 1
M = -M
//call Math.multiply 2
@Math.multiply
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_19
D = A
@call_command
0 ; JMP
(RET_CALL_19)
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
//call Math.divide 2
@Math.divide
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_20
D = A
@call_command
0 ; JMP
(RET_CALL_20)
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
//call Math.multiply 2
@Math.multiply
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_21
D = A
@call_command
0 ; JMP
(RET_CALL_21)
//add
@SP
AM = M - 1
D = M
A = A - 1
M = D + M
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
//goto IF_END14
@Ball.bounce$IF_END14
0 ; JMP
//label IF_FALSE14
(Ball.bounce$IF_FALSE14)
//push this 14
@14
D = A
@THIS
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
//eq
@eq_end16
D = A
@eq_command
0 ; JMP
(eq_end16)
//if-goto IF_TRUE15
@SP
AM = M - 1
D = M
@Ball.bounce$IF_TRUE15
D ; JNE
//goto IF_FALSE15
@Ball.bounce$IF_FALSE15
0 ; JMP
//label IF_TRUE15
(Ball.bounce$IF_TRUE15)
//push constant 0
@0
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
//push constant 50
@50
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Math.multiply 2
@Math.multiply
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_22
D = A
@call_command
0 ; JMP
(RET_CALL_22)
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
//call Math.divide 2
@Math.divide
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_23
D = A
@call_command
0 ; JMP
(RET_CALL_23)
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
//call Math.multiply 2
@Math.multiply
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_24
D = A
@call_command
0 ; JMP
(RET_CALL_24)
//add
@SP
AM = M - 1
D = M
A = A - 1
M = D + M
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
//goto IF_END15
@Ball.bounce$IF_END15
0 ; JMP
//label IF_FALSE15
(Ball.bounce$IF_FALSE15)
//push this 14
@14
D = A
@THIS
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
//eq
@eq_end17
D = A
@eq_command
0 ; JMP
(eq_end17)
//if-goto IF_TRUE16
@SP
AM = M - 1
D = M
@Ball.bounce$IF_TRUE16
D ; JNE
//goto IF_FALSE16
@Ball.bounce$IF_FALSE16
0 ; JMP
//label IF_TRUE16
(Ball.bounce$IF_TRUE16)
//push constant 250
@250
D = A
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
//push constant 25
@25
D = A
@SP
M = M + 1
A = M - 1
M = D
//neg
@SP
A = M - 1
M = -M
//call Math.multiply 2
@Math.multiply
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_25
D = A
@call_command
0 ; JMP
(RET_CALL_25)
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
//call Math.divide 2
@Math.divide
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_26
D = A
@call_command
0 ; JMP
(RET_CALL_26)
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
//call Math.multiply 2
@Math.multiply
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_27
D = A
@call_command
0 ; JMP
(RET_CALL_27)
//add
@SP
AM = M - 1
D = M
A = A - 1
M = D + M
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
//goto IF_END16
@Ball.bounce$IF_END16
0 ; JMP
//label IF_FALSE16
(Ball.bounce$IF_FALSE16)
//push constant 0
@0
D = A
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
//push constant 25
@25
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Math.multiply 2
@Math.multiply
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_28
D = A
@call_command
0 ; JMP
(RET_CALL_28)
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
//call Math.divide 2
@Math.divide
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_29
D = A
@call_command
0 ; JMP
(RET_CALL_29)
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
//call Math.multiply 2
@Math.multiply
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_30
D = A
@call_command
0 ; JMP
(RET_CALL_30)
//add
@SP
AM = M - 1
D = M
A = A - 1
M = D + M
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
//label IF_END16
(Ball.bounce$IF_END16)
//label IF_END15
(Ball.bounce$IF_END15)
//label IF_END14
(Ball.bounce$IF_END14)
//push pointer 0
@3
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
//call Ball.setDestination 3
@Ball.setDestination
D = A
@R15
M = D
@3
D = A
@R14
M = D
@RET_CALL_31
D = A
@call_command
0 ; JMP
(RET_CALL_31)
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
@return_command
0 ; JMP
//function Bat.new 0
(Bat.new)
//push constant 5
@5
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Memory.alloc 1
@Memory.alloc
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_32
D = A
@call_command
0 ; JMP
(RET_CALL_32)
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
//pop this 3
@THIS
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
//push constant 2
@2
D = A
@SP
M = M + 1
A = M - 1
M = D
//pop this 4
@THIS
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
//push pointer 0
@3
D = M
@SP
M = M + 1
A = M - 1
M = D
//call Bat.show 1
@Bat.show
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_33
D = A
@call_command
0 ; JMP
(RET_CALL_33)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push pointer 0
@3
D = M
@SP
M = M + 1
A = M - 1
M = D
//return
@return_command
0 ; JMP
//function Bat.dispose 0
(Bat.dispose)
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
@Memory.deAlloc
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_34
D = A
@call_command
0 ; JMP
(RET_CALL_34)
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
@return_command
0 ; JMP
//function Bat.show 0
(Bat.show)
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
//push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
//neg
@SP
A = M - 1
M = -M
//call Screen.setColor 1
@Screen.setColor
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_35
D = A
@call_command
0 ; JMP
(RET_CALL_35)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push pointer 0
@3
D = M
@SP
M = M + 1
A = M - 1
M = D
//call Bat.draw 1
@Bat.draw
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_36
D = A
@call_command
0 ; JMP
(RET_CALL_36)
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
@return_command
0 ; JMP
//function Bat.hide 0
(Bat.hide)
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
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Screen.setColor 1
@Screen.setColor
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_37
D = A
@call_command
0 ; JMP
(RET_CALL_37)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push pointer 0
@3
D = M
@SP
M = M + 1
A = M - 1
M = D
//call Bat.draw 1
@Bat.draw
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_38
D = A
@call_command
0 ; JMP
(RET_CALL_38)
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
@return_command
0 ; JMP
//function Bat.draw 0
(Bat.draw)
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
//add
@SP
AM = M - 1
D = M
A = A - 1
M = D + M
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
//push this 3
@3
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
A = A - 1
M = D + M
//call Screen.drawRectangle 4
@Screen.drawRectangle
D = A
@R15
M = D
@4
D = A
@R14
M = D
@RET_CALL_39
D = A
@call_command
0 ; JMP
(RET_CALL_39)
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
@return_command
0 ; JMP
//function Bat.setDirection 0
(Bat.setDirection)
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
//pop this 4
@THIS
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
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//return
@return_command
0 ; JMP
//function Bat.getLeft 0
(Bat.getLeft)
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
//return
@return_command
0 ; JMP
//function Bat.getRight 0
(Bat.getRight)
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
//add
@SP
AM = M - 1
D = M
A = A - 1
M = D + M
//return
@return_command
0 ; JMP
//function Bat.setWidth 0
(Bat.setWidth)
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
//call Bat.hide 1
@Bat.hide
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_40
D = A
@call_command
0 ; JMP
(RET_CALL_40)
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
//call Bat.show 1
@Bat.show
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_41
D = A
@call_command
0 ; JMP
(RET_CALL_41)
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
@return_command
0 ; JMP
//function Bat.move 0
(Bat.move)
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
//push this 4
@4
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
//eq
@eq_end18
D = A
@eq_command
0 ; JMP
(eq_end18)
//if-goto IF_TRUE0
@SP
AM = M - 1
D = M
@Bat.move$IF_TRUE0
D ; JNE
//goto IF_FALSE0
@Bat.move$IF_FALSE0
0 ; JMP
//label IF_TRUE0
(Bat.move$IF_TRUE0)
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
//push constant 4
@4
D = A
@SP
M = M + 1
A = M - 1
M = D
//sub
@SP
AM = M - 1
D = M
A = A - 1
M = M - D
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
//lt
@lt_end19
D = A
@lt_command
0 ; JMP
(lt_end19)
//if-goto IF_TRUE1
@SP
AM = M - 1
D = M
@Bat.move$IF_TRUE1
D ; JNE
//goto IF_FALSE1
@Bat.move$IF_FALSE1
0 ; JMP
//label IF_TRUE1
(Bat.move$IF_TRUE1)
//push constant 0
@0
D = A
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
//label IF_FALSE1
(Bat.move$IF_FALSE1)
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Screen.setColor 1
@Screen.setColor
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_42
D = A
@call_command
0 ; JMP
(RET_CALL_42)
//pop temp 0
@SP
AM = M - 1
D = M
@5
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
//add
@SP
AM = M - 1
D = M
A = A - 1
M = D + M
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
A = A - 1
M = D + M
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
//add
@SP
AM = M - 1
D = M
A = A - 1
M = D + M
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
A = A - 1
M = D + M
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
//push this 3
@3
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
A = A - 1
M = D + M
//call Screen.drawRectangle 4
@Screen.drawRectangle
D = A
@R15
M = D
@4
D = A
@R14
M = D
@RET_CALL_43
D = A
@call_command
0 ; JMP
(RET_CALL_43)
//pop temp 0
@SP
AM = M - 1
D = M
@5
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
A = M - 1
M = -M
//call Screen.setColor 1
@Screen.setColor
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_44
D = A
@call_command
0 ; JMP
(RET_CALL_44)
//pop temp 0
@SP
AM = M - 1
D = M
@5
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
A = A - 1
M = D + M
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
//push this 3
@3
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
A = A - 1
M = D + M
//call Screen.drawRectangle 4
@Screen.drawRectangle
D = A
@R15
M = D
@4
D = A
@R14
M = D
@RET_CALL_45
D = A
@call_command
0 ; JMP
(RET_CALL_45)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//goto IF_END0
@Bat.move$IF_END0
0 ; JMP
//label IF_FALSE0
(Bat.move$IF_FALSE0)
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
A = A - 1
M = D + M
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
//add
@SP
AM = M - 1
D = M
A = A - 1
M = D + M
//push constant 511
@511
D = A
@SP
M = M + 1
A = M - 1
M = D
//gt
@gt_end20
D = A
@gt_command
0 ; JMP
(gt_end20)
//if-goto IF_TRUE2
@SP
AM = M - 1
D = M
@Bat.move$IF_TRUE2
D ; JNE
//goto IF_FALSE2
@Bat.move$IF_FALSE2
0 ; JMP
//label IF_TRUE2
(Bat.move$IF_TRUE2)
//push constant 511
@511
D = A
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
//sub
@SP
AM = M - 1
D = M
A = A - 1
M = M - D
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
//label IF_FALSE2
(Bat.move$IF_FALSE2)
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Screen.setColor 1
@Screen.setColor
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_46
D = A
@call_command
0 ; JMP
(RET_CALL_46)
//pop temp 0
@SP
AM = M - 1
D = M
@5
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
//push constant 4
@4
D = A
@SP
M = M + 1
A = M - 1
M = D
//sub
@SP
AM = M - 1
D = M
A = A - 1
M = M - D
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
A = A - 1
M = M - D
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
//push this 3
@3
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
A = A - 1
M = D + M
//call Screen.drawRectangle 4
@Screen.drawRectangle
D = A
@R15
M = D
@4
D = A
@R14
M = D
@RET_CALL_47
D = A
@call_command
0 ; JMP
(RET_CALL_47)
//pop temp 0
@SP
AM = M - 1
D = M
@5
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
A = M - 1
M = -M
//call Screen.setColor 1
@Screen.setColor
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_48
D = A
@call_command
0 ; JMP
(RET_CALL_48)
//pop temp 0
@SP
AM = M - 1
D = M
@5
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
//add
@SP
AM = M - 1
D = M
A = A - 1
M = D + M
//push constant 3
@3
D = A
@SP
M = M + 1
A = M - 1
M = D
//sub
@SP
AM = M - 1
D = M
A = A - 1
M = M - D
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
//add
@SP
AM = M - 1
D = M
A = A - 1
M = D + M
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
//push this 3
@3
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
A = A - 1
M = D + M
//call Screen.drawRectangle 4
@Screen.drawRectangle
D = A
@R15
M = D
@4
D = A
@R14
M = D
@RET_CALL_49
D = A
@call_command
0 ; JMP
(RET_CALL_49)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//label IF_END0
(Bat.move$IF_END0)
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//return
@return_command
0 ; JMP
//function Keyboard.init 0
(Keyboard.init)
//push constant 64
@64
D = A
@SP
M = M + 1
A = M - 1
M = D
//call String.new 1
@String.new
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_50
D = A
@call_command
0 ; JMP
(RET_CALL_50)
//pop static 0
@SP
AM = M - 1
D = M
@Keyboard.0
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//return
@return_command
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
@Memory.peek
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_51
D = A
@call_command
0 ; JMP
(RET_CALL_51)
//return
@return_command
0 ; JMP
//function Keyboard.readChar 1
(Keyboard.readChar)
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
@Output.printChar
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_52
D = A
@call_command
0 ; JMP
(RET_CALL_52)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//label WHILE_EXP0
(Keyboard.readChar$WHILE_EXP0)
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
@eq_end21
D = A
@eq_command
0 ; JMP
(eq_end21)
//not
@SP
A = M - 1
M = !M
//if-goto WHILE_END0
@SP
AM = M - 1
D = M
@Keyboard.readChar$WHILE_END0
D ; JNE
//push constant 24576
@24576
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Memory.peek 1
@Memory.peek
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_53
D = A
@call_command
0 ; JMP
(RET_CALL_53)
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
@Keyboard.readChar$WHILE_EXP0
0 ; JMP
//label WHILE_END0
(Keyboard.readChar$WHILE_END0)
//call Output.backSpace 0
@Output.backSpace
D = A
@R15
M = D
@0
D = A
@R14
M = D
@RET_CALL_54
D = A
@call_command
0 ; JMP
(RET_CALL_54)
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
//call Output.printChar 1
@Output.printChar
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_55
D = A
@call_command
0 ; JMP
(RET_CALL_55)
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
//return
@return_command
0 ; JMP
//function Keyboard.readLine 1
(Keyboard.readLine)
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push static 0
@Keyboard.0
D = M
@SP
M = M + 1
A = M - 1
M = D
//call String.dispose 1
@String.dispose
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_56
D = A
@call_command
0 ; JMP
(RET_CALL_56)
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
//call String.new 1
@String.new
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_57
D = A
@call_command
0 ; JMP
(RET_CALL_57)
//pop static 0
@SP
AM = M - 1
D = M
@Keyboard.0
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
@Output.printString
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_58
D = A
@call_command
0 ; JMP
(RET_CALL_58)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//call Keyboard.readChar 0
@Keyboard.readChar
D = A
@R15
M = D
@0
D = A
@R14
M = D
@RET_CALL_59
D = A
@call_command
0 ; JMP
(RET_CALL_59)
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
//push constant 200
@200
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Sys.wait 1
@Sys.wait
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_60
D = A
@call_command
0 ; JMP
(RET_CALL_60)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//label WHILE_EXP1
(Keyboard.readLine$WHILE_EXP1)
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
//call String.newLine 0
@String.newLine
D = A
@R15
M = D
@0
D = A
@R14
M = D
@RET_CALL_61
D = A
@call_command
0 ; JMP
(RET_CALL_61)
//eq
@eq_end22
D = A
@eq_command
0 ; JMP
(eq_end22)
//not
@SP
A = M - 1
M = !M
//not
@SP
A = M - 1
M = !M
//if-goto WHILE_END1
@SP
AM = M - 1
D = M
@Keyboard.readLine$WHILE_END1
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
//call String.backSpace 0
@String.backSpace
D = A
@R15
M = D
@0
D = A
@R14
M = D
@RET_CALL_62
D = A
@call_command
0 ; JMP
(RET_CALL_62)
//eq
@eq_end23
D = A
@eq_command
0 ; JMP
(eq_end23)
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
//push static 0
@Keyboard.0
D = M
@SP
M = M + 1
A = M - 1
M = D
//call String.eraseLastChar 1
@String.eraseLastChar
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_63
D = A
@call_command
0 ; JMP
(RET_CALL_63)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//goto IF_END0
@Keyboard.readLine$IF_END0
0 ; JMP
//label IF_FALSE0
(Keyboard.readLine$IF_FALSE0)
//push static 0
@Keyboard.0
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
@String.appendChar
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_64
D = A
@call_command
0 ; JMP
(RET_CALL_64)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//label IF_END0
(Keyboard.readLine$IF_END0)
//call Keyboard.readChar 0
@Keyboard.readChar
D = A
@R15
M = D
@0
D = A
@R14
M = D
@RET_CALL_65
D = A
@call_command
0 ; JMP
(RET_CALL_65)
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
//push constant 200
@200
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Sys.wait 1
@Sys.wait
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_66
D = A
@call_command
0 ; JMP
(RET_CALL_66)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//goto WHILE_EXP1
@Keyboard.readLine$WHILE_EXP1
0 ; JMP
//label WHILE_END1
(Keyboard.readLine$WHILE_END1)
//push static 0
@Keyboard.0
D = M
@SP
M = M + 1
A = M - 1
M = D
//return
@return_command
0 ; JMP
//function Keyboard.readInt 3
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
@Keyboard.readLine
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_67
D = A
@call_command
0 ; JMP
(RET_CALL_67)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push static 0
@Keyboard.0
D = M
@SP
M = M + 1
A = M - 1
M = D
//call String.intValue 1
@String.intValue
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_68
D = A
@call_command
0 ; JMP
(RET_CALL_68)
//return
@return_command
0 ; JMP
//function Main.main 1
(Main.main)
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call PongGame.newInstance 0
@PongGame.newInstance
D = A
@R15
M = D
@0
D = A
@R14
M = D
@RET_CALL_69
D = A
@call_command
0 ; JMP
(RET_CALL_69)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//call PongGame.getInstance 0
@PongGame.getInstance
D = A
@R15
M = D
@0
D = A
@R14
M = D
@RET_CALL_70
D = A
@call_command
0 ; JMP
(RET_CALL_70)
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
//call PongGame.run 1
@PongGame.run
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_71
D = A
@call_command
0 ; JMP
(RET_CALL_71)
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
//call PongGame.dispose 1
@PongGame.dispose
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_72
D = A
@call_command
0 ; JMP
(RET_CALL_72)
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
@return_command
0 ; JMP
//function Math.init 2
(Math.init)
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
//push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Array.new 1
@Array.new
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_73
D = A
@call_command
0 ; JMP
(RET_CALL_73)
//pop static 0
@SP
AM = M - 1
D = M
@Math.0
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
//push constant 0
@0
D = A
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
(Math.init$WHILE_EXP0)
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
//push constant 15
@15
D = A
@SP
M = M + 1
A = M - 1
M = D
//lt
@lt_end24
D = A
@lt_command
0 ; JMP
(lt_end24)
//not
@SP
A = M - 1
M = !M
//if-goto WHILE_END0
@SP
AM = M - 1
D = M
@Math.init$WHILE_END0
D ; JNE
//push static 0
@Math.0
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
A = A - 1
M = D + M
//pop temp 1
@SP
AM = M - 1
D = M
@6
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
//push temp 1
@6
D = M
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
A = A - 1
M = D + M
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
A = A - 1
M = D + M
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
@Math.init$WHILE_EXP0
0 ; JMP
//label WHILE_END0
(Math.init$WHILE_END0)
//push static 0
@Math.0
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
//add
@SP
AM = M - 1
D = M
A = A - 1
M = D + M
//pop temp 1
@SP
AM = M - 1
D = M
@6
M = D
//push constant 32767
@32767
D = A
@SP
M = M + 1
A = M - 1
M = D
//not
@SP
A = M - 1
M = !M
//push temp 1
@6
D = M
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
@return_command
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
@lt_end25
D = A
@lt_command
0 ; JMP
(lt_end25)
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
A = M - 1
M = -M
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
@return_command
0 ; JMP
//function Math.multiply 4
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
//push constant 0
@0
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
//push constant 0
@0
D = A
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
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//lt
@lt_end26
D = A
@lt_command
0 ; JMP
(lt_end26)
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
@gt_end27
D = A
@gt_command
0 ; JMP
(gt_end27)
//and
@SP
AM = M - 1
D = M
A = A - 1
M = D & M
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
@gt_end28
D = A
@gt_command
0 ; JMP
(gt_end28)
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
@lt_end29
D = A
@lt_command
0 ; JMP
(lt_end29)
//and
@SP
AM = M - 1
D = M
A = A - 1
M = D & M
//or
@SP
AM = M - 1
D = M
A = A - 1
M = D | M
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
//call Math.abs 1
@Math.abs
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_74
D = A
@call_command
0 ; JMP
(RET_CALL_74)
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
@Math.abs
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_75
D = A
@call_command
0 ; JMP
(RET_CALL_75)
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
@lt_end30
D = A
@lt_command
0 ; JMP
(lt_end30)
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
(Math.multiply$IF_FALSE1)
//label WHILE_EXP1
(Math.multiply$WHILE_EXP1)
//push static 0
@Math.0
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
A = A - 1
M = D + M
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
//gt
@gt_end31
D = A
@gt_command
0 ; JMP
(gt_end31)
//not
@SP
A = M - 1
M = !M
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
//push constant 15
@15
D = A
@SP
M = M + 1
A = M - 1
M = D
//lt
@lt_end32
D = A
@lt_command
0 ; JMP
(lt_end32)
//and
@SP
AM = M - 1
D = M
A = A - 1
M = D & M
//not
@SP
A = M - 1
M = !M
//if-goto WHILE_END1
@SP
AM = M - 1
D = M
@Math.multiply$WHILE_END1
D ; JNE
//push static 0
@Math.0
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
A = A - 1
M = D + M
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
A = A - 1
M = D & M
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
A = A - 1
M = D + M
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
A = A - 1
M = D + M
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
A = A - 1
M = D + M
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
//goto WHILE_EXP1
@Math.multiply$WHILE_EXP1
0 ; JMP
//label WHILE_END1
(Math.multiply$WHILE_END1)
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
//if-goto IF_TRUE3
@SP
AM = M - 1
D = M
@Math.multiply$IF_TRUE3
D ; JNE
//goto IF_FALSE3
@Math.multiply$IF_FALSE3
0 ; JMP
//label IF_TRUE3
(Math.multiply$IF_TRUE3)
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
A = M - 1
M = -M
//return
@return_command
0 ; JMP
//label IF_FALSE3
(Math.multiply$IF_FALSE3)
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
@return_command
0 ; JMP
//function Math.divide 3
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
@lt_end33
D = A
@lt_command
0 ; JMP
(lt_end33)
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
@gt_end34
D = A
@gt_command
0 ; JMP
(gt_end34)
//and
@SP
AM = M - 1
D = M
A = A - 1
M = D & M
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
@gt_end35
D = A
@gt_command
0 ; JMP
(gt_end35)
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
@lt_end36
D = A
@lt_command
0 ; JMP
(lt_end36)
//and
@SP
AM = M - 1
D = M
A = A - 1
M = D & M
//or
@SP
AM = M - 1
D = M
A = A - 1
M = D | M
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
//eq
@eq_end37
D = A
@eq_command
0 ; JMP
(eq_end37)
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
//push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Sys.error 1
@Sys.error
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_76
D = A
@call_command
0 ; JMP
(RET_CALL_76)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//label IF_FALSE4
(Math.divide$IF_FALSE4)
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
@Math.abs
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_77
D = A
@call_command
0 ; JMP
(RET_CALL_77)
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
@Math.abs
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_78
D = A
@call_command
0 ; JMP
(RET_CALL_78)
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
@lt_end38
D = A
@lt_command
0 ; JMP
(lt_end38)
//if-goto IF_TRUE5
@SP
AM = M - 1
D = M
@Math.divide$IF_TRUE5
D ; JNE
//goto IF_FALSE5
@Math.divide$IF_FALSE5
0 ; JMP
//label IF_TRUE5
(Math.divide$IF_TRUE5)
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//return
@return_command
0 ; JMP
//label IF_FALSE5
(Math.divide$IF_FALSE5)
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
//add
@SP
AM = M - 1
D = M
A = A - 1
M = D + M
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//lt
@lt_end39
D = A
@lt_command
0 ; JMP
(lt_end39)
//if-goto IF_TRUE6
@SP
AM = M - 1
D = M
@Math.divide$IF_TRUE6
D ; JNE
//goto IF_FALSE6
@Math.divide$IF_FALSE6
0 ; JMP
//label IF_TRUE6
(Math.divide$IF_TRUE6)
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
@lt_end40
D = A
@lt_command
0 ; JMP
(lt_end40)
//if-goto IF_TRUE7
@SP
AM = M - 1
D = M
@Math.divide$IF_TRUE7
D ; JNE
//goto IF_FALSE7
@Math.divide$IF_FALSE7
0 ; JMP
//label IF_TRUE7
(Math.divide$IF_TRUE7)
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//return
@return_command
0 ; JMP
//goto IF_END7
@Math.divide$IF_END7
0 ; JMP
//label IF_FALSE7
(Math.divide$IF_FALSE7)
//push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
//return
@return_command
0 ; JMP
//label IF_END7
(Math.divide$IF_END7)
//label IF_FALSE6
(Math.divide$IF_FALSE6)
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
//push constant 2
@2
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Math.multiply 2
@Math.multiply
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_79
D = A
@call_command
0 ; JMP
(RET_CALL_79)
//call Math.divide 2
@Math.divide
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_80
D = A
@call_command
0 ; JMP
(RET_CALL_80)
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
//call Math.multiply 2
@Math.multiply
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_81
D = A
@call_command
0 ; JMP
(RET_CALL_81)
//push constant 2
@2
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Math.multiply 2
@Math.multiply
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_82
D = A
@call_command
0 ; JMP
(RET_CALL_82)
//sub
@SP
AM = M - 1
D = M
A = A - 1
M = M - D
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
@lt_end41
D = A
@lt_command
0 ; JMP
(lt_end41)
//if-goto IF_TRUE8
@SP
AM = M - 1
D = M
@Math.divide$IF_TRUE8
D ; JNE
//goto IF_FALSE8
@Math.divide$IF_FALSE8
0 ; JMP
//label IF_TRUE8
(Math.divide$IF_TRUE8)
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
//call Math.multiply 2
@Math.multiply
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_83
D = A
@call_command
0 ; JMP
(RET_CALL_83)
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
//goto IF_END8
@Math.divide$IF_END8
0 ; JMP
//label IF_FALSE8
(Math.divide$IF_FALSE8)
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
//call Math.multiply 2
@Math.multiply
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_84
D = A
@call_command
0 ; JMP
(RET_CALL_84)
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
A = A - 1
M = D + M
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
//label IF_END8
(Math.divide$IF_END8)
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
//if-goto IF_TRUE9
@SP
AM = M - 1
D = M
@Math.divide$IF_TRUE9
D ; JNE
//goto IF_FALSE9
@Math.divide$IF_FALSE9
0 ; JMP
//label IF_TRUE9
(Math.divide$IF_TRUE9)
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
A = M - 1
M = -M
//return
@return_command
0 ; JMP
//label IF_FALSE9
(Math.divide$IF_FALSE9)
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
@return_command
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
//push constant 0
@0
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
//push constant 7
@7
D = A
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
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//lt
@lt_end42
D = A
@lt_command
0 ; JMP
(lt_end42)
//if-goto IF_TRUE10
@SP
AM = M - 1
D = M
@Math.sqrt$IF_TRUE10
D ; JNE
//goto IF_FALSE10
@Math.sqrt$IF_FALSE10
0 ; JMP
//label IF_TRUE10
(Math.sqrt$IF_TRUE10)
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Sys.error 1
@Sys.error
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_85
D = A
@call_command
0 ; JMP
(RET_CALL_85)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//label IF_FALSE10
(Math.sqrt$IF_FALSE10)
//label WHILE_EXP2
(Math.sqrt$WHILE_EXP2)
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
//neg
@SP
A = M - 1
M = -M
//gt
@gt_end43
D = A
@gt_command
0 ; JMP
(gt_end43)
//not
@SP
A = M - 1
M = !M
//if-goto WHILE_END2
@SP
AM = M - 1
D = M
@Math.sqrt$WHILE_END2
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
//push static 0
@Math.0
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
A = A - 1
M = D + M
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
A = A - 1
M = D + M
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
@Math.multiply
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_86
D = A
@call_command
0 ; JMP
(RET_CALL_86)
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
@gt_end44
D = A
@gt_command
0 ; JMP
(gt_end44)
//not
@SP
A = M - 1
M = !M
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
@lt_command
0 ; JMP
(lt_end45)
//not
@SP
A = M - 1
M = !M
//and
@SP
AM = M - 1
D = M
A = A - 1
M = D & M
//if-goto IF_TRUE11
@SP
AM = M - 1
D = M
@Math.sqrt$IF_TRUE11
D ; JNE
//goto IF_FALSE11
@Math.sqrt$IF_FALSE11
0 ; JMP
//label IF_TRUE11
(Math.sqrt$IF_TRUE11)
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
//label IF_FALSE11
(Math.sqrt$IF_FALSE11)
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
A = A - 1
M = M - D
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
//goto WHILE_EXP2
@Math.sqrt$WHILE_EXP2
0 ; JMP
//label WHILE_END2
(Math.sqrt$WHILE_END2)
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
@return_command
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
//lt
@lt_end46
D = A
@lt_command
0 ; JMP
(lt_end46)
//if-goto IF_TRUE12
@SP
AM = M - 1
D = M
@Math.max$IF_TRUE12
D ; JNE
//goto IF_FALSE12
@Math.max$IF_FALSE12
0 ; JMP
//label IF_TRUE12
(Math.max$IF_TRUE12)
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
@return_command
0 ; JMP
//label IF_FALSE12
(Math.max$IF_FALSE12)
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
@return_command
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
@lt_end47
D = A
@lt_command
0 ; JMP
(lt_end47)
//if-goto IF_TRUE13
@SP
AM = M - 1
D = M
@Math.min$IF_TRUE13
D ; JNE
//goto IF_FALSE13
@Math.min$IF_FALSE13
0 ; JMP
//label IF_TRUE13
(Math.min$IF_TRUE13)
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
@return_command
0 ; JMP
//label IF_FALSE13
(Math.min$IF_FALSE13)
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
@return_command
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
//push static 0
@Memory.0
D = M
@SP
M = M + 1
A = M - 1
M = D
//push constant 2048
@2048
D = A
@SP
M = M + 1
A = M - 1
M = D
//add
@SP
AM = M - 1
D = M
A = A - 1
M = D + M
//pop temp 1
@SP
AM = M - 1
D = M
@6
M = D
//push constant 14336
@14336
D = A
@SP
M = M + 1
A = M - 1
M = D
//push temp 1
@6
D = M
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
//push static 0
@Memory.0
D = M
@SP
M = M + 1
A = M - 1
M = D
//push constant 2049
@2049
D = A
@SP
M = M + 1
A = M - 1
M = D
//add
@SP
AM = M - 1
D = M
A = A - 1
M = D + M
//pop temp 1
@SP
AM = M - 1
D = M
@6
M = D
//push constant 16384
@16384
D = A
@SP
M = M + 1
A = M - 1
M = D
//push temp 1
@6
D = M
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
@return_command
0 ; JMP
//function Memory.peek 0
(Memory.peek)
//push static 0
@Memory.0
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
A = A - 1
M = D + M
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
@return_command
0 ; JMP
//function Memory.poke 0
(Memory.poke)
//push static 0
@Memory.0
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
A = A - 1
M = D + M
//pop temp 1
@SP
AM = M - 1
D = M
@6
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
//push temp 1
@6
D = M
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
@return_command
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
@lt_end48
D = A
@lt_command
0 ; JMP
(lt_end48)
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
//push constant 4
@4
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Sys.error 1
@Sys.error
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_87
D = A
@call_command
0 ; JMP
(RET_CALL_87)
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
//add
@SP
AM = M - 1
D = M
A = A - 1
M = D + M
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
A = A - 1
M = D + M
//lt
@lt_end49
D = A
@lt_command
0 ; JMP
(lt_end49)
//not
@SP
A = M - 1
M = !M
//if-goto WHILE_END0
@SP
AM = M - 1
D = M
@Memory.alloc$WHILE_END0
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
A = A - 1
M = D + M
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
//add
@SP
AM = M - 1
D = M
A = A - 1
M = D + M
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
A = A - 1
M = D + M
//eq
@eq_end50
D = A
@eq_command
0 ; JMP
(eq_end50)
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
//add
@SP
AM = M - 1
D = M
A = A - 1
M = D + M
//pop temp 1
@SP
AM = M - 1
D = M
@6
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
//add
@SP
AM = M - 1
D = M
A = A - 1
M = D + M
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
A = A - 1
M = M - D
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
A = A - 1
M = M - D
//push temp 1
@6
D = M
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
A = A - 1
M = D + M
//pop temp 1
@SP
AM = M - 1
D = M
@6
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
//add
@SP
AM = M - 1
D = M
A = A - 1
M = D + M
//push temp 1
@6
D = M
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
A = A - 1
M = D + M
//return
@return_command
0 ; JMP
//label IF_FALSE1
(Memory.alloc$IF_FALSE1)
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
A = A - 1
M = D + M
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
@eq_end51
D = A
@eq_command
0 ; JMP
(eq_end51)
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
//push constant 5
@5
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Sys.error 1
@Sys.error
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_88
D = A
@call_command
0 ; JMP
(RET_CALL_88)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//label IF_FALSE2
(Memory.alloc$IF_FALSE2)
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
A = A - 1
M = D + M
//add
@SP
AM = M - 1
D = M
A = A - 1
M = D + M
//pop temp 1
@SP
AM = M - 1
D = M
@6
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
//add
@SP
AM = M - 1
D = M
A = A - 1
M = D + M
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
A = A - 1
M = M - D
//push constant 3
@3
D = A
@SP
M = M + 1
A = M - 1
M = D
//sub
@SP
AM = M - 1
D = M
A = A - 1
M = M - D
//push temp 1
@6
D = M
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
A = A - 1
M = D + M
//add
@SP
AM = M - 1
D = M
A = A - 1
M = D + M
//pop temp 1
@SP
AM = M - 1
D = M
@6
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
A = A - 1
M = D + M
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
//push temp 1
@6
D = M
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
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//add
@SP
AM = M - 1
D = M
A = A - 1
M = D + M
//pop temp 1
@SP
AM = M - 1
D = M
@6
M = D
//push constant 2
@2
D = A
@SP
M = M + 1
A = M - 1
M = D
//push temp 1
@6
D = M
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
A = A - 1
M = D + M
//pop temp 1
@SP
AM = M - 1
D = M
@6
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
A = A - 1
M = D + M
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
A = A - 1
M = D + M
//push temp 1
@6
D = M
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
A = A - 1
M = D + M
//pop temp 1
@SP
AM = M - 1
D = M
@6
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
//add
@SP
AM = M - 1
D = M
A = A - 1
M = D + M
//push temp 1
@6
D = M
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
A = A - 1
M = D + M
//return
@return_command
0 ; JMP
//function Memory.deAlloc 1
(Memory.deAlloc)
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
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
//label WHILE_EXP1
(Memory.deAlloc$WHILE_EXP1)
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
A = A - 1
M = D + M
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
@lt_end52
D = A
@lt_command
0 ; JMP
(lt_end52)
//not
@SP
A = M - 1
M = !M
//if-goto WHILE_END1
@SP
AM = M - 1
D = M
@Memory.deAlloc$WHILE_END1
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
A = A - 1
M = D + M
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
//goto WHILE_EXP1
@Memory.deAlloc$WHILE_EXP1
0 ; JMP
//label WHILE_END1
(Memory.deAlloc$WHILE_END1)
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
//add
@SP
AM = M - 1
D = M
A = A - 1
M = D + M
//pop temp 1
@SP
AM = M - 1
D = M
@6
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
//add
@SP
AM = M - 1
D = M
A = A - 1
M = D + M
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
//push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
//neg
@SP
A = M - 1
M = -M
//add
@SP
AM = M - 1
D = M
A = A - 1
M = D + M
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
A = A - 1
M = D + M
//push static 0
@Memory.0
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
//add
@SP
AM = M - 1
D = M
A = A - 1
M = D + M
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
A = A - 1
M = D + M
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
A = A - 1
M = D + M
//push temp 1
@6
D = M
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
A = A - 1
M = D + M
//pop temp 1
@SP
AM = M - 1
D = M
@6
M = D
//push static 0
@Memory.0
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
//add
@SP
AM = M - 1
D = M
A = A - 1
M = D + M
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
//add
@SP
AM = M - 1
D = M
A = A - 1
M = D + M
//add
@SP
AM = M - 1
D = M
A = A - 1
M = D + M
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
//push temp 1
@6
D = M
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
@return_command
0 ; JMP
//function Output.init 0
(Output.init)
//call Output.initMap 0
@Output.initMap
D = A
@R15
M = D
@0
D = A
@R14
M = D
@RET_CALL_89
D = A
@call_command
0 ; JMP
(RET_CALL_89)
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
//pop static 2
@SP
AM = M - 1
D = M
@Output.2
M = D
//push constant 0
@0
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
//push constant 16384
@16384
D = A
@SP
M = M + 1
A = M - 1
M = D
//pop static 3
@SP
AM = M - 1
D = M
@Output.3
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//return
@return_command
0 ; JMP
//function Output.initMap 1
(Output.initMap)
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
@Array.new
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_90
D = A
@call_command
0 ; JMP
(RET_CALL_90)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_91
D = A
@call_command
0 ; JMP
(RET_CALL_91)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_92
D = A
@call_command
0 ; JMP
(RET_CALL_92)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_93
D = A
@call_command
0 ; JMP
(RET_CALL_93)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_94
D = A
@call_command
0 ; JMP
(RET_CALL_94)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_95
D = A
@call_command
0 ; JMP
(RET_CALL_95)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_96
D = A
@call_command
0 ; JMP
(RET_CALL_96)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_97
D = A
@call_command
0 ; JMP
(RET_CALL_97)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_98
D = A
@call_command
0 ; JMP
(RET_CALL_98)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_99
D = A
@call_command
0 ; JMP
(RET_CALL_99)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_100
D = A
@call_command
0 ; JMP
(RET_CALL_100)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_101
D = A
@call_command
0 ; JMP
(RET_CALL_101)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_102
D = A
@call_command
0 ; JMP
(RET_CALL_102)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_103
D = A
@call_command
0 ; JMP
(RET_CALL_103)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_104
D = A
@call_command
0 ; JMP
(RET_CALL_104)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_105
D = A
@call_command
0 ; JMP
(RET_CALL_105)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_106
D = A
@call_command
0 ; JMP
(RET_CALL_106)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_107
D = A
@call_command
0 ; JMP
(RET_CALL_107)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_108
D = A
@call_command
0 ; JMP
(RET_CALL_108)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_109
D = A
@call_command
0 ; JMP
(RET_CALL_109)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_110
D = A
@call_command
0 ; JMP
(RET_CALL_110)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_111
D = A
@call_command
0 ; JMP
(RET_CALL_111)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_112
D = A
@call_command
0 ; JMP
(RET_CALL_112)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_113
D = A
@call_command
0 ; JMP
(RET_CALL_113)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_114
D = A
@call_command
0 ; JMP
(RET_CALL_114)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_115
D = A
@call_command
0 ; JMP
(RET_CALL_115)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_116
D = A
@call_command
0 ; JMP
(RET_CALL_116)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_117
D = A
@call_command
0 ; JMP
(RET_CALL_117)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_118
D = A
@call_command
0 ; JMP
(RET_CALL_118)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_119
D = A
@call_command
0 ; JMP
(RET_CALL_119)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_120
D = A
@call_command
0 ; JMP
(RET_CALL_120)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_121
D = A
@call_command
0 ; JMP
(RET_CALL_121)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_122
D = A
@call_command
0 ; JMP
(RET_CALL_122)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_123
D = A
@call_command
0 ; JMP
(RET_CALL_123)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_124
D = A
@call_command
0 ; JMP
(RET_CALL_124)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_125
D = A
@call_command
0 ; JMP
(RET_CALL_125)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_126
D = A
@call_command
0 ; JMP
(RET_CALL_126)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_127
D = A
@call_command
0 ; JMP
(RET_CALL_127)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_128
D = A
@call_command
0 ; JMP
(RET_CALL_128)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_129
D = A
@call_command
0 ; JMP
(RET_CALL_129)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_130
D = A
@call_command
0 ; JMP
(RET_CALL_130)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_131
D = A
@call_command
0 ; JMP
(RET_CALL_131)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_132
D = A
@call_command
0 ; JMP
(RET_CALL_132)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_133
D = A
@call_command
0 ; JMP
(RET_CALL_133)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_134
D = A
@call_command
0 ; JMP
(RET_CALL_134)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_135
D = A
@call_command
0 ; JMP
(RET_CALL_135)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_136
D = A
@call_command
0 ; JMP
(RET_CALL_136)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_137
D = A
@call_command
0 ; JMP
(RET_CALL_137)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_138
D = A
@call_command
0 ; JMP
(RET_CALL_138)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_139
D = A
@call_command
0 ; JMP
(RET_CALL_139)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_140
D = A
@call_command
0 ; JMP
(RET_CALL_140)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_141
D = A
@call_command
0 ; JMP
(RET_CALL_141)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_142
D = A
@call_command
0 ; JMP
(RET_CALL_142)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_143
D = A
@call_command
0 ; JMP
(RET_CALL_143)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_144
D = A
@call_command
0 ; JMP
(RET_CALL_144)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_145
D = A
@call_command
0 ; JMP
(RET_CALL_145)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_146
D = A
@call_command
0 ; JMP
(RET_CALL_146)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_147
D = A
@call_command
0 ; JMP
(RET_CALL_147)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_148
D = A
@call_command
0 ; JMP
(RET_CALL_148)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_149
D = A
@call_command
0 ; JMP
(RET_CALL_149)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_150
D = A
@call_command
0 ; JMP
(RET_CALL_150)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_151
D = A
@call_command
0 ; JMP
(RET_CALL_151)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_152
D = A
@call_command
0 ; JMP
(RET_CALL_152)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_153
D = A
@call_command
0 ; JMP
(RET_CALL_153)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_154
D = A
@call_command
0 ; JMP
(RET_CALL_154)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_155
D = A
@call_command
0 ; JMP
(RET_CALL_155)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_156
D = A
@call_command
0 ; JMP
(RET_CALL_156)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_157
D = A
@call_command
0 ; JMP
(RET_CALL_157)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_158
D = A
@call_command
0 ; JMP
(RET_CALL_158)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_159
D = A
@call_command
0 ; JMP
(RET_CALL_159)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_160
D = A
@call_command
0 ; JMP
(RET_CALL_160)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_161
D = A
@call_command
0 ; JMP
(RET_CALL_161)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_162
D = A
@call_command
0 ; JMP
(RET_CALL_162)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_163
D = A
@call_command
0 ; JMP
(RET_CALL_163)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_164
D = A
@call_command
0 ; JMP
(RET_CALL_164)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_165
D = A
@call_command
0 ; JMP
(RET_CALL_165)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_166
D = A
@call_command
0 ; JMP
(RET_CALL_166)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_167
D = A
@call_command
0 ; JMP
(RET_CALL_167)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_168
D = A
@call_command
0 ; JMP
(RET_CALL_168)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_169
D = A
@call_command
0 ; JMP
(RET_CALL_169)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_170
D = A
@call_command
0 ; JMP
(RET_CALL_170)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_171
D = A
@call_command
0 ; JMP
(RET_CALL_171)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_172
D = A
@call_command
0 ; JMP
(RET_CALL_172)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_173
D = A
@call_command
0 ; JMP
(RET_CALL_173)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_174
D = A
@call_command
0 ; JMP
(RET_CALL_174)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_175
D = A
@call_command
0 ; JMP
(RET_CALL_175)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_176
D = A
@call_command
0 ; JMP
(RET_CALL_176)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_177
D = A
@call_command
0 ; JMP
(RET_CALL_177)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_178
D = A
@call_command
0 ; JMP
(RET_CALL_178)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_179
D = A
@call_command
0 ; JMP
(RET_CALL_179)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_180
D = A
@call_command
0 ; JMP
(RET_CALL_180)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_181
D = A
@call_command
0 ; JMP
(RET_CALL_181)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_182
D = A
@call_command
0 ; JMP
(RET_CALL_182)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_183
D = A
@call_command
0 ; JMP
(RET_CALL_183)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_184
D = A
@call_command
0 ; JMP
(RET_CALL_184)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_185
D = A
@call_command
0 ; JMP
(RET_CALL_185)
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
@Output.create
D = A
@R15
M = D
@12
D = A
@R14
M = D
@RET_CALL_186
D = A
@call_command
0 ; JMP
(RET_CALL_186)
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
@return_command
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
@Array.new
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_187
D = A
@call_command
0 ; JMP
(RET_CALL_187)
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
//push static 0
@Output.0
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
A = A - 1
M = D + M
//pop temp 1
@SP
AM = M - 1
D = M
@6
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
//push temp 1
@6
D = M
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
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//add
@SP
AM = M - 1
D = M
A = A - 1
M = D + M
//pop temp 1
@SP
AM = M - 1
D = M
@6
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
//push temp 1
@6
D = M
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
A = A - 1
M = D + M
//pop temp 1
@SP
AM = M - 1
D = M
@6
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
//push temp 1
@6
D = M
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
A = A - 1
M = D + M
//pop temp 1
@SP
AM = M - 1
D = M
@6
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
//push temp 1
@6
D = M
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
A = A - 1
M = D + M
//pop temp 1
@SP
AM = M - 1
D = M
@6
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
//push temp 1
@6
D = M
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
A = A - 1
M = D + M
//pop temp 1
@SP
AM = M - 1
D = M
@6
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
//push temp 1
@6
D = M
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
A = A - 1
M = D + M
//pop temp 1
@SP
AM = M - 1
D = M
@6
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
//push temp 1
@6
D = M
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
//push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
//add
@SP
AM = M - 1
D = M
A = A - 1
M = D + M
//pop temp 1
@SP
AM = M - 1
D = M
@6
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
//push temp 1
@6
D = M
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
//push constant 7
@7
D = A
@SP
M = M + 1
A = M - 1
M = D
//add
@SP
AM = M - 1
D = M
A = A - 1
M = D + M
//pop temp 1
@SP
AM = M - 1
D = M
@6
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
//push temp 1
@6
D = M
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
//push constant 8
@8
D = A
@SP
M = M + 1
A = M - 1
M = D
//add
@SP
AM = M - 1
D = M
A = A - 1
M = D + M
//pop temp 1
@SP
AM = M - 1
D = M
@6
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
//push temp 1
@6
D = M
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
//push constant 9
@9
D = A
@SP
M = M + 1
A = M - 1
M = D
//add
@SP
AM = M - 1
D = M
A = A - 1
M = D + M
//pop temp 1
@SP
AM = M - 1
D = M
@6
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
//push temp 1
@6
D = M
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
//push constant 10
@10
D = A
@SP
M = M + 1
A = M - 1
M = D
//add
@SP
AM = M - 1
D = M
A = A - 1
M = D + M
//pop temp 1
@SP
AM = M - 1
D = M
@6
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
//push temp 1
@6
D = M
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
@return_command
0 ; JMP
//function Output.getMap 0
(Output.getMap)
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
@lt_end53
D = A
@lt_command
0 ; JMP
(lt_end53)
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
@gt_end54
D = A
@gt_command
0 ; JMP
(gt_end54)
//or
@SP
AM = M - 1
D = M
A = A - 1
M = D | M
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
//push static 0
@Output.0
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
A = A - 1
M = D + M
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
@return_command
0 ; JMP
//function Output.moveCursor 1
(Output.moveCursor)
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
//pop static 2
@SP
AM = M - 1
D = M
@Output.2
M = D
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
//label WHILE_EXP0
(Output.moveCursor$WHILE_EXP0)
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
//push constant 11
@11
D = A
@SP
M = M + 1
A = M - 1
M = D
//lt
@lt_end55
D = A
@lt_command
0 ; JMP
(lt_end55)
//not
@SP
A = M - 1
M = !M
//if-goto WHILE_END0
@SP
AM = M - 1
D = M
@Output.moveCursor$WHILE_END0
D ; JNE
//push static 1
@Output.1
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
//call Math.multiply 2
@Math.multiply
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_188
D = A
@call_command
0 ; JMP
(RET_CALL_188)
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
A = A - 1
M = D + M
//push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Math.multiply 2
@Math.multiply
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_189
D = A
@call_command
0 ; JMP
(RET_CALL_189)
//push static 2
@Output.2
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
@Math.divide
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_190
D = A
@call_command
0 ; JMP
(RET_CALL_190)
//add
@SP
AM = M - 1
D = M
A = A - 1
M = D + M
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
//push static 2
@Output.2
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
@Math.divide
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_191
D = A
@call_command
0 ; JMP
(RET_CALL_191)
//push constant 2
@2
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Math.multiply 2
@Math.multiply
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_192
D = A
@call_command
0 ; JMP
(RET_CALL_192)
//push static 2
@Output.2
D = M
@SP
M = M + 1
A = M - 1
M = D
//eq
@eq_end56
D = A
@eq_command
0 ; JMP
(eq_end56)
//if-goto IF_TRUE1
@SP
AM = M - 1
D = M
@Output.moveCursor$IF_TRUE1
D ; JNE
//goto IF_FALSE1
@Output.moveCursor$IF_FALSE1
0 ; JMP
//label IF_TRUE1
(Output.moveCursor$IF_TRUE1)
//push static 3
@Output.3
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
A = A - 1
M = D + M
//pop temp 1
@SP
AM = M - 1
D = M
@6
M = D
//push static 3
@Output.3
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
A = A - 1
M = D + M
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
//not
@SP
A = M - 1
M = !M
//and
@SP
AM = M - 1
D = M
A = A - 1
M = D & M
//push temp 1
@6
D = M
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
@Output.moveCursor$IF_END1
0 ; JMP
//label IF_FALSE1
(Output.moveCursor$IF_FALSE1)
//push static 3
@Output.3
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
A = A - 1
M = D + M
//pop temp 1
@SP
AM = M - 1
D = M
@6
M = D
//push static 3
@Output.3
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
A = A - 1
M = D + M
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
A = A - 1
M = D & M
//push temp 1
@6
D = M
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
(Output.moveCursor$IF_END1)
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
//add
@SP
AM = M - 1
D = M
A = A - 1
M = D + M
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
@Output.moveCursor$WHILE_EXP0
0 ; JMP
//label WHILE_END0
(Output.moveCursor$WHILE_END0)
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//return
@return_command
0 ; JMP
//function Output.printChar 3
(Output.printChar)
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
//call String.newLine 0
@String.newLine
D = A
@R15
M = D
@0
D = A
@R14
M = D
@RET_CALL_193
D = A
@call_command
0 ; JMP
(RET_CALL_193)
//eq
@eq_end57
D = A
@eq_command
0 ; JMP
(eq_end57)
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
//call Output.println 0
@Output.println
D = A
@R15
M = D
@0
D = A
@R14
M = D
@RET_CALL_194
D = A
@call_command
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
@return_command
0 ; JMP
//label IF_FALSE2
(Output.printChar$IF_FALSE2)
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
@String.backSpace
D = A
@R15
M = D
@0
D = A
@R14
M = D
@RET_CALL_195
D = A
@call_command
0 ; JMP
(RET_CALL_195)
//eq
@eq_end58
D = A
@eq_command
0 ; JMP
(eq_end58)
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
//call Output.backSpace 0
@Output.backSpace
D = A
@R15
M = D
@0
D = A
@R14
M = D
@RET_CALL_196
D = A
@call_command
0 ; JMP
(RET_CALL_196)
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
@return_command
0 ; JMP
//label IF_FALSE3
(Output.printChar$IF_FALSE3)
//push constant 0
@0
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
@Output.getMap
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_197
D = A
@call_command
0 ; JMP
(RET_CALL_197)
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
//label WHILE_EXP1
(Output.printChar$WHILE_EXP1)
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
//push constant 11
@11
D = A
@SP
M = M + 1
A = M - 1
M = D
//lt
@lt_end59
D = A
@lt_command
0 ; JMP
(lt_end59)
//not
@SP
A = M - 1
M = !M
//if-goto WHILE_END1
@SP
AM = M - 1
D = M
@Output.printChar$WHILE_END1
D ; JNE
//push static 1
@Output.1
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
//call Math.multiply 2
@Math.multiply
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_198
D = A
@call_command
0 ; JMP
(RET_CALL_198)
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
A = A - 1
M = D + M
//push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Math.multiply 2
@Math.multiply
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_199
D = A
@call_command
0 ; JMP
(RET_CALL_199)
//push static 2
@Output.2
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
@Math.divide
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_200
D = A
@call_command
0 ; JMP
(RET_CALL_200)
//add
@SP
AM = M - 1
D = M
A = A - 1
M = D + M
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
//push static 2
@Output.2
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
@Math.divide
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_201
D = A
@call_command
0 ; JMP
(RET_CALL_201)
//push constant 2
@2
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Math.multiply 2
@Math.multiply
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_202
D = A
@call_command
0 ; JMP
(RET_CALL_202)
//push static 2
@Output.2
D = M
@SP
M = M + 1
A = M - 1
M = D
//eq
@eq_end60
D = A
@eq_command
0 ; JMP
(eq_end60)
//if-goto IF_TRUE4
@SP
AM = M - 1
D = M
@Output.printChar$IF_TRUE4
D ; JNE
//goto IF_FALSE4
@Output.printChar$IF_FALSE4
0 ; JMP
//label IF_TRUE4
(Output.printChar$IF_TRUE4)
//push static 3
@Output.3
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
A = A - 1
M = D + M
//pop temp 1
@SP
AM = M - 1
D = M
@6
M = D
//push static 3
@Output.3
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
A = A - 1
M = D + M
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
A = A - 1
M = D + M
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
A = A - 1
M = D + M
//push temp 1
@6
D = M
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
//goto IF_END4
@Output.printChar$IF_END4
0 ; JMP
//label IF_FALSE4
(Output.printChar$IF_FALSE4)
//push static 3
@Output.3
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
A = A - 1
M = D + M
//pop temp 1
@SP
AM = M - 1
D = M
@6
M = D
//push static 3
@Output.3
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
A = A - 1
M = D + M
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
A = A - 1
M = D + M
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
@Math.multiply
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_203
D = A
@call_command
0 ; JMP
(RET_CALL_203)
//add
@SP
AM = M - 1
D = M
A = A - 1
M = D + M
//push temp 1
@6
D = M
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
//label IF_END4
(Output.printChar$IF_END4)
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
A = A - 1
M = D + M
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
@Output.printChar$WHILE_EXP1
0 ; JMP
//label WHILE_END1
(Output.printChar$WHILE_END1)
//push static 2
@Output.2
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
A = A - 1
M = D + M
//pop static 2
@SP
AM = M - 1
D = M
@Output.2
M = D
//push static 2
@Output.2
D = M
@SP
M = M + 1
A = M - 1
M = D
//push constant 64
@64
D = A
@SP
M = M + 1
A = M - 1
M = D
//eq
@eq_end61
D = A
@eq_command
0 ; JMP
(eq_end61)
//if-goto IF_TRUE5
@SP
AM = M - 1
D = M
@Output.printChar$IF_TRUE5
D ; JNE
//goto IF_FALSE5
@Output.printChar$IF_FALSE5
0 ; JMP
//label IF_TRUE5
(Output.printChar$IF_TRUE5)
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
A = A - 1
M = D + M
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
//pop static 2
@SP
AM = M - 1
D = M
@Output.2
M = D
//label IF_FALSE5
(Output.printChar$IF_FALSE5)
//push static 1
@Output.1
D = M
@SP
M = M + 1
A = M - 1
M = D
//push constant 23
@23
D = A
@SP
M = M + 1
A = M - 1
M = D
//eq
@eq_end62
D = A
@eq_command
0 ; JMP
(eq_end62)
//if-goto IF_TRUE6
@SP
AM = M - 1
D = M
@Output.printChar$IF_TRUE6
D ; JNE
//goto IF_FALSE6
@Output.printChar$IF_FALSE6
0 ; JMP
//label IF_TRUE6
(Output.printChar$IF_TRUE6)
//push constant 0
@0
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
//label IF_FALSE6
(Output.printChar$IF_FALSE6)
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//return
@return_command
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
@String.length
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_204
D = A
@call_command
0 ; JMP
(RET_CALL_204)
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
//label WHILE_EXP2
(Output.printString$WHILE_EXP2)
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
@lt_end63
D = A
@lt_command
0 ; JMP
(lt_end63)
//not
@SP
A = M - 1
M = !M
//if-goto WHILE_END2
@SP
AM = M - 1
D = M
@Output.printString$WHILE_END2
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
@String.charAt
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_205
D = A
@call_command
0 ; JMP
(RET_CALL_205)
//call Output.printChar 1
@Output.printChar
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_206
D = A
@call_command
0 ; JMP
(RET_CALL_206)
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
A = A - 1
M = D + M
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
//goto WHILE_EXP2
@Output.printString$WHILE_EXP2
0 ; JMP
//label WHILE_END2
(Output.printString$WHILE_END2)
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//return
@return_command
0 ; JMP
//function Output.printInt 1
(Output.printInt)
@0
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
//call String.new 1
@String.new
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_207
D = A
@call_command
0 ; JMP
(RET_CALL_207)
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
@String.setInt
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_208
D = A
@call_command
0 ; JMP
(RET_CALL_208)
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
//call Output.printString 1
@Output.printString
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_209
D = A
@call_command
0 ; JMP
(RET_CALL_209)
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
//call String.dispose 1
@String.dispose
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_210
D = A
@call_command
0 ; JMP
(RET_CALL_210)
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
@return_command
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
A = A - 1
M = D + M
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
//push constant 23
@23
D = A
@SP
M = M + 1
A = M - 1
M = D
//eq
@eq_end64
D = A
@eq_command
0 ; JMP
(eq_end64)
//if-goto IF_TRUE7
@SP
AM = M - 1
D = M
@Output.println$IF_TRUE7
D ; JNE
//goto IF_FALSE7
@Output.println$IF_FALSE7
0 ; JMP
//label IF_TRUE7
(Output.println$IF_TRUE7)
//push constant 0
@0
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
//label IF_FALSE7
(Output.println$IF_FALSE7)
//push static 1
@Output.1
D = M
@SP
M = M + 1
A = M - 1
M = D
//push static 2
@Output.2
D = M
@SP
M = M + 1
A = M - 1
M = D
//call Output.moveCursor 2
@Output.moveCursor
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_211
D = A
@call_command
0 ; JMP
(RET_CALL_211)
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
@return_command
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
A = A - 1
M = M - D
//pop static 2
@SP
AM = M - 1
D = M
@Output.2
M = D
//push static 2
@Output.2
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
@lt_end65
D = A
@lt_command
0 ; JMP
(lt_end65)
//if-goto IF_TRUE8
@SP
AM = M - 1
D = M
@Output.backSpace$IF_TRUE8
D ; JNE
//goto IF_FALSE8
@Output.backSpace$IF_FALSE8
0 ; JMP
//label IF_TRUE8
(Output.backSpace$IF_TRUE8)
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
A = A - 1
M = M - D
//pop static 1
@SP
AM = M - 1
D = M
@Output.1
M = D
//push constant 63
@63
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
//label IF_FALSE8
(Output.backSpace$IF_FALSE8)
//push static 1
@Output.1
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
@lt_end66
D = A
@lt_command
0 ; JMP
(lt_end66)
//if-goto IF_TRUE9
@SP
AM = M - 1
D = M
@Output.backSpace$IF_TRUE9
D ; JNE
//goto IF_FALSE9
@Output.backSpace$IF_FALSE9
0 ; JMP
//label IF_TRUE9
(Output.backSpace$IF_TRUE9)
//push constant 22
@22
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
//label IF_FALSE9
(Output.backSpace$IF_FALSE9)
//push static 1
@Output.1
D = M
@SP
M = M + 1
A = M - 1
M = D
//push static 2
@Output.2
D = M
@SP
M = M + 1
A = M - 1
M = D
//call Output.moveCursor 2
@Output.moveCursor
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_212
D = A
@call_command
0 ; JMP
(RET_CALL_212)
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
@return_command
0 ; JMP
//function PongGame.new 0
(PongGame.new)
//push constant 7
@7
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Memory.alloc 1
@Memory.alloc
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_213
D = A
@call_command
0 ; JMP
(RET_CALL_213)
//pop pointer 0
@SP
AM = M - 1
D = M
@3
M = D
//call Screen.clearScreen 0
@Screen.clearScreen
D = A
@R15
M = D
@0
D = A
@R14
M = D
@RET_CALL_214
D = A
@call_command
0 ; JMP
(RET_CALL_214)
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
//pop this 6
@THIS
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
//push constant 230
@230
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 229
@229
D = A
@SP
M = M + 1
A = M - 1
M = D
//push this 6
@6
D = A
@THIS
A = D + M
D = M
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
//call Bat.new 4
@Bat.new
D = A
@R15
M = D
@4
D = A
@R14
M = D
@RET_CALL_215
D = A
@call_command
0 ; JMP
(RET_CALL_215)
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
//push constant 253
@253
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 222
@222
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
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
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 229
@229
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Ball.new 6
@Ball.new
D = A
@R15
M = D
@6
D = A
@R14
M = D
@RET_CALL_216
D = A
@call_command
0 ; JMP
(RET_CALL_216)
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
//push constant 400
@400
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Ball.setDestination 3
@Ball.setDestination
D = A
@R15
M = D
@3
D = A
@R14
M = D
@RET_CALL_217
D = A
@call_command
0 ; JMP
(RET_CALL_217)
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
//push constant 238
@238
D = A
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
//push constant 240
@240
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Screen.drawRectangle 4
@Screen.drawRectangle
D = A
@R15
M = D
@4
D = A
@R14
M = D
@RET_CALL_218
D = A
@call_command
0 ; JMP
(RET_CALL_218)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 22
@22
D = A
@SP
M = M + 1
A = M - 1
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Output.moveCursor 2
@Output.moveCursor
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_219
D = A
@call_command
0 ; JMP
(RET_CALL_219)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 8
@8
D = A
@SP
M = M + 1
A = M - 1
M = D
//call String.new 1
@String.new
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_220
D = A
@call_command
0 ; JMP
(RET_CALL_220)
//push constant 83
@83
D = A
@SP
M = M + 1
A = M - 1
M = D
//call String.appendChar 2
@String.appendChar
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_221
D = A
@call_command
0 ; JMP
(RET_CALL_221)
//push constant 99
@99
D = A
@SP
M = M + 1
A = M - 1
M = D
//call String.appendChar 2
@String.appendChar
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_222
D = A
@call_command
0 ; JMP
(RET_CALL_222)
//push constant 111
@111
D = A
@SP
M = M + 1
A = M - 1
M = D
//call String.appendChar 2
@String.appendChar
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_223
D = A
@call_command
0 ; JMP
(RET_CALL_223)
//push constant 114
@114
D = A
@SP
M = M + 1
A = M - 1
M = D
//call String.appendChar 2
@String.appendChar
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_224
D = A
@call_command
0 ; JMP
(RET_CALL_224)
//push constant 101
@101
D = A
@SP
M = M + 1
A = M - 1
M = D
//call String.appendChar 2
@String.appendChar
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_225
D = A
@call_command
0 ; JMP
(RET_CALL_225)
//push constant 58
@58
D = A
@SP
M = M + 1
A = M - 1
M = D
//call String.appendChar 2
@String.appendChar
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_226
D = A
@call_command
0 ; JMP
(RET_CALL_226)
//push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
//call String.appendChar 2
@String.appendChar
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_227
D = A
@call_command
0 ; JMP
(RET_CALL_227)
//push constant 48
@48
D = A
@SP
M = M + 1
A = M - 1
M = D
//call String.appendChar 2
@String.appendChar
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_228
D = A
@call_command
0 ; JMP
(RET_CALL_228)
//call Output.printString 1
@Output.printString
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_229
D = A
@call_command
0 ; JMP
(RET_CALL_229)
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
//pop this 3
@THIS
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
//pop this 4
@THIS
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
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//pop this 5
@THIS
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
//push pointer 0
@3
D = M
@SP
M = M + 1
A = M - 1
M = D
//return
@return_command
0 ; JMP
//function PongGame.dispose 0
(PongGame.dispose)
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
//call Bat.dispose 1
@Bat.dispose
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_230
D = A
@call_command
0 ; JMP
(RET_CALL_230)
//pop temp 0
@SP
AM = M - 1
D = M
@5
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
//call Ball.dispose 1
@Ball.dispose
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_231
D = A
@call_command
0 ; JMP
(RET_CALL_231)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push pointer 0
@3
D = M
@SP
M = M + 1
A = M - 1
M = D
//call Memory.deAlloc 1
@Memory.deAlloc
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_232
D = A
@call_command
0 ; JMP
(RET_CALL_232)
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
@return_command
0 ; JMP
//function PongGame.newInstance 0
(PongGame.newInstance)
//call PongGame.new 0
@PongGame.new
D = A
@R15
M = D
@0
D = A
@R14
M = D
@RET_CALL_233
D = A
@call_command
0 ; JMP
(RET_CALL_233)
//pop static 0
@SP
AM = M - 1
D = M
@PongGame.0
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//return
@return_command
0 ; JMP
//function PongGame.getInstance 0
(PongGame.getInstance)
//push static 0
@PongGame.0
D = M
@SP
M = M + 1
A = M - 1
M = D
//return
@return_command
0 ; JMP
//function PongGame.run 1
(PongGame.run)
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
//label WHILE_EXP0
(PongGame.run$WHILE_EXP0)
//push this 3
@3
D = A
@THIS
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//not
@SP
A = M - 1
M = !M
//not
@SP
A = M - 1
M = !M
//if-goto WHILE_END0
@SP
AM = M - 1
D = M
@PongGame.run$WHILE_END0
D ; JNE
//label WHILE_EXP1
(PongGame.run$WHILE_EXP1)
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
@eq_end67
D = A
@eq_command
0 ; JMP
(eq_end67)
//push this 3
@3
D = A
@THIS
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//not
@SP
A = M - 1
M = !M
//and
@SP
AM = M - 1
D = M
A = A - 1
M = D & M
//not
@SP
A = M - 1
M = !M
//if-goto WHILE_END1
@SP
AM = M - 1
D = M
@PongGame.run$WHILE_END1
D ; JNE
//call Keyboard.keyPressed 0
@Keyboard.keyPressed
D = A
@R15
M = D
@0
D = A
@R14
M = D
@RET_CALL_234
D = A
@call_command
0 ; JMP
(RET_CALL_234)
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
//call Bat.move 1
@Bat.move
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_235
D = A
@call_command
0 ; JMP
(RET_CALL_235)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push pointer 0
@3
D = M
@SP
M = M + 1
A = M - 1
M = D
//call PongGame.moveBall 1
@PongGame.moveBall
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_236
D = A
@call_command
0 ; JMP
(RET_CALL_236)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//goto WHILE_EXP1
@PongGame.run$WHILE_EXP1
0 ; JMP
//label WHILE_END1
(PongGame.run$WHILE_END1)
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
//push constant 130
@130
D = A
@SP
M = M + 1
A = M - 1
M = D
//eq
@eq_end68
D = A
@eq_command
0 ; JMP
(eq_end68)
//if-goto IF_TRUE0
@SP
AM = M - 1
D = M
@PongGame.run$IF_TRUE0
D ; JNE
//goto IF_FALSE0
@PongGame.run$IF_FALSE0
0 ; JMP
//label IF_TRUE0
(PongGame.run$IF_TRUE0)
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
//push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Bat.setDirection 2
@Bat.setDirection
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_237
D = A
@call_command
0 ; JMP
(RET_CALL_237)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//goto IF_END0
@PongGame.run$IF_END0
0 ; JMP
//label IF_FALSE0
(PongGame.run$IF_FALSE0)
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
//push constant 132
@132
D = A
@SP
M = M + 1
A = M - 1
M = D
//eq
@eq_end69
D = A
@eq_command
0 ; JMP
(eq_end69)
//if-goto IF_TRUE1
@SP
AM = M - 1
D = M
@PongGame.run$IF_TRUE1
D ; JNE
//goto IF_FALSE1
@PongGame.run$IF_FALSE1
0 ; JMP
//label IF_TRUE1
(PongGame.run$IF_TRUE1)
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
//push constant 2
@2
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Bat.setDirection 2
@Bat.setDirection
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_238
D = A
@call_command
0 ; JMP
(RET_CALL_238)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//goto IF_END1
@PongGame.run$IF_END1
0 ; JMP
//label IF_FALSE1
(PongGame.run$IF_FALSE1)
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
//push constant 140
@140
D = A
@SP
M = M + 1
A = M - 1
M = D
//eq
@eq_end70
D = A
@eq_command
0 ; JMP
(eq_end70)
//if-goto IF_TRUE2
@SP
AM = M - 1
D = M
@PongGame.run$IF_TRUE2
D ; JNE
//goto IF_FALSE2
@PongGame.run$IF_FALSE2
0 ; JMP
//label IF_TRUE2
(PongGame.run$IF_TRUE2)
//push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
//neg
@SP
A = M - 1
M = -M
//pop this 3
@THIS
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
//label IF_FALSE2
(PongGame.run$IF_FALSE2)
//label IF_END1
(PongGame.run$IF_END1)
//label IF_END0
(PongGame.run$IF_END0)
//label WHILE_EXP2
(PongGame.run$WHILE_EXP2)
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
@eq_end71
D = A
@eq_command
0 ; JMP
(eq_end71)
//not
@SP
A = M - 1
M = !M
//push this 3
@3
D = A
@THIS
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//not
@SP
A = M - 1
M = !M
//and
@SP
AM = M - 1
D = M
A = A - 1
M = D & M
//not
@SP
A = M - 1
M = !M
//if-goto WHILE_END2
@SP
AM = M - 1
D = M
@PongGame.run$WHILE_END2
D ; JNE
//call Keyboard.keyPressed 0
@Keyboard.keyPressed
D = A
@R15
M = D
@0
D = A
@R14
M = D
@RET_CALL_239
D = A
@call_command
0 ; JMP
(RET_CALL_239)
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
//call Bat.move 1
@Bat.move
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_240
D = A
@call_command
0 ; JMP
(RET_CALL_240)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push pointer 0
@3
D = M
@SP
M = M + 1
A = M - 1
M = D
//call PongGame.moveBall 1
@PongGame.moveBall
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_241
D = A
@call_command
0 ; JMP
(RET_CALL_241)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//goto WHILE_EXP2
@PongGame.run$WHILE_EXP2
0 ; JMP
//label WHILE_END2
(PongGame.run$WHILE_END2)
//goto WHILE_EXP0
@PongGame.run$WHILE_EXP0
0 ; JMP
//label WHILE_END0
(PongGame.run$WHILE_END0)
//push this 3
@3
D = A
@THIS
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
@PongGame.run$IF_TRUE3
D ; JNE
//goto IF_FALSE3
@PongGame.run$IF_FALSE3
0 ; JMP
//label IF_TRUE3
(PongGame.run$IF_TRUE3)
//push constant 10
@10
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
//call Output.moveCursor 2
@Output.moveCursor
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_242
D = A
@call_command
0 ; JMP
(RET_CALL_242)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 9
@9
D = A
@SP
M = M + 1
A = M - 1
M = D
//call String.new 1
@String.new
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_243
D = A
@call_command
0 ; JMP
(RET_CALL_243)
//push constant 71
@71
D = A
@SP
M = M + 1
A = M - 1
M = D
//call String.appendChar 2
@String.appendChar
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_244
D = A
@call_command
0 ; JMP
(RET_CALL_244)
//push constant 97
@97
D = A
@SP
M = M + 1
A = M - 1
M = D
//call String.appendChar 2
@String.appendChar
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_245
D = A
@call_command
0 ; JMP
(RET_CALL_245)
//push constant 109
@109
D = A
@SP
M = M + 1
A = M - 1
M = D
//call String.appendChar 2
@String.appendChar
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_246
D = A
@call_command
0 ; JMP
(RET_CALL_246)
//push constant 101
@101
D = A
@SP
M = M + 1
A = M - 1
M = D
//call String.appendChar 2
@String.appendChar
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_247
D = A
@call_command
0 ; JMP
(RET_CALL_247)
//push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
//call String.appendChar 2
@String.appendChar
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_248
D = A
@call_command
0 ; JMP
(RET_CALL_248)
//push constant 79
@79
D = A
@SP
M = M + 1
A = M - 1
M = D
//call String.appendChar 2
@String.appendChar
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_249
D = A
@call_command
0 ; JMP
(RET_CALL_249)
//push constant 118
@118
D = A
@SP
M = M + 1
A = M - 1
M = D
//call String.appendChar 2
@String.appendChar
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_250
D = A
@call_command
0 ; JMP
(RET_CALL_250)
//push constant 101
@101
D = A
@SP
M = M + 1
A = M - 1
M = D
//call String.appendChar 2
@String.appendChar
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_251
D = A
@call_command
0 ; JMP
(RET_CALL_251)
//push constant 114
@114
D = A
@SP
M = M + 1
A = M - 1
M = D
//call String.appendChar 2
@String.appendChar
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_252
D = A
@call_command
0 ; JMP
(RET_CALL_252)
//call Output.printString 1
@Output.printString
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_253
D = A
@call_command
0 ; JMP
(RET_CALL_253)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//label IF_FALSE3
(PongGame.run$IF_FALSE3)
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//return
@return_command
0 ; JMP
//function PongGame.moveBall 5
(PongGame.moveBall)
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
//call Ball.move 1
@Ball.move
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_254
D = A
@call_command
0 ; JMP
(RET_CALL_254)
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
//gt
@gt_end72
D = A
@gt_command
0 ; JMP
(gt_end72)
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
//push this 5
@5
D = A
@THIS
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//eq
@eq_end73
D = A
@eq_command
0 ; JMP
(eq_end73)
//not
@SP
A = M - 1
M = !M
//and
@SP
AM = M - 1
D = M
A = A - 1
M = D & M
//if-goto IF_TRUE4
@SP
AM = M - 1
D = M
@PongGame.moveBall$IF_TRUE4
D ; JNE
//goto IF_FALSE4
@PongGame.moveBall$IF_FALSE4
0 ; JMP
//label IF_TRUE4
(PongGame.moveBall$IF_TRUE4)
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
//pop this 5
@THIS
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
//push constant 0
@0
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
//call Bat.getLeft 1
@Bat.getLeft
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_255
D = A
@call_command
0 ; JMP
(RET_CALL_255)
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
//call Bat.getRight 1
@Bat.getRight
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_256
D = A
@call_command
0 ; JMP
(RET_CALL_256)
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
//call Ball.getLeft 1
@Ball.getLeft
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_257
D = A
@call_command
0 ; JMP
(RET_CALL_257)
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
//call Ball.getRight 1
@Ball.getRight
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_258
D = A
@call_command
0 ; JMP
(RET_CALL_258)
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
//push constant 4
@4
D = A
@SP
M = M + 1
A = M - 1
M = D
//eq
@eq_end74
D = A
@eq_command
0 ; JMP
(eq_end74)
//if-goto IF_TRUE5
@SP
AM = M - 1
D = M
@PongGame.moveBall$IF_TRUE5
D ; JNE
//goto IF_FALSE5
@PongGame.moveBall$IF_FALSE5
0 ; JMP
//label IF_TRUE5
(PongGame.moveBall$IF_TRUE5)
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
//gt
@gt_end75
D = A
@gt_command
0 ; JMP
(gt_end75)
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
//lt
@lt_end76
D = A
@lt_command
0 ; JMP
(lt_end76)
//or
@SP
AM = M - 1
D = M
A = A - 1
M = D | M
//pop this 3
@THIS
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
//push this 3
@3
D = A
@THIS
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//not
@SP
A = M - 1
M = !M
//if-goto IF_TRUE6
@SP
AM = M - 1
D = M
@PongGame.moveBall$IF_TRUE6
D ; JNE
//goto IF_FALSE6
@PongGame.moveBall$IF_FALSE6
0 ; JMP
//label IF_TRUE6
(PongGame.moveBall$IF_TRUE6)
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
//add
@SP
AM = M - 1
D = M
A = A - 1
M = D + M
//lt
@lt_end77
D = A
@lt_command
0 ; JMP
(lt_end77)
//if-goto IF_TRUE7
@SP
AM = M - 1
D = M
@PongGame.moveBall$IF_TRUE7
D ; JNE
//goto IF_FALSE7
@PongGame.moveBall$IF_FALSE7
0 ; JMP
//label IF_TRUE7
(PongGame.moveBall$IF_TRUE7)
//push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
//neg
@SP
A = M - 1
M = -M
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
//goto IF_END7
@PongGame.moveBall$IF_END7
0 ; JMP
//label IF_FALSE7
(PongGame.moveBall$IF_FALSE7)
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
//push constant 10
@10
D = A
@SP
M = M + 1
A = M - 1
M = D
//sub
@SP
AM = M - 1
D = M
A = A - 1
M = M - D
//gt
@gt_end78
D = A
@gt_command
0 ; JMP
(gt_end78)
//if-goto IF_TRUE8
@SP
AM = M - 1
D = M
@PongGame.moveBall$IF_TRUE8
D ; JNE
//goto IF_FALSE8
@PongGame.moveBall$IF_FALSE8
0 ; JMP
//label IF_TRUE8
(PongGame.moveBall$IF_TRUE8)
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
//label IF_FALSE8
(PongGame.moveBall$IF_FALSE8)
//label IF_END7
(PongGame.moveBall$IF_END7)
//push this 6
@6
D = A
@THIS
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
A = A - 1
M = M - D
//pop this 6
@THIS
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
//push this 6
@6
D = A
@THIS
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//call Bat.setWidth 2
@Bat.setWidth
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_259
D = A
@call_command
0 ; JMP
(RET_CALL_259)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push this 4
@4
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
A = A - 1
M = D + M
//pop this 4
@THIS
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
//push constant 22
@22
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
//call Output.moveCursor 2
@Output.moveCursor
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_260
D = A
@call_command
0 ; JMP
(RET_CALL_260)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push this 4
@4
D = A
@THIS
A = D + M
D = M
@SP
M = M + 1
A = M - 1
M = D
//call Output.printInt 1
@Output.printInt
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_261
D = A
@call_command
0 ; JMP
(RET_CALL_261)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//label IF_FALSE6
(PongGame.moveBall$IF_FALSE6)
//label IF_FALSE5
(PongGame.moveBall$IF_FALSE5)
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
//call Ball.bounce 2
@Ball.bounce
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_262
D = A
@call_command
0 ; JMP
(RET_CALL_262)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//label IF_FALSE4
(PongGame.moveBall$IF_FALSE4)
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//return
@return_command
0 ; JMP
//function Screen.init 2
(Screen.init)
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
//push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Array.new 1
@Array.new
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_263
D = A
@call_command
0 ; JMP
(RET_CALL_263)
//pop static 0
@SP
AM = M - 1
D = M
@Screen.0
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
//push constant 0
@0
D = A
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
(Screen.init$WHILE_EXP0)
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
//push constant 15
@15
D = A
@SP
M = M + 1
A = M - 1
M = D
//lt
@lt_end79
D = A
@lt_command
0 ; JMP
(lt_end79)
//not
@SP
A = M - 1
M = !M
//if-goto WHILE_END0
@SP
AM = M - 1
D = M
@Screen.init$WHILE_END0
D ; JNE
//push static 0
@Screen.0
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
A = A - 1
M = D + M
//pop temp 1
@SP
AM = M - 1
D = M
@6
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
//push temp 1
@6
D = M
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
A = A - 1
M = D + M
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
A = A - 1
M = D + M
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
@Screen.init$WHILE_EXP0
0 ; JMP
//label WHILE_END0
(Screen.init$WHILE_END0)
//push static 0
@Screen.0
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
//add
@SP
AM = M - 1
D = M
A = A - 1
M = D + M
//pop temp 1
@SP
AM = M - 1
D = M
@6
M = D
//push constant 32767
@32767
D = A
@SP
M = M + 1
A = M - 1
M = D
//not
@SP
A = M - 1
M = !M
//push temp 1
@6
D = M
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
//push constant 16384
@16384
D = A
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
//push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
//neg
@SP
A = M - 1
M = -M
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
//return
@return_command
0 ; JMP
//function Screen.clearScreen 1
(Screen.clearScreen)
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
(Screen.clearScreen$WHILE_EXP1)
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
@lt_end80
D = A
@lt_command
0 ; JMP
(lt_end80)
//not
@SP
A = M - 1
M = !M
//if-goto WHILE_END1
@SP
AM = M - 1
D = M
@Screen.clearScreen$WHILE_END1
D ; JNE
//push static 2
@Screen.2
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
A = A - 1
M = D + M
//pop temp 1
@SP
AM = M - 1
D = M
@6
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//push temp 1
@6
D = M
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
A = A - 1
M = D + M
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
@Screen.clearScreen$WHILE_EXP1
0 ; JMP
//label WHILE_END1
(Screen.clearScreen$WHILE_END1)
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//return
@return_command
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
//return
@return_command
0 ; JMP
//function Screen.drawPixel 2
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
@Math.divide
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_264
D = A
@call_command
0 ; JMP
(RET_CALL_264)
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
@Math.multiply
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_265
D = A
@call_command
0 ; JMP
(RET_CALL_265)
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
A = A - 1
M = D + M
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
//push static 1
@Screen.1
D = M
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
//push static 2
@Screen.2
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
A = A - 1
M = D + M
//pop temp 1
@SP
AM = M - 1
D = M
@6
M = D
//push static 2
@Screen.2
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
A = A - 1
M = D + M
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
//push static 0
@Screen.0
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
@Math.multiply
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_266
D = A
@call_command
0 ; JMP
(RET_CALL_266)
//sub
@SP
AM = M - 1
D = M
A = A - 1
M = M - D
//add
@SP
AM = M - 1
D = M
A = A - 1
M = D + M
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
//or
@SP
AM = M - 1
D = M
A = A - 1
M = D | M
//push temp 1
@6
D = M
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
@Screen.drawPixel$IF_END0
0 ; JMP
//label IF_FALSE0
(Screen.drawPixel$IF_FALSE0)
//push static 2
@Screen.2
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
A = A - 1
M = D + M
//pop temp 1
@SP
AM = M - 1
D = M
@6
M = D
//push static 2
@Screen.2
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
A = A - 1
M = D + M
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
//push static 0
@Screen.0
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
@Math.multiply
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_267
D = A
@call_command
0 ; JMP
(RET_CALL_267)
//sub
@SP
AM = M - 1
D = M
A = A - 1
M = M - D
//add
@SP
AM = M - 1
D = M
A = A - 1
M = D + M
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
//not
@SP
A = M - 1
M = !M
//and
@SP
AM = M - 1
D = M
A = A - 1
M = D & M
//push temp 1
@6
D = M
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
(Screen.drawPixel$IF_END0)
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//return
@return_command
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
A = A - 1
M = M - D
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
A = A - 1
M = M - D
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
@Screen.drawPixel
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_268
D = A
@call_command
0 ; JMP
(RET_CALL_268)
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
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//eq
@eq_end81
D = A
@eq_command
0 ; JMP
(eq_end81)
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
//gt
@gt_end82
D = A
@gt_command
0 ; JMP
(gt_end82)
//and
@SP
AM = M - 1
D = M
A = A - 1
M = D & M
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
//push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Math.divide 2
@Math.divide
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_269
D = A
@call_command
0 ; JMP
(RET_CALL_269)
//push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Math.multiply 2
@Math.multiply
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_270
D = A
@call_command
0 ; JMP
(RET_CALL_270)
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
@Math.divide
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_271
D = A
@call_command
0 ; JMP
(RET_CALL_271)
//push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Math.multiply 2
@Math.multiply
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_272
D = A
@call_command
0 ; JMP
(RET_CALL_272)
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
//eq
@eq_end83
D = A
@eq_command
0 ; JMP
(eq_end83)
//not
@SP
A = M - 1
M = !M
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
//label WHILE_EXP2
(Screen.drawLine$WHILE_EXP2)
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
//add
@SP
AM = M - 1
D = M
A = A - 1
M = D + M
//eq
@eq_end84
D = A
@eq_command
0 ; JMP
(eq_end84)
//not
@SP
A = M - 1
M = !M
//not
@SP
A = M - 1
M = !M
//if-goto WHILE_END2
@SP
AM = M - 1
D = M
@Screen.drawLine$WHILE_END2
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
A = A - 1
M = D + M
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
@Screen.drawPixel
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_273
D = A
@call_command
0 ; JMP
(RET_CALL_273)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//goto WHILE_EXP2
@Screen.drawLine$WHILE_EXP2
0 ; JMP
//label WHILE_END2
(Screen.drawLine$WHILE_END2)
//label IF_FALSE2
(Screen.drawLine$IF_FALSE2)
//label WHILE_EXP3
(Screen.drawLine$WHILE_EXP3)
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
//lt
@lt_end85
D = A
@lt_command
0 ; JMP
(lt_end85)
//not
@SP
A = M - 1
M = !M
//if-goto WHILE_END3
@SP
AM = M - 1
D = M
@Screen.drawLine$WHILE_END3
D ; JNE
//push static 2
@Screen.2
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
//push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Math.multiply 2
@Math.multiply
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_274
D = A
@call_command
0 ; JMP
(RET_CALL_274)
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
@Math.divide
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_275
D = A
@call_command
0 ; JMP
(RET_CALL_275)
//add
@SP
AM = M - 1
D = M
A = A - 1
M = D + M
//add
@SP
AM = M - 1
D = M
A = A - 1
M = D + M
//pop temp 1
@SP
AM = M - 1
D = M
@6
M = D
//push static 1
@Screen.1
D = M
@SP
M = M + 1
A = M - 1
M = D
//push temp 1
@6
D = M
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
//push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
//add
@SP
AM = M - 1
D = M
A = A - 1
M = D + M
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
//goto WHILE_EXP3
@Screen.drawLine$WHILE_EXP3
0 ; JMP
//label WHILE_END3
(Screen.drawLine$WHILE_END3)
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
@Screen.drawPixel
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_276
D = A
@call_command
0 ; JMP
(RET_CALL_276)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//label IF_FALSE1
(Screen.drawLine$IF_FALSE1)
//push constant 1
@1
D = A
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
//push constant 1
@1
D = A
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
A = M - 1
M = -M
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
//lt
@lt_end86
D = A
@lt_command
0 ; JMP
(lt_end86)
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
//push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
//neg
@SP
A = M - 1
M = -M
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
A = M - 1
M = -M
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
//label IF_FALSE3
(Screen.drawLine$IF_FALSE3)
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
//lt
@lt_end87
D = A
@lt_command
0 ; JMP
(lt_end87)
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
//push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
//neg
@SP
A = M - 1
M = -M
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
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//gt
@gt_end88
D = A
@gt_command
0 ; JMP
(gt_end88)
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
//lt
@lt_end89
D = A
@lt_command
0 ; JMP
(lt_end89)
//and
@SP
AM = M - 1
D = M
A = A - 1
M = D & M
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
//lt
@lt_end90
D = A
@lt_command
0 ; JMP
(lt_end90)
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
@gt_end91
D = A
@gt_command
0 ; JMP
(gt_end91)
//and
@SP
AM = M - 1
D = M
A = A - 1
M = D & M
//or
@SP
AM = M - 1
D = M
A = A - 1
M = D | M
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
//label WHILE_EXP4
(Screen.drawLine$WHILE_EXP4)
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
//eq
@eq_end92
D = A
@eq_command
0 ; JMP
(eq_end92)
//not
@SP
A = M - 1
M = !M
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
//eq
@eq_end93
D = A
@eq_command
0 ; JMP
(eq_end93)
//not
@SP
A = M - 1
M = !M
//or
@SP
AM = M - 1
D = M
A = A - 1
M = D | M
//not
@SP
A = M - 1
M = !M
//if-goto WHILE_END4
@SP
AM = M - 1
D = M
@Screen.drawLine$WHILE_END4
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
@lt_end94
D = A
@lt_command
0 ; JMP
(lt_end94)
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
//not
@SP
A = M - 1
M = !M
//and
@SP
AM = M - 1
D = M
A = A - 1
M = D & M
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
//gt
@gt_end95
D = A
@gt_command
0 ; JMP
(gt_end95)
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
A = A - 1
M = D & M
//or
@SP
AM = M - 1
D = M
A = A - 1
M = D | M
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
@eq_end96
D = A
@eq_command
0 ; JMP
(eq_end96)
//or
@SP
AM = M - 1
D = M
A = A - 1
M = D | M
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
@eq_end97
D = A
@eq_command
0 ; JMP
(eq_end97)
//not
@SP
A = M - 1
M = !M
//and
@SP
AM = M - 1
D = M
A = A - 1
M = D & M
//if-goto IF_TRUE5
@SP
AM = M - 1
D = M
@Screen.drawLine$IF_TRUE5
D ; JNE
//goto IF_FALSE5
@Screen.drawLine$IF_FALSE5
0 ; JMP
//label IF_TRUE5
(Screen.drawLine$IF_TRUE5)
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
//add
@SP
AM = M - 1
D = M
A = A - 1
M = D + M
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
A = A - 1
M = D + M
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
//call Screen.drawPixel 2
@Screen.drawPixel
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_277
D = A
@call_command
0 ; JMP
(RET_CALL_277)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//goto IF_END5
@Screen.drawLine$IF_END5
0 ; JMP
//label IF_FALSE5
(Screen.drawLine$IF_FALSE5)
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
//add
@SP
AM = M - 1
D = M
A = A - 1
M = D + M
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
A = A - 1
M = D + M
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
//call Screen.drawPixel 2
@Screen.drawPixel
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_278
D = A
@call_command
0 ; JMP
(RET_CALL_278)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//label IF_END5
(Screen.drawLine$IF_END5)
//goto WHILE_EXP4
@Screen.drawLine$WHILE_EXP4
0 ; JMP
//label WHILE_END4
(Screen.drawLine$WHILE_END4)
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//return
@return_command
0 ; JMP
//function Screen.drawRectangle 0
(Screen.drawRectangle)
//label WHILE_EXP5
(Screen.drawRectangle$WHILE_EXP5)
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
//eq
@eq_end98
D = A
@eq_command
0 ; JMP
(eq_end98)
//not
@SP
A = M - 1
M = !M
//not
@SP
A = M - 1
M = !M
//if-goto WHILE_END5
@SP
AM = M - 1
D = M
@Screen.drawRectangle$WHILE_END5
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
//call Screen.drawLine 4
@Screen.drawLine
D = A
@R15
M = D
@4
D = A
@R14
M = D
@RET_CALL_279
D = A
@call_command
0 ; JMP
(RET_CALL_279)
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
A = A - 1
M = D + M
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
//goto WHILE_EXP5
@Screen.drawRectangle$WHILE_EXP5
0 ; JMP
//label WHILE_END5
(Screen.drawRectangle$WHILE_END5)
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//return
@return_command
0 ; JMP
//function Screen.drawCircle 2
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
//neg
@SP
A = M - 1
M = -M
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
//label WHILE_EXP6
(Screen.drawCircle$WHILE_EXP6)
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
//eq
@eq_end99
D = A
@eq_command
0 ; JMP
(eq_end99)
//not
@SP
A = M - 1
M = !M
//not
@SP
A = M - 1
M = !M
//if-goto WHILE_END6
@SP
AM = M - 1
D = M
@Screen.drawCircle$WHILE_END6
D ; JNE
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
//call Math.multiply 2
@Math.multiply
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_280
D = A
@call_command
0 ; JMP
(RET_CALL_280)
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
@Math.multiply
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_281
D = A
@call_command
0 ; JMP
(RET_CALL_281)
//sub
@SP
AM = M - 1
D = M
A = A - 1
M = M - D
//call Math.sqrt 1
@Math.sqrt
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_282
D = A
@call_command
0 ; JMP
(RET_CALL_282)
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
A = A - 1
M = M - D
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
//add
@SP
AM = M - 1
D = M
A = A - 1
M = D + M
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
A = A - 1
M = D + M
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
//add
@SP
AM = M - 1
D = M
A = A - 1
M = D + M
//call Screen.drawLine 4
@Screen.drawLine
D = A
@R15
M = D
@4
D = A
@R14
M = D
@RET_CALL_283
D = A
@call_command
0 ; JMP
(RET_CALL_283)
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
A = A - 1
M = D + M
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
//goto WHILE_EXP6
@Screen.drawCircle$WHILE_EXP6
0 ; JMP
//label WHILE_END6
(Screen.drawCircle$WHILE_END6)
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//return
@return_command
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
@Memory.alloc
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_284
D = A
@call_command
0 ; JMP
(RET_CALL_284)
//pop pointer 0
@SP
AM = M - 1
D = M
@3
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
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
//eq
@eq_end100
D = A
@eq_command
0 ; JMP
(eq_end100)
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
//push pointer 0
@3
D = M
@SP
M = M + 1
A = M - 1
M = D
//return
@return_command
0 ; JMP
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
//call Memory.alloc 1
@Memory.alloc
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_285
D = A
@call_command
0 ; JMP
(RET_CALL_285)
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
//push pointer 0
@3
D = M
@SP
M = M + 1
A = M - 1
M = D
//return
@return_command
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
@eq_end101
D = A
@eq_command
0 ; JMP
(eq_end101)
//if-goto IF_TRUE1
@SP
AM = M - 1
D = M
@String.dispose$IF_TRUE1
D ; JNE
//goto IF_FALSE1
@String.dispose$IF_FALSE1
0 ; JMP
//label IF_TRUE1
(String.dispose$IF_TRUE1)
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//return
@return_command
0 ; JMP
//label IF_FALSE1
(String.dispose$IF_FALSE1)
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
//call Memory.deAlloc 1
@Memory.deAlloc
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_286
D = A
@call_command
0 ; JMP
(RET_CALL_286)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push pointer 0
@3
D = M
@SP
M = M + 1
A = M - 1
M = D
//call Memory.deAlloc 1
@Memory.deAlloc
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_287
D = A
@call_command
0 ; JMP
(RET_CALL_287)
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
@return_command
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
//return
@return_command
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
//add
@SP
AM = M - 1
D = M
A = A - 1
M = D + M
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
@return_command
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
//add
@SP
AM = M - 1
D = M
A = A - 1
M = D + M
//pop temp 1
@SP
AM = M - 1
D = M
@6
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
//push temp 1
@6
D = M
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
@return_command
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
@lt_end102
D = A
@lt_command
0 ; JMP
(lt_end102)
//not
@SP
A = M - 1
M = !M
//if-goto IF_TRUE2
@SP
AM = M - 1
D = M
@String.appendChar$IF_TRUE2
D ; JNE
//goto IF_FALSE2
@String.appendChar$IF_FALSE2
0 ; JMP
//label IF_TRUE2
(String.appendChar$IF_TRUE2)
//push constant 3
@3
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Sys.error 1
@Sys.error
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_288
D = A
@call_command
0 ; JMP
(RET_CALL_288)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//label IF_FALSE2
(String.appendChar$IF_FALSE2)
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
A = A - 1
M = D + M
//pop temp 1
@SP
AM = M - 1
D = M
@6
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
//push temp 1
@6
D = M
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
A = A - 1
M = D + M
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
//push pointer 0
@3
D = M
@SP
M = M + 1
A = M - 1
M = D
//return
@return_command
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
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//eq
@eq_end103
D = A
@eq_command
0 ; JMP
(eq_end103)
//if-goto IF_TRUE3
@SP
AM = M - 1
D = M
@String.eraseLastChar$IF_TRUE3
D ; JNE
//goto IF_FALSE3
@String.eraseLastChar$IF_FALSE3
0 ; JMP
//label IF_TRUE3
(String.eraseLastChar$IF_TRUE3)
//push constant 7
@7
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Sys.error 1
@Sys.error
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_289
D = A
@call_command
0 ; JMP
(RET_CALL_289)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//label IF_FALSE3
(String.eraseLastChar$IF_FALSE3)
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
A = A - 1
M = M - D
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
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//return
@return_command
0 ; JMP
//function String.intValue 3
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
//push constant 0
@0
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
//push constant 0
@0
D = A
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
//push pointer 0
@3
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
//call String.charAt 2
@String.charAt
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_290
D = A
@call_command
0 ; JMP
(RET_CALL_290)
//push constant 45
@45
D = A
@SP
M = M + 1
A = M - 1
M = D
//eq
@eq_end104
D = A
@eq_command
0 ; JMP
(eq_end104)
//if-goto IF_TRUE4
@SP
AM = M - 1
D = M
@String.intValue$IF_TRUE4
D ; JNE
//goto IF_FALSE4
@String.intValue$IF_FALSE4
0 ; JMP
//label IF_TRUE4
(String.intValue$IF_TRUE4)
//push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
//neg
@SP
A = M - 1
M = -M
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
//add
@SP
AM = M - 1
D = M
A = A - 1
M = D + M
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
(String.intValue$IF_FALSE4)
//label WHILE_EXP0
(String.intValue$WHILE_EXP0)
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
A = A - 1
M = D + M
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
//lt
@lt_end105
D = A
@lt_command
0 ; JMP
(lt_end105)
//not
@SP
A = M - 1
M = !M
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
A = A - 1
M = D + M
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
//push constant 57
@57
D = A
@SP
M = M + 1
A = M - 1
M = D
//gt
@gt_end106
D = A
@gt_command
0 ; JMP
(gt_end106)
//not
@SP
A = M - 1
M = !M
//and
@SP
AM = M - 1
D = M
A = A - 1
M = D & M
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
//lt
@lt_end107
D = A
@lt_command
0 ; JMP
(lt_end107)
//and
@SP
AM = M - 1
D = M
A = A - 1
M = D & M
//not
@SP
A = M - 1
M = !M
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
//push constant 10
@10
D = A
@SP
M = M + 1
A = M - 1
M = D
//call Math.multiply 2
@Math.multiply
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_291
D = A
@call_command
0 ; JMP
(RET_CALL_291)
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
A = A - 1
M = D + M
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
A = A - 1
M = D + M
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
A = A - 1
M = M - D
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
A = A - 1
M = D + M
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
@String.intValue$WHILE_EXP0
0 ; JMP
//label WHILE_END0
(String.intValue$WHILE_END0)
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
//if-goto IF_TRUE5
@SP
AM = M - 1
D = M
@String.intValue$IF_TRUE5
D ; JNE
//goto IF_FALSE5
@String.intValue$IF_FALSE5
0 ; JMP
//label IF_TRUE5
(String.intValue$IF_TRUE5)
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
A = M - 1
M = -M
//return
@return_command
0 ; JMP
//label IF_FALSE5
(String.intValue$IF_FALSE5)
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
@return_command
0 ; JMP
//function String.setInt 2
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
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
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
@lt_end108
D = A
@lt_command
0 ; JMP
(lt_end108)
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
//neg
@SP
A = M - 1
M = -M
//gt
@gt_end109
D = A
@gt_command
0 ; JMP
(gt_end109)
//and
@SP
AM = M - 1
D = M
A = A - 1
M = D & M
//if-goto IF_TRUE6
@SP
AM = M - 1
D = M
@String.setInt$IF_TRUE6
D ; JNE
//goto IF_FALSE6
@String.setInt$IF_FALSE6
0 ; JMP
//label IF_TRUE6
(String.setInt$IF_TRUE6)
//push pointer 0
@3
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
//call String.appendChar 2
@String.appendChar
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_292
D = A
@call_command
0 ; JMP
(RET_CALL_292)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push pointer 0
@3
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
//neg
@SP
A = M - 1
M = -M
//push constant 48
@48
D = A
@SP
M = M + 1
A = M - 1
M = D
//add
@SP
AM = M - 1
D = M
A = A - 1
M = D + M
//call String.appendChar 2
@String.appendChar
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_293
D = A
@call_command
0 ; JMP
(RET_CALL_293)
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
@return_command
0 ; JMP
//label IF_FALSE6
(String.setInt$IF_FALSE6)
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
@eq_end110
D = A
@eq_command
0 ; JMP
(eq_end110)
//if-goto IF_TRUE7
@SP
AM = M - 1
D = M
@String.setInt$IF_TRUE7
D ; JNE
//goto IF_FALSE7
@String.setInt$IF_FALSE7
0 ; JMP
//label IF_TRUE7
(String.setInt$IF_TRUE7)
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//return
@return_command
0 ; JMP
//label IF_FALSE7
(String.setInt$IF_FALSE7)
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
@Math.divide
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_294
D = A
@call_command
0 ; JMP
(RET_CALL_294)
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
//push pointer 0
@3
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
//call String.setInt 2
@String.setInt
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_295
D = A
@call_command
0 ; JMP
(RET_CALL_295)
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
@Math.multiply
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_296
D = A
@call_command
0 ; JMP
(RET_CALL_296)
//sub
@SP
AM = M - 1
D = M
A = A - 1
M = M - D
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
@gt_end111
D = A
@gt_command
0 ; JMP
(gt_end111)
//if-goto IF_TRUE8
@SP
AM = M - 1
D = M
@String.setInt$IF_TRUE8
D ; JNE
//goto IF_FALSE8
@String.setInt$IF_FALSE8
0 ; JMP
//label IF_TRUE8
(String.setInt$IF_TRUE8)
//push pointer 0
@3
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
//push constant 48
@48
D = A
@SP
M = M + 1
A = M - 1
M = D
//add
@SP
AM = M - 1
D = M
A = A - 1
M = D + M
//call String.appendChar 2
@String.appendChar
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_297
D = A
@call_command
0 ; JMP
(RET_CALL_297)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//goto IF_END8
@String.setInt$IF_END8
0 ; JMP
//label IF_FALSE8
(String.setInt$IF_FALSE8)
//push pointer 0
@3
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
//neg
@SP
A = M - 1
M = -M
//push constant 48
@48
D = A
@SP
M = M + 1
A = M - 1
M = D
//add
@SP
AM = M - 1
D = M
A = A - 1
M = D + M
//call String.appendChar 2
@String.appendChar
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_298
D = A
@call_command
0 ; JMP
(RET_CALL_298)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//label IF_END8
(String.setInt$IF_END8)
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
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//return
@return_command
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
@return_command
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
@return_command
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
@return_command
0 ; JMP
//function Sys.init 0
(Sys.init)
//call Memory.init 0
@Memory.init
D = A
@R15
M = D
@0
D = A
@R14
M = D
@RET_CALL_299
D = A
@call_command
0 ; JMP
(RET_CALL_299)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//call Keyboard.init 0
@Keyboard.init
D = A
@R15
M = D
@0
D = A
@R14
M = D
@RET_CALL_300
D = A
@call_command
0 ; JMP
(RET_CALL_300)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//call Math.init 0
@Math.init
D = A
@R15
M = D
@0
D = A
@R14
M = D
@RET_CALL_301
D = A
@call_command
0 ; JMP
(RET_CALL_301)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//call Output.init 0
@Output.init
D = A
@R15
M = D
@0
D = A
@R14
M = D
@RET_CALL_302
D = A
@call_command
0 ; JMP
(RET_CALL_302)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//call Screen.init 0
@Screen.init
D = A
@R15
M = D
@0
D = A
@R14
M = D
@RET_CALL_303
D = A
@call_command
0 ; JMP
(RET_CALL_303)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//call Main.main 0
@Main.main
D = A
@R15
M = D
@0
D = A
@R14
M = D
@RET_CALL_304
D = A
@call_command
0 ; JMP
(RET_CALL_304)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//call Sys.halt 0
@Sys.halt
D = A
@R15
M = D
@0
D = A
@R14
M = D
@RET_CALL_305
D = A
@call_command
0 ; JMP
(RET_CALL_305)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//push constant 4
@4
D = A
@SP
M = M + 1
A = M - 1
M = D
//call String.new 1
@String.new
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_306
D = A
@call_command
0 ; JMP
(RET_CALL_306)
//push constant 69
@69
D = A
@SP
M = M + 1
A = M - 1
M = D
//call String.appendChar 2
@String.appendChar
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_307
D = A
@call_command
0 ; JMP
(RET_CALL_307)
//push constant 82
@82
D = A
@SP
M = M + 1
A = M - 1
M = D
//call String.appendChar 2
@String.appendChar
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_308
D = A
@call_command
0 ; JMP
(RET_CALL_308)
//push constant 82
@82
D = A
@SP
M = M + 1
A = M - 1
M = D
//call String.appendChar 2
@String.appendChar
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_309
D = A
@call_command
0 ; JMP
(RET_CALL_309)
//push constant 60
@60
D = A
@SP
M = M + 1
A = M - 1
M = D
//call String.appendChar 2
@String.appendChar
D = A
@R15
M = D
@2
D = A
@R14
M = D
@RET_CALL_310
D = A
@call_command
0 ; JMP
(RET_CALL_310)
//pop static 0
@SP
AM = M - 1
D = M
@Sys.0
M = D
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//return
@return_command
0 ; JMP
//function Sys.halt 0
(Sys.halt)
//label WHILE_EXP0
(Sys.halt$WHILE_EXP0)
//push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
//neg
@SP
A = M - 1
M = -M
//not
@SP
A = M - 1
M = !M
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
@return_command
0 ; JMP
//function Sys.wait 1
(Sys.wait)
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
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//lt
@lt_end112
D = A
@lt_command
0 ; JMP
(lt_end112)
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
@Sys.error
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_311
D = A
@call_command
0 ; JMP
(RET_CALL_311)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//label IF_FALSE0
(Sys.wait$IF_FALSE0)
//label WHILE_EXP1
(Sys.wait$WHILE_EXP1)
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
@gt_end113
D = A
@gt_command
0 ; JMP
(gt_end113)
//not
@SP
A = M - 1
M = !M
//if-goto WHILE_END1
@SP
AM = M - 1
D = M
@Sys.wait$WHILE_END1
D ; JNE
//push constant 340
@340
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
//label WHILE_EXP2
(Sys.wait$WHILE_EXP2)
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
@gt_end114
D = A
@gt_command
0 ; JMP
(gt_end114)
//not
@SP
A = M - 1
M = !M
//if-goto WHILE_END2
@SP
AM = M - 1
D = M
@Sys.wait$WHILE_END2
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
A = A - 1
M = M - D
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
//goto WHILE_EXP2
@Sys.wait$WHILE_EXP2
0 ; JMP
//label WHILE_END2
(Sys.wait$WHILE_END2)
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
A = A - 1
M = M - D
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
//goto WHILE_EXP1
@Sys.wait$WHILE_EXP1
0 ; JMP
//label WHILE_END1
(Sys.wait$WHILE_END1)
//push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
//return
@return_command
0 ; JMP
//function Sys.error 0
(Sys.error)
//push static 0
@Sys.0
D = M
@SP
M = M + 1
A = M - 1
M = D
//call Output.printString 1
@Output.printString
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_312
D = A
@call_command
0 ; JMP
(RET_CALL_312)
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
@Output.printInt
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_313
D = A
@call_command
0 ; JMP
(RET_CALL_313)
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
//call Output.printChar 1
@Output.printChar
D = A
@R15
M = D
@1
D = A
@R14
M = D
@RET_CALL_314
D = A
@call_command
0 ; JMP
(RET_CALL_314)
//pop temp 0
@SP
AM = M - 1
D = M
@5
M = D
//call Sys.halt 0
@Sys.halt
D = A
@R15
M = D
@0
D = A
@R14
M = D
@RET_CALL_315
D = A
@call_command
0 ; JMP
(RET_CALL_315)
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
@return_command
0 ; JMP
