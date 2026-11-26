; krister's paths:

endoff	equ	1

checkifend	macro
	P_START65816
	lda #\1
	cmp stage
	bne .\@
	lda #201
	sta c_type
.\@
	P_END65816
	endm



	START_PATH	gameover
	P_RELTOPLAYER	ON
	P_ALWAYSGENVECS	OFF
	P_ZREMOVE	OFF
	IFD	_SASM
	P_SET	rotx,-192
	P_SET	roty,-192
	ENDC
	IFD	_ARGSFX
	P_SET	rotx,-192&BM
	P_SET	roty,-192&BM
	ENDC
	IFEQ	SPEED_MODE
.lp	P_ADD	roty,4
	P_ADD	rotx,6
	P_ADD	worldz,-69
	P_LOOP	32,.lp

.lp2	P_ADD	roty,4
	P_LOOP	16,.lp2
	ELSEIF
.lp	P_ADD	roty,2
	P_ADD	rotx,3
	P_ADD	worldz,-34
	P_WAIT	1
	P_ADD	roty,2
	P_ADD	rotx,3
	P_ADD	worldz,-35
	P_LOOP	32,.lp

.lp2	P_ADD	roty,2
	P_LOOP	32,.lp2
	ENDC

	P_SET	rotx,0
	P_SET	roty,0
.wait	P_GOTO	.wait



	START_PATH	theendt
	P_RELTOPLAYER	ON
	P_ALWAYSGENVECS	OFF
	P_ZREMOVE	ON
	IFEQ	SPEED_MODE
.lp	P_ADD	worldx,-22
	P_ADD	worldy,19
	P_ADD	rotx,5
	P_ADD	roty,5
	P_LOOP	50,.lp
	ELSEIF
.lp	P_ADD	worldx,-11
	P_ADD	worldy,9
	P_ADD	rotx,2
	P_ADD	roty,2
	P_WAIT	1
	P_ADD	worldx,-11
	P_ADD	worldy,10
	P_ADD	rotx,3
	P_ADD	roty,3
	P_LOOP	50,.lp
	ENDC
	P_SET	rotx,0
	P_SET	roty,0
.wait	P_GOTO	endin	.wait

	START_PATH	theendh
	P_RELTOPLAYER	ON
	P_ALWAYSGENVECS	OFF
	P_ZREMOVE	ON
	P_SET	rotx,0
	P_SET	roty,128
	IFEQ	SPEED_MODE
.lp	P_ADD	worldx,20
	P_ADD	worldy,-27
	P_ADD	rotx,5
	P_ADD	roty,5
	P_LOOP	50,.lp
	ELSEIF
.lp	P_ADD	worldx,10
	P_ADD	worldy,-13
	P_ADD	rotx,2
	P_ADD	roty,2
	P_WAIT	1
	P_ADD	worldx,10
	P_ADD	worldy,-14
	P_ADD	rotx,3
	P_ADD	roty,3
	P_LOOP	50,.lp
	ENDC
	P_SET	rotx,0
	P_SET	roty,0
.wait	P_GOTO	endin	.wait

	START_PATH	theende
	P_RELTOPLAYER	ON
	P_ALWAYSGENVECS	OFF
	P_ZREMOVE	ON
	P_SET	rotx,0
	P_SET	roty,128
	IFEQ	SPEED_MODE
.lp	P_ADD	worldx,19
	P_ADD	worldy,30
	P_ADD	rotx,5
	P_ADD	roty,5
	P_LOOP	50,.lp
	ELSEIF
.lp	P_ADD	worldx,9
	P_ADD	worldy,15
	P_ADD	rotx,2
	P_ADD	roty,2
	P_WAIT	1
	P_ADD	worldx,10
	P_ADD	worldy,15
	P_ADD	rotx,3
	P_ADD	roty,3
	P_LOOP	50,.lp
	ENDC
	P_SET	rotx,0
	P_SET	roty,0
.wait	P_GOTO	endin	.wait

	START_PATH	theende2
	P_RELTOPLAYER	ON
	P_ALWAYSGENVECS	OFF
	P_ZREMOVE	ON
	P_SET	rotx,0
	P_SET	roty,128
	IFEQ	SPEED_MODE
.lp	P_ADD	worldx,-20
	P_ADD	worldy,26
	P_ADD	rotx,5
	P_ADD	roty,5
	P_LOOP	50,.lp
	ELSEIF
