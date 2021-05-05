@17
D = A
@SP
M = M + 1
A = M - 1
M = D
@17
D = A
@SP
M = M + 1
A = M - 1
M = D
@SP
AM = M - 1
D = M
A = A - 1
D = M - D
M = 0
@END_EQ_0
D ; JNE
@SP
A = M - 1
M = -1
(END_EQ_0)
@17
D = A
@SP
M = M + 1
A = M - 1
M = D
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
@SP
AM = M - 1
D = M
A = A - 1
D = M - D
M = 0
@END_EQ_1
D ; JNE
@SP
A = M - 1
M = -1
(END_EQ_1)
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
@17
D = A
@SP
M = M + 1
A = M - 1
M = D
@SP
AM = M - 1
D = M
A = A - 1
D = M - D
M = 0
@END_EQ_2
D ; JNE
@SP
A = M - 1
M = -1
(END_EQ_2)
@892
D = A
@SP
M = M + 1
A = M - 1
M = D
@891
D = A
@SP
M = M + 1
A = M - 1
M = D
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
@891
D = A
@SP
M = M + 1
A = M - 1
M = D
@892
D = A
@SP
M = M + 1
A = M - 1
M = D
@SP
AM = M - 1
D = M
A = A - 1
D = M - D
M = 0
@END_LT_1
D ; JGE
@SP
A = M - 1
M = -1
(END_LT_1)
@891
D = A
@SP
M = M + 1
A = M - 1
M = D
@891
D = A
@SP
M = M + 1
A = M - 1
M = D
@SP
AM = M - 1
D = M
A = A - 1
D = M - D
M = 0
@END_LT_2
D ; JGE
@SP
A = M - 1
M = -1
(END_LT_2)
@32767
D = A
@SP
M = M + 1
A = M - 1
M = D
@32766
D = A
@SP
M = M + 1
A = M - 1
M = D
@SP
AM = M - 1
D = M
A = A - 1
D = M - D
M = 0
@END_GT_0
D ; JLE
@SP
A = M - 1
M = -1
(END_GT_0)
@32766
D = A
@SP
M = M + 1
A = M - 1
M = D
@32767
D = A
@SP
M = M + 1
A = M - 1
M = D
@SP
AM = M - 1
D = M
A = A - 1
D = M - D
M = 0
@END_GT_1
D ; JLE
@SP
A = M - 1
M = -1
(END_GT_1)
@32766
D = A
@SP
M = M + 1
A = M - 1
M = D
@32766
D = A
@SP
M = M + 1
A = M - 1
M = D
@SP
AM = M - 1
D = M
A = A - 1
D = M - D
M = 0
@END_GT_2
D ; JLE
@SP
A = M - 1
M = -1
(END_GT_2)
@57
D = A
@SP
M = M + 1
A = M - 1
M = D
@31
D = A
@SP
M = M + 1
A = M - 1
M = D
@53
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
D = D + M
@SP
M = M + 1
A = M - 1
M = D
@112
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
D = -M
@SP
M = M + 1
A = M - 1
M = D
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
@82
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
D = D | M
@SP
M = M + 1
A = M - 1
M = D
@SP
AM = M - 1
D = !M
@SP
M = M + 1
A = M - 1
M = D
