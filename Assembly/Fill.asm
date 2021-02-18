// Fill black to the screen when press any key

@SCREEN
D = A
@NowPos
M = D

(LOOP)
@0
D = A
@KBD
D = M - D
@IFNPRESS
D ; JEQ

	(IFPRESS)
	@NowPos
	A = M
	M = -1

	@NowPos
	M = M + 1

	@ENDIF
	0 ; JMP

	(IFNPRESS)

	@NowPos
	A = M
	M = 0
	@NowPos
	M = M - 1
	(ENDIF)


@LOOP
0 ; JMP