.lp	P_ADD	worldx,-10
	P_ADD	worldy,13
	P_ADD	rotx,2
	P_ADD	roty,2
	P_WAIT	1
	P_ADD	worldx,-10
	P_ADD	worldy,13
	P_ADD	rotx,3
	P_ADD	roty,3
	P_LOOP	50,.lp
	ENDC
	P_SET	rotx,0
	P_SET	roty,0
.wait	P_GOTO	endin	.wait

	START_PATH	theendn
	P_RELTOPLAYER	ON
	P_ALWAYSGENVECS	OFF
	P_ZREMOVE	ON
	P_SET	rotx,0
	P_SET	roty,128
	IFEQ	SPEED_MODE
.lp	P_ADD	worldx,-29
	P_ADD	worldy,-27
	P_ADD	rotx,5
	P_ADD	roty,5
	P_LOOP	50,.lp
	ELSEIF
.lp	P_ADD	worldx,-14
	P_ADD	worldy,-13
	P_ADD	rotx,2
	P_ADD	roty,2
	P_WAIT	1
	P_ADD	worldx,-15
	P_ADD	worldy,-14
	P_ADD	rotx,3
	P_ADD	roty,3
	P_LOOP	50,.lp
	ENDC
	P_SET	rotx,0
	P_SET	roty,0
.wait	P_GOTO	endin	.wait

	START_PATH	theendd
	P_RELTOPLAYER	ON
	P_ALWAYSGENVECS	OFF
	P_ZREMOVE	ON
	P_SET	roty,128
	IFEQ	SPEED_MODE
.lp	P_ADD	worldx,21
	P_ADD	worldy,-28
	P_ADD	rotx,5
	P_ADD	roty,5
	P_LOOP	50,.lp
	ELSEIF
.lp	P_ADD	worldx,10
	P_ADD	worldy,-14
	P_ADD	rotx,2
	P_ADD	roty,2
	P_WAIT	1
	P_ADD	worldx,11
	P_ADD	worldy,-14
	P_ADD	rotx,3
	P_ADD	roty,3
	P_LOOP	50,.lp
	ENDC
	P_SET	rotx,0
	P_SET	roty,0
.wait	P_GOTO	endin	.wait


	IFEQ	SPEED_MODE
endin	P_ADD	roty,4
	P_ADD	worldz,-19
	P_LOOP	32,endin
.ww	P_WAIT	30
	P_GOTO	.ww
	ELSEIF
endin	P_ADD	roty,2
	P_ADD	worldz,-9
	P_WAIT	1
	P_ADD	roty,2
	P_ADD	worldz,-10
	P_LOOP	32,endin
.ww	P_WAIT	60
	P_GOTO	.ww
	ENDC





	START_PATH	fadeintotal
	P_RELTOPLAYER	ON
	P_ALWAYSGENVECS	ON
	P_ZREMOVE	ON
	P_SETVEL	0
	P_TRAIL		OFF
	P_RELTOPLAYER	ON
	IFEQ	SPEED_MODE
	P_WAIT		1
	P_ADD		depthoffset,1
	P_WAIT		1
	P_ADD		depthoffset,1
	P_WAIT		1
	P_ADD		depthoffset,1
	ELSEIF
	P_WAIT		2
	P_ADD		depthoffset,1
	P_WAIT		2
	P_ADD		depthoffset,1
	P_WAIT		2
	P_ADD		depthoffset,1
	ENDC
.eternity	P_GOTO		.eternity

	START_PATH	total
	P_RELTOPLAYER	ON
	P_ALWAYSGENVECS	ON
	P_ZREMOVE	ON
	IFEQ	SPEED_MODE
	P_SETVEL	-120
	ELSEIF
	P_SETVEL	-60
	ENDC
	P_GOSUB		text_swoopin
	P_SETVEL	0
	P_TRAIL		OFF
	P_GOSUB		kwaitchk
	IFEQ	SPEED_MODE
	P_WAIT		30
.boloxm	P_ADD		worldx,-200
	P_LOOP		15,.boloxm
	ELSEIF
	P_WAIT		60
.boloxm	P_ADD		worldx,-100
	P_LOOP		30,.boloxm
	ENDC
	P_REMOVE
	P_END

	START_PATH	totaln
	P_RELTOPLAYER	ON
	P_ALWAYSGENVECS	ON
	P_ZREMOVE	ON
	IFEQ	SPEED_MODE
	P_SETVEL	-120
	ELSEIF
	P_SETVEL	-60
	ENDC
	P_GOSUB		text_swoopin
	P_SETVEL	0
	P_TRAIL		OFF
	P_GOSUB		kwaitchk
	IFEQ	SPEED_MODE
	P_WAIT		40
.boloxm	P_ADD		worldx,200
	P_LOOP		15,.boloxm
	ELSEIF
	P_WAIT		80
.boloxm	P_ADD		worldx,100
	P_LOOP		30,.boloxm
	ENDC
	P_REMOVE
	P_END

	START_PATH	ave
	P_RELTOPLAYER	ON
	P_ALWAYSGENVECS	ON
	P_ZREMOVE	ON
	IFEQ	SPEED_MODE
	P_SETVEL	-120
	ELSEIF
	P_SETVEL	-60
	ENDC
	P_GOSUB		text_swoopin
	P_SETVEL	0
	P_TRAIL		OFF
	P_GOSUB		kwaitchk
	IFEQ	SPEED_MODE
	P_WAIT		50
.boloxm	P_ADD		worldx,-200
	P_LOOP		15,.boloxm
	ELSEIF
	P_WAIT		100
.boloxm	P_ADD		worldx,-100
	P_LOOP		30,.boloxm
	ENDC
	P_REMOVE
	P_END

	START_PATH	aven
	P_RELTOPLAYER	ON
	P_ALWAYSGENVECS	ON
	P_ZREMOVE	ON
	IFEQ	SPEED_MODE
	P_SETVEL	-120
	ELSEIF
	P_SETVEL	-60
	ENDC
	P_GOSUB		text_swoopin
	P_SETVEL	0
	P_TRAIL		OFF
	P_GOSUB		kwaitchk
	IFEQ	SPEED_MODE
	P_WAIT		45
.boloxm	P_ADD		worldx,200
	P_LOOP		15,.boloxm
	ELSEIF
	P_WAIT		90
.boloxm	P_ADD		worldx,100
	P_LOOP		30,.boloxm
	ENDC
	P_REMOVE
	P_END


	START_PATH	stage1
	P_RELTOPLAYER	ON
	P_ALWAYSGENVECS	ON
	P_ZREMOVE	ON
	P_SETVEL	0
	IFEQ	SPEED_MODE
.go	P_ADD		worldz,-100
	P_LOOP		15,.go
	ELSEIF
.go	P_ADD		worldz,-50
	P_LOOP		30,.go
	ENDC
	P_TRAIL		OFF
	P_GOSUB		kwaitchk
	IFEQ	SPEED_MODE
	P_WAIT		10+endoff
	ELSEIF
	P_WAIT		(10+endoff)*2
	ENDC
	P_TRAIL		off	7
	P_WAIT		1
	checkifend	1
	IFEQ	SPEED_MODE
.go2	P_ADD		worldx,200
	P_LOOP		15,.go2
	ELSEIF
.go2	P_ADD		worldx,100
	P_LOOP		30,.go2
	ENDC
	P_REMOVE
	P_END

	START_PATH	stage2
	P_RELTOPLAYER	ON
	P_ALWAYSGENVECS	ON
	P_ZREMOVE	ON
	P_SETVEL	0
	IFEQ	SPEED_MODE
.go	P_ADD		worldz,-100
	P_LOOP		15,.go
	ELSEIF
.go	P_ADD		worldz,-50
	P_LOOP		30,.go
	ENDC
	P_TRAIL		OFF
	P_GOSUB		kwaitchk
	IFEQ	SPEED_MODE
	P_WAIT		15+endoff
	ELSEIF
	P_WAIT		(15+endoff)*2
	ENDC
	P_TRAIL		off	7
	P_WAIT		1
	checkifend	2
	IFEQ	SPEED_MODE
.go2	P_ADD		worldx,-200
	P_LOOP		15,.go2
	ELSEIF
.go2	P_ADD		worldx,-100
	P_LOOP		30,.go2
	ENDC
	P_REMOVE
	P_END

	START_PATH	stage3
	P_RELTOPLAYER	ON
	P_ALWAYSGENVECS	ON
	P_ZREMOVE	ON
	P_SETVEL	0
	IFEQ	SPEED_MODE
.go	P_ADD		worldz,-100
	P_LOOP		15,.go
	ELSEIF
.go	P_ADD		worldz,-50
	P_LOOP		30,.go
	ENDC
	P_TRAIL		OFF
	P_GOSUB		kwaitchk
	IFEQ	SPEED_MODE
	P_WAIT		20+endoff
	ELSEIF
	P_WAIT		(20+endoff)*2
	ENDC
	P_TRAIL		off	7
	P_WAIT		1
	checkifend	3
	IFEQ	SPEED_MODE
.go2	P_ADD		worldx,200
	P_LOOP		15,.go2
	ELSEIF
.go2	P_ADD		worldx,100
	P_LOOP		30,.go2
	ENDC
	P_REMOVE
	P_END

	START_PATH	stage4
	P_RELTOPLAYER	ON
	P_ALWAYSGENVECS	ON
	P_ZREMOVE	ON
	P_SETVEL	0
	IFEQ	SPEED_MODE
.go	P_ADD		worldz,-100
	P_LOOP		15,.go
	ELSEIF
.go	P_ADD		worldz,-50
	P_LOOP		30,.go
	ENDC
	P_TRAIL		OFF
	P_GOSUB		kwaitchk
	IFEQ	SPEED_MODE
	P_WAIT		25+endoff
	ELSEIF
	P_WAIT		(25+endoff)*2
	ENDC
	P_TRAIL		off	7
	P_WAIT		1
	checkifend	4
	IFEQ	SPEED_MODE
.go2	P_ADD		worldx,-200
	P_LOOP		15,.go2
	ELSEIF
.go2	P_ADD		worldx,-100
	P_LOOP		30,.go2
	ENDC
	P_REMOVE
	P_END

	START_PATH	stage5
	P_RELTOPLAYER	ON
	P_ALWAYSGENVECS	ON
	P_ZREMOVE	ON
	P_SETVEL	0
	IFEQ	SPEED_MODE
.go	P_ADD		worldz,-100
	P_LOOP		15,.go
	ELSEIF
.go	P_ADD		worldz,-50
	P_LOOP		30,.go
	ENDC
	P_TRAIL		OFF
	P_GOSUB		kwaitchk
	IFEQ	SPEED_MODE
	P_WAIT		30+endoff
	ELSEIF
	P_WAIT		(30+endoff)*2
	ENDC
	P_TRAIL		off	7
	P_WAIT		1
	checkifend	5
	IFEQ	SPEED_MODE
.go2	P_ADD		worldx,200
	P_LOOP		15,.go2
	ELSEIF
.go2	P_ADD		worldx,100
	P_LOOP		30,.go2
	ENDC
	P_REMOVE
	P_END

	START_PATH	stage6
	P_RELTOPLAYER	ON
	P_ALWAYSGENVECS	ON
	P_ZREMOVE	ON
	P_SETVEL	0
	IFEQ	SPEED_MODE
.go	P_ADD		worldz,-100
	P_LOOP		15,.go
	ELSEIF
.go	P_ADD		worldz,-50
	P_LOOP		30,.go
	ENDC
	P_TRAIL		OFF
	P_GOSUB		kwaitchk
	IFEQ	SPEED_MODE
	P_WAIT		35+endoff
	ELSEIF
	P_WAIT		(35+endoff)*2
	ENDC
	P_TRAIL		off	7
	P_WAIT		1
	checkifend	6
	IFEQ	SPEED_MODE
.go2	P_ADD		worldx,-200
	P_LOOP		15,.go2
	ELSEIF
.go2	P_ADD		worldx,-100
	P_LOOP		30,.go2
	ENDC
	P_REMOVE
	P_END

	START_PATH	stage7
	P_RELTOPLAYER	ON
	P_ALWAYSGENVECS	ON
	P_ZREMOVE	ON
	P_SETVEL	0
	IFEQ	SPEED_MODE
.go	P_ADD		worldz,-100
	P_LOOP		15,.go
	ELSEIF
.go	P_ADD		worldz,-50
	P_LOOP		30,.go
	ENDC
	P_TRAIL		OFF
	P_GOSUB		kwaitchk
	IFEQ	SPEED_MODE
	P_WAIT		40+endoff
	ELSEIF
	P_WAIT		(40+endoff)*2
	ENDC
	P_TRAIL		off
	P_WAIT		1
	checkifend	7
	IFEQ	SPEED_MODE
.go2	P_ADD		worldx,200
	P_LOOP		15,.go2
	ELSEIF
.go2	P_ADD		worldx,100
	P_LOOP		30,.go2
	ENDC
	P_REMOVE
	P_END

kwaitchk
.wait	P_IMPORT		pbyte1,c_type
	P_WAIT		1
	P_IFNOTSAME		pbyte1,0,.wait
	P_RETURN


