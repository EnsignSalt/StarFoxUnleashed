	start_shapes
	
	IFNE	hipolyarwing
;--Shape file ----- C:\MYDEMO~1.3DG ----
	ifne	DO_HDR

MYDEMO_4
	ShapeHdr	MYDEMO_4_P,0,MYDEMO_4_F,0,0,0,0,0,playerB_col,35,14,60,60,id_0_c,0,0,0,0,<MYDEMO_4>
mydemoLG_4
	ShapeHdr	MYDEMO_4_P,0,MYDEMO_4_F,0,0,0,0,4,playerB_col,35,14,60,60,id_0_c,0,0,0,0,<MYDEMO_4>
Bmyship_4	ShapeHdr	MYDEMO_4_P,0,MYDEMO_4_F,0,0,0,0,4,playerB_col,35,14,60,60,black_c,0,0,0,0,<MYDEMO_4>
Imyship_4	ShapeHdr	MYDEMO_4_P,0,MYDEMO_4_F,0,500,0,0,0,playerB_col,35,14,60,60,id_0_c,0,0,0,0,<MYDEMO_4> ; SCRAMBLE sequence ship model
myship_4	ShapeHdr	MYDEMO_4_P,0,MYDEMO_4_F,0,0,0,0,0,playerB_col,35,14,60,60,id_0_c,0,0,0,0,<MYDEMO_4> ; Main player ship model
friendship_4	ShapeHdr	mydemo_4_P,0,mydemo_4_F,0,0,0,0,0,playerB_col,35,14,60,60,id_0_c,0,0,0,0,<mydemo_4> ; Teammate ship model
my_up	ShapeHdr	MYDEMO_4_P,0,MYDEMO_4_F,0,100,0,0,0,0,35,14,60,60,id_0_c,0,0,0,0,<MYDEMO_4>
	elseif
MYDEMO_4_P
	Pointsb	27
	pb	15,-3,3	;0
	pb	15,12,20	;1
	pb	10,4,0	;2
	pb	13,6,3	;3
	pb	20,4,0	;4
	pb	18,6,3	;5
	pb	35,14,-40	;6
	pb	20,9,-10	;7
	pb	27,9,-20	;8
	pb	30,9,-20	;9
	pb	15,3,-1	;10
	pb	20,-11,-20	;11
	pb	-10,4,0	;12
	pb	-15,-3,3	;13
	pb	-20,-11,-20	;14
	pb	-18,6,3	;15
	pb	-20,4,0	;16
	pb	-13,6,3	;17
	pb	-35,14,-40	;18
	pb	-20,9,-10	;19
	pb	-30,9,-20	;20
	pb	-27,9,-20	;21
	pb	-15,12,20	;22
	pb	-15,3,-1	;23
	pb	0,10,18	;24
	pb	0,2,60	;25
	pb	-2,-2,15	;26
	PointsXb	1
	pb	-5,3,-1	;27
	Pointsb	7
	pb	0,-1,-6	;29
	pb	0,-2,-10	;30
	pb	2,-2,15	;31
	pb	2,-7,-3	;32
	pb	-12,5,0	;33
	pb	-2,-7,-3	;34
	pb	12,5,0	;35

	EndPoints
MYDEMO_4_F
	Vizis	48
	Viz	21,20,18,0,123,-31	;0
	Viz	18,20,21,0,-123,31	;1
	Viz	6,9,8,0,123,-31	;2
	Viz	8,9,6,0,-123,31	;3
	Viz	19,18,16,65,-98,49	;4
	Viz	4,6,7,-65,-98,49	;5
	Viz	25,26,31,0,127,11	;6
	Viz	19,12,18,-70,-105,-17	;7
	Viz	6,2,7,70,-105,-17	;8
	Viz	25,24,12,86,-92,17	;9
	Viz	2,24,25,-86,-92,17	;10
	Viz	12,16,18,0,123,-31	;11
	Viz	6,4,2,0,123,-31	;12
	Viz	31,2,25,-89,89,12	;13
	Viz	25,12,26,89,89,12	;14
	Viz	2,25,35,57,-113,-6	;15
	Viz	35,25,2,-57,113,6	;16
	Viz	33,25,12,-57,-113,-6	;17
	Viz	12,25,33,57,113,6	;18
	Viz	19,16,12,0,-114,57	;19
	Viz	2,4,7,0,-114,57	;20
	Viz	14,22,23,93,-79,-34	;21
	Viz	10,1,11,-93,-79,-34	;22
	Viz	13,22,14,112,45,40	;23
	Viz	11,1,0,-112,45,40	;24
	Viz	23,12,14,6,-103,-74	;25
	Viz	11,2,10,-6,-103,-74	;26
	Viz	12,13,14,-104,73,3	;27
	Viz	11,0,2,104,73,3	;28
	Viz	17,12,16,0,-106,-70	;29
	Viz	15,16,12,0,106,70	;30
	Viz	5,4,2,0,-106,-70	;31
	Viz	3,2,4,0,106,70	;32
	Viz	2,1,10,-13,-116,-50	;33
	Viz	23,22,12,13,-116,-50	;34
	Viz	12,22,13,-104,54,48	;35
	Viz	0,1,2,104,54,48	;36
	Viz	24,2,12,0,-120,-40	;37
	Viz	32,34,30,0,103,-74	;38
	Viz	32,31,26,0,122,34	;39
	Viz	12,34,26,98,77,22	;40
	Viz	2,31,32,-98,77,22	;41
	Viz	12,30,34,96,52,-65	;42
	Viz	32,30,2,-96,52,-65	;43
	Viz	30,29,28,60,-109,-27	;44
	Viz	12,27,29,-5,-102,-76	;45
	Viz	27,12,2,0,-90,-90	;46
	Viz	27,28,29,0,-99,-79	;47
	BSPInit	MYDEMO_4_EBSP
	BSP	13,MYDEMO_4_f1,.bsp2
	BSP	14,MYDEMO_4_f3,.bsp4
	BSPE	MYDEMO_4_f5
.bsp4	BSP	34,MYDEMO_4_f6,.bsp7
	BSPE	MYDEMO_4_f8
.bsp7	BSP	19,MYDEMO_4_f9,.bsp10
	BSPE	MYDEMO_4_f11
.bsp10	BSPE	MYDEMO_4_f12
.bsp2	BSP	33,MYDEMO_4_f13,.bsp14
	BSPE	MYDEMO_4_f15
.bsp14	BSP	20,MYDEMO_4_f16,.bsp17
	BSPE	MYDEMO_4_f18
.bsp17	BSPE	MYDEMO_4_f19

MYDEMO_4_f1	Faces
	Face3	20,13,-89,89,12,31,2,25
	FendQ
MYDEMO_4_f3	Faces
	Face3	16,14,89,89,12,25,12,26
	FendQ
MYDEMO_4_f5	Faces
	Face3	18,6,0,127,11,25,26,31
	Face4	32,39,0,122,34,32,31,26,34
	Face3	14,40,98,77,22,12,34,26
	Face3	18,41,-98,77,22,2,31,32
	Face4	10,44,60,-109,-27,30,29,28,2
	Face4	10,46,0,-90,-90,27,12,2,28
	Face3	12,9,86,-92,17,25,24,12
	Face3	14,10,-86,-92,17,2,24,25
	Face3	11,37,0,-120,-40,24,2,12
	Face3	14,38,0,103,-74,32,34,30
	Face3	12,42,96,52,-65,12,30,34
	Face3	16,43,-96,52,-65,32,30,2
	Face4	10,45,-5,-102,-76,12,27,29,30
	Face3	43,47,0,-99,-79,27,28,29
	FendQ
MYDEMO_4_f6	Faces
	Face3	32,34,13,-116,-50,23,22,12
	FendQ
MYDEMO_4_f8	Faces
	Face3	11,17,-57,-113,-6,33,25,12
	Face3	18,18,57,113,6,12,25,33
	Face3	32,23,112,45,40,13,22,14
	Face3	28,27,-104,73,3,12,13,14
	Face3	30,35,-104,54,48,12,22,13
	Face3	34,21,93,-79,-34,14,22,23
	Face3	30,25,6,-103,-74,23,12,14
	FendQ
MYDEMO_4_f9	Faces
	Face3	44,19,0,-114,57,19,16,12
	FendQ
MYDEMO_4_f11	Faces
	Face3	12,1,0,-123,31,18,20,21
	Face3	18,0,0,123,-31,21,20,18
	Face3	18,11,0,123,-31,12,16,18
	Face3	12,4,65,-98,49,19,18,16
	Face3	14,7,-70,-105,-17,19,12,18
	FendQ
MYDEMO_4_f12	Faces
	Face4	0,29,0,-106,-70,17,12,16,15
	Face4	0,30,0,106,70,15,16,12,17
	FendQ
MYDEMO_4_f13	Faces
	Face3	30,33,-13,-116,-50,2,1,10
	FendQ
MYDEMO_4_f15	Faces
	Face3	12,15,57,-113,-6,2,25,35
	Face3	18,16,-57,113,6,35,25,2
	Face3	34,24,-112,45,40,11,1,0
	Face3	30,28,104,73,3,11,0,2
	Face3	32,36,104,54,48,0,1,2
	Face3	32,22,-93,-79,-34,10,1,11
	Face3	28,26,-6,-103,-74,11,2,10
	FendQ
MYDEMO_4_f16	Faces
	Face3	44,20,0,-114,57,2,4,7
	FendQ
MYDEMO_4_f18	Faces
	Face3	14,3,0,-123,31,8,9,6
	Face3	18,2,0,123,-31,6,9,8
	Face3	18,12,0,123,-31,6,4,2
	Face3	14,5,-65,-98,49,4,6,7
	Face3	12,8,70,-105,-17,6,2,7
	FendQ
MYDEMO_4_f19	Faces
	Face4	0,31,0,-106,-70,5,4,2,3
	Face4	0,32,0,106,70,3,2,4,5
	FendQ
MYDEMO_4_EBSP
	EndShape

	endc

;--Shape file ----- C:\MYDEMO_L.TXT ----
	ifne	DO_HDR

MYDEMO_L
	ShapeHdr	MYDEMO_L_P,0,MYDEMO_L_F,0,0,0,0,0,playerB_col,35,14,60,60,id_0_c,0,0,0,0,<MYDEMO_L>
mydemoLG_l
	ShapeHdr	MYDEMO_L_P,0,MYDEMO_L_F,0,0,0,0,4,playerB_col,35,14,60,60,id_0_c,0,0,0,0,<MYDEMO_L>
	elseif
MYDEMO_L_P
	Pointsb	5
	pb	35,14,-40	;0
	pb	30,9,-20	;1
	pb	27,9,-20	;2
	pb	-20,9,-10	;3
	pb	-35,4,-20	;4
	PointsXb	1
	pb	-20,4,0	;5
	Pointsb	2
	pb	20,9,-10	;7
	pb	0,2,60	;8
	PointsXb	2
	pb	-2,-2,15	;9
	pb	-10,4,0	;11
	Pointsb	1
	pb	0,10,18	;13
	PointsXb	1
	pb	12,5,0	;14
	Pointsb	2
	pb	-20,-11,-20	;16
	pb	-15,12,20	;17
	PointsXb	1
	pb	-15,3,-1	;18
	Pointsb	2
	pb	15,12,20	;20
	pb	20,-11,-20	;21
	PointsXb	1
	pb	-15,-3,3	;22
	Pointsb	1
	pb	-13,6,3	;24
	PointsXb	1
	pb	-18,6,3	;25
	Pointsb	1
	pb	13,6,3	;27
	PointsXb	1
	pb	2,-7,-3	;28
	Pointsb	2
	pb	0,-2,-10	;30
	pb	0,-1,-6	;31
	PointsXb	1
	pb	5,3,-1	;32

	EndPoints
MYDEMO_L_F
	Vizis	46
	Viz	2,1,0,0,-123,31	;0
	Viz	0,1,2,0,123,-31	;1
	Viz	6,0,7,-65,-98,49	;2
	Viz	8,9,10,0,127,11	;3
	Viz	0,12,7,70,-105,-17	;4
	Viz	3,4,5,65,-98,49	;5
	Viz	12,13,8,-86,-92,17	;6
	Viz	8,13,11,86,-92,17	;7
	Viz	0,6,12,0,123,-31	;8
	Viz	8,11,9,89,89,12	;9
	Viz	10,12,8,-89,89,12	;10
	Viz	3,11,4,-76,38,-95	;11
	Viz	11,5,4,0,127,0	;12
	Viz	11,8,15,57,113,6	;13
	Viz	15,8,11,-57,-113,-6	;14
	Viz	14,8,12,-57,113,6	;15
	Viz	12,8,14,57,-113,-6	;16
	Viz	12,6,7,0,-114,57	;17
	Viz	3,5,11,0,-114,57	;18
	Viz	19,20,21,-93,-79,-34	;19
	Viz	16,17,18,93,-79,-34	;20
	Viz	21,20,23,-112,45,40	;21
	Viz	22,17,16,112,45,40	;22
	Viz	21,12,19,-6,-103,-74	;23
	Viz	18,11,16,6,-103,-74	;24
	Viz	21,23,12,104,73,3	;25
	Viz	11,22,16,-104,73,3	;26
	Viz	27,12,6,0,106,70	;27
	Viz	26,6,12,0,-106,-70	;28
	Viz	25,5,11,0,106,70	;29
	Viz	24,11,5,0,-106,-70	;30
	Viz	18,17,11,13,-116,-50	;31
	Viz	12,20,19,-13,-116,-50	;32
	Viz	23,20,12,104,54,48	;33
	Viz	11,17,22,-104,54,48	;34
	Viz	13,12,11,0,-120,-40	;35
	Viz	28,29,30,0,103,-74	;36
	Viz	28,10,9,0,122,34	;37
	Viz	12,10,28,-98,77,22	;38
	Viz	11,29,9,98,77,22	;39
	Viz	28,30,12,-96,52,-65	;40
	Viz	11,30,29,96,52,-65	;41
	Viz	11,33,31,-5,-102,-76	;42
	Viz	30,31,32,60,-109,-27	;43
	Viz	33,11,12,0,-90,-90	;44
	Viz	33,32,31,0,-99,-79	;45
	BSPInit	MYDEMO_L_EBSP
	BSP	9,MYDEMO_L_f1,.bsp2
	BSP	10,MYDEMO_L_f3,.bsp4
	BSPE	MYDEMO_L_f5
.bsp4	BSP	32,MYDEMO_L_f6,.bsp7
	BSPE	MYDEMO_L_f8
.bsp7	BSP	17,MYDEMO_L_f9,.bsp10
	BSPE	MYDEMO_L_f11
.bsp10	BSPE	MYDEMO_L_f12
.bsp2	BSP	31,MYDEMO_L_f13,.bsp14
	BSPE	MYDEMO_L_f15
.bsp14	BSPE	MYDEMO_L_f16

MYDEMO_L_f1	Faces
	Face3	16,9,89,89,12,8,11,9
	FendQ
MYDEMO_L_f3	Faces
	Face3	20,10,-89,89,12,10,12,8
	FendQ
MYDEMO_L_f5	Faces
	Face3	18,3,0,127,11,8,9,10
	Face4	32,37,0,122,34,28,10,9,29
	Face3	18,38,-98,77,22,12,10,28
	Face3	14,39,98,77,22,11,29,9
	Face4	10,43,60,-109,-27,30,31,32,12
	Face4	10,44,0,-90,-90,33,11,12,32
	Face3	14,6,-86,-92,17,12,13,8
	Face3	12,7,86,-92,17,8,13,11
	Face3	11,35,0,-120,-40,13,12,11
	Face3	14,36,0,103,-74,28,29,30
	Face3	16,40,-96,52,-65,28,30,12
	Face3	12,41,96,52,-65,11,30,29
	Face4	10,42,-5,-102,-76,11,33,31,30
	Face3	43,45,0,-99,-79,33,32,31
	FendQ
MYDEMO_L_f6	Faces
	Face3	30,32,-13,-116,-50,12,20,19
	FendQ
MYDEMO_L_f8	Faces
	Face3	18,15,-57,113,6,14,8,12
	Face3	12,16,57,-113,-6,12,8,14
	Face3	34,21,-112,45,40,21,20,23
	Face3	30,25,104,73,3,21,23,12
	Face3	32,33,104,54,48,23,20,12
	Face3	32,19,-93,-79,-34,19,20,21
	Face3	28,23,-6,-103,-74,21,12,19
	FendQ
MYDEMO_L_f9	Faces
	Face3	44,17,0,-114,57,12,6,7
	FendQ
MYDEMO_L_f11	Faces
	Face3	14,0,0,-123,31,2,1,0
	Face3	18,1,0,123,-31,0,1,2
	Face3	18,8,0,123,-31,0,6,12
	Face3	14,2,-65,-98,49,6,0,7
	Face3	12,4,70,-105,-17,0,12,7
	FendQ
MYDEMO_L_f12	Faces
	Face4	0,27,0,106,70,27,12,6,26
	Face4	0,28,0,-106,-70,26,6,12,27
	FendQ
MYDEMO_L_f13	Faces
	Face3	32,31,13,-116,-50,18,17,11
	FendQ
MYDEMO_L_f15	Faces
	Face3	18,13,57,113,6,11,8,15
	Face3	11,14,-57,-113,-6,15,8,11
	Face3	32,22,112,45,40,22,17,16
	Face3	28,26,-104,73,3,11,22,16
	Face3	30,34,-104,54,48,11,17,22
	Face3	34,20,93,-79,-34,16,17,18
	Face3	30,24,6,-103,-74,18,11,16
	FendQ
MYDEMO_L_f16	Faces
	Face3	4,18,0,-114,57,3,5,11
	Face4	0,30,0,-106,-70,24,11,5,25
	Face3	4,5,65,-98,49,3,4,5
	Face3	4,11,-76,38,-95,3,11,4
	Face3	4,12,0,127,0,11,5,4
	Face4	0,29,0,106,70,25,5,11,24
	FendQ
MYDEMO_L_EBSP
	EndShape

	endc


;--Shape file ----- C:\MYDEMO_R.TXT ----
	ifne	DO_HDR

MYDEMO_R
	ShapeHdr	MYDEMO_R_P,0,MYDEMO_R_F,0,0,0,0,0,playerB_col,35,14,60,60,id_0_c,0,0,0,0,<MYDEMO_R>
mydemoLG_r
	ShapeHdr	MYDEMO_R_P,0,MYDEMO_R_F,0,0,0,0,4,playerB_col,35,14,60,60,id_0_c,0,0,0,0,<MYDEMO_R>
	elseif
MYDEMO_R_P
	Pointsb	25
	pb	15,-3,3	;0
	pb	15,12,20	;1
	pb	10,4,0	;2
	pb	13,6,3	;3
	pb	20,4,0	;4
	pb	18,6,3	;5
	pb	35,4,-20	;6
	pb	20,9,-10	;7
	pb	15,3,-1	;8
	pb	20,-11,-20	;9
	pb	-10,4,0	;10
	pb	-15,-3,3	;11
	pb	-20,-11,-20	;12
	pb	-18,6,3	;13
	pb	-20,4,0	;14
	pb	-13,6,3	;15
	pb	-35,14,-40	;16
	pb	-20,9,-10	;17
	pb	-30,9,-20	;18
	pb	-27,9,-20	;19
	pb	-15,12,20	;20
	pb	-15,3,-1	;21
	pb	0,10,18	;22
	pb	0,2,60	;23
	pb	-2,-2,15	;24
	PointsXb	1
	pb	-5,3,-1	;25
	Pointsb	7
	pb	0,-1,-6	;27
	pb	0,-2,-10	;28
	pb	2,-2,15	;29
	pb	2,-7,-3	;30
	pb	-12,5,0	;31
	pb	-2,-7,-3	;32
	pb	12,5,0	;33

	EndPoints
MYDEMO_R_F
	Vizis	46
	Viz	19,18,16,0,123,-31	;0
	Viz	16,18,19,0,-123,31	;1
	Viz	17,16,14,65,-98,49	;2
	Viz	23,24,29,0,127,11	;3
	Viz	17,10,16,-70,-105,-17	;4
	Viz	4,6,7,-65,-98,49	;5
	Viz	23,22,10,86,-92,17	;6
	Viz	2,22,23,-86,-92,17	;7
	Viz	10,14,16,0,123,-31	;8
	Viz	29,2,23,-89,89,12	;9
	Viz	23,10,24,89,89,12	;10
	Viz	6,2,7,76,38,-95	;11
	Viz	6,4,2,0,127,0	;12
	Viz	2,23,33,57,-113,-6	;13
	Viz	33,23,2,-57,113,6	;14
	Viz	31,23,10,-57,-113,-6	;15
	Viz	10,23,31,57,113,6	;16
	Viz	17,14,10,0,-114,57	;17
	Viz	2,4,7,0,-114,57	;18
	Viz	12,20,21,93,-79,-34	;19
	Viz	8,1,9,-93,-79,-34	;20
	Viz	11,20,12,112,45,40	;21
	Viz	9,1,0,-112,45,40	;22
	Viz	21,10,12,6,-103,-74	;23
	Viz	9,2,8,-6,-103,-74	;24
	Viz	10,11,12,-104,73,3	;25
	Viz	9,0,2,104,73,3	;26
	Viz	15,10,14,0,-106,-70	;27
	Viz	13,14,10,0,106,70	;28
	Viz	5,4,2,0,-106,-70	;29
	Viz	3,2,4,0,106,70	;30
	Viz	2,1,8,-13,-116,-50	;31
	Viz	21,20,10,13,-116,-50	;32
	Viz	10,20,11,-104,54,48	;33
	Viz	0,1,2,104,54,48	;34
	Viz	22,2,10,0,-120,-40	;35
	Viz	30,32,28,0,103,-74	;36
	Viz	30,29,24,0,122,34	;37
	Viz	10,32,24,98,77,22	;38
	Viz	2,29,30,-98,77,22	;39
	Viz	10,28,32,96,52,-65	;40
	Viz	30,28,2,-96,52,-65	;41
	Viz	28,27,26,60,-109,-27	;42
	Viz	10,25,27,-5,-102,-76	;43
	Viz	25,10,2,0,-90,-90	;44
	Viz	25,26,27,0,-99,-79	;45
	BSPInit	MYDEMO_R_EBSP
	BSP	9,MYDEMO_R_f1,.bsp2
	BSP	10,MYDEMO_R_f3,.bsp4
	BSPE	MYDEMO_R_f5
.bsp4	BSP	32,MYDEMO_R_f6,.bsp7
	BSPE	MYDEMO_R_f8
.bsp7	BSP	17,MYDEMO_R_f9,.bsp10
	BSPE	MYDEMO_R_f11
.bsp10	BSPE	MYDEMO_R_f12
.bsp2	BSP	31,MYDEMO_R_f13,.bsp14
	BSPE	MYDEMO_R_f15
.bsp14	BSPE	MYDEMO_R_f16

MYDEMO_R_f1	Faces
	Face3	20,9,-89,89,12,29,2,23
	FendQ
MYDEMO_R_f3	Faces
	Face3	16,10,89,89,12,23,10,24
	FendQ
MYDEMO_R_f5	Faces
	Face3	18,3,0,127,11,23,24,29
	Face4	32,37,0,122,34,30,29,24,32
	Face3	14,38,98,77,22,10,32,24
	Face3	18,39,-98,77,22,2,29,30
	Face4	10,42,60,-109,-27,28,27,26,2
	Face4	10,44,0,-90,-90,25,10,2,26
	Face3	12,6,86,-92,17,23,22,10
	Face3	14,7,-86,-92,17,2,22,23
	Face3	11,35,0,-120,-40,22,2,10
	Face3	14,36,0,103,-74,30,32,28
	Face3	12,40,96,52,-65,10,28,32
	Face3	16,41,-96,52,-65,30,28,2
	Face4	10,43,-5,-102,-76,10,25,27,28
	Face3	43,45,0,-99,-79,25,26,27
	FendQ
MYDEMO_R_f6	Faces
	Face3	32,32,13,-116,-50,21,20,10
	FendQ
MYDEMO_R_f8	Faces
	Face3	11,15,-57,-113,-6,31,23,10
	Face3	18,16,57,113,6,10,23,31
	Face3	32,21,112,45,40,11,20,12
	Face3	28,25,-104,73,3,10,11,12
	Face3	30,33,-104,54,48,10,20,11
	Face3	34,19,93,-79,-34,12,20,21
	Face3	30,23,6,-103,-74,21,10,12
	FendQ
MYDEMO_R_f9	Faces
	Face3	44,17,0,-114,57,17,14,10
	FendQ
MYDEMO_R_f11	Faces
	Face3	12,1,0,-123,31,16,18,19
	Face3	18,0,0,123,-31,19,18,16
	Face3	18,8,0,123,-31,10,14,16
	Face3	12,2,65,-98,49,17,16,14
	Face3	14,4,-70,-105,-17,17,10,16
	FendQ
MYDEMO_R_f12	Faces
	Face4	0,27,0,-106,-70,15,10,14,13
	Face4	0,28,0,106,70,13,14,10,15
	FendQ
MYDEMO_R_f13	Faces
	Face3	30,31,-13,-116,-50,2,1,8
	FendQ
MYDEMO_R_f15	Faces
	Face3	12,13,57,-113,-6,2,23,33
	Face3	18,14,-57,113,6,33,23,2
	Face3	34,22,-112,45,40,9,1,0
	Face3	30,26,104,73,3,9,0,2
	Face3	32,34,104,54,48,0,1,2
	Face3	32,20,-93,-79,-34,8,1,9
	Face3	28,24,-6,-103,-74,9,2,8
	FendQ
MYDEMO_R_f16	Faces
	Face3	4,18,0,-114,57,2,4,7
	Face4	0,29,0,-106,-70,5,4,2,3
	Face3	4,5,-65,-98,49,4,6,7
	Face3	4,11,76,38,-95,6,2,7
	Face3	4,12,0,127,0,6,4,2
	Face4	0,30,0,106,70,3,2,4,5
	FendQ
MYDEMO_R_EBSP
	EndShape

	endc

;--Shape file ----- C:\MYDEMO_B.TXT ----
	ifne	DO_HDR

MYDEMO_B
	ShapeHdr	MYDEMO_B_P,0,MYDEMO_B_F,0,0,0,0,0,playerB_col,35,12,60,60,id_0_c,0,0,0,0,<MYDEMO_B>
mydemoLG_b
	ShapeHdr	MYDEMO_B_P,0,MYDEMO_B_F,0,0,0,0,4,playerB_col,35,12,60,60,id_0_c,0,0,0,0,<MYDEMO_B>
	elseif
MYDEMO_B_P
	Pointsb	23
	pb	15,-3,3	;0
	pb	15,12,20	;1
	pb	10,4,0	;2
	pb	13,6,3	;3
	pb	20,4,0	;4
	pb	18,6,3	;5
	pb	35,4,-20	;6
	pb	20,9,-10	;7
	pb	15,3,-1	;8
	pb	20,-11,-20	;9
	pb	-10,4,0	;10
	pb	-15,-3,3	;11
	pb	-20,-11,-20	;12
	pb	-18,6,3	;13
	pb	-20,4,0	;14
	pb	-13,6,3	;15
	pb	-35,4,-20	;16
	pb	-20,9,-10	;17
	pb	-15,12,20	;18
	pb	-15,3,-1	;19
	pb	0,10,18	;20
	pb	0,2,60	;21
	pb	-2,-2,15	;22
	PointsXb	1
	pb	-5,3,-1	;23
	Pointsb	7
	pb	0,-1,-6	;25
	pb	0,-2,-10	;26
	pb	2,-2,15	;27
	pb	2,-7,-3	;28
	pb	-12,5,0	;29
	pb	-2,-7,-3	;30
	pb	12,5,0	;31

	EndPoints
MYDEMO_B_F
	Vizis	44
	Viz	21,22,27,0,127,11	;0
	Viz	17,16,14,65,-98,49	;1
	Viz	4,6,7,-65,-98,49	;2
	Viz	21,20,10,86,-92,17	;3
	Viz	2,20,21,-86,-92,17	;4
	Viz	27,2,21,-89,89,12	;5
	Viz	21,10,22,89,89,12	;6
	Viz	17,10,16,-76,38,-95	;7
	Viz	6,2,7,76,38,-95	;8
	Viz	10,14,16,0,127,0	;9
	Viz	6,4,2,0,127,0	;10
	Viz	2,21,31,57,-113,-6	;11
	Viz	31,21,2,-57,113,6	;12
	Viz	29,21,10,-57,-113,-6	;13
	Viz	10,21,29,57,113,6	;14
	Viz	17,14,10,0,-114,57	;15
	Viz	2,4,7,0,-114,57	;16
	Viz	12,18,19,93,-79,-34	;17
	Viz	8,1,9,-93,-79,-34	;18
	Viz	11,18,12,112,45,40	;19
	Viz	9,1,0,-112,45,40	;20
	Viz	19,10,12,6,-103,-74	;21
	Viz	9,2,8,-6,-103,-74	;22
	Viz	10,11,12,-104,73,3	;23
	Viz	9,0,2,104,73,3	;24
	Viz	15,10,14,0,-106,-70	;25
	Viz	13,14,10,0,106,70	;26
	Viz	5,4,2,0,-106,-70	;27
	Viz	3,2,4,0,106,70	;28
	Viz	2,1,8,-13,-116,-50	;29
	Viz	19,18,10,13,-116,-50	;30
	Viz	10,18,11,-104,54,48	;31
	Viz	0,1,2,104,54,48	;32
	Viz	20,2,10,0,-120,-40	;33
	Viz	28,30,26,0,103,-74	;34
	Viz	28,27,22,0,122,34	;35
	Viz	10,30,22,98,77,22	;36
	Viz	2,27,28,-98,77,22	;37
	Viz	10,26,30,96,52,-65	;38
	Viz	28,26,2,-96,52,-65	;39
	Viz	26,25,24,60,-109,-27	;40
	Viz	10,23,25,-5,-102,-76	;41
	Viz	23,10,2,0,-90,-90	;42
	Viz	23,24,25,0,-99,-79	;43
	BSPInit	MYDEMO_B_EBSP
	BSP	6,MYDEMO_B_f1,.bsp2
	BSP	5,MYDEMO_B_f3,.bsp4
	BSPE	MYDEMO_B_f5
.bsp4	BSP	29,MYDEMO_B_f6,.bsp7
	BSPE	MYDEMO_B_f8
.bsp7	BSPE	MYDEMO_B_f9
.bsp2	BSP	30,MYDEMO_B_f10,.bsp11
	BSPE	MYDEMO_B_f12
.bsp11	BSPE	MYDEMO_B_f13

MYDEMO_B_f1	Faces
	Face3	16,6,89,89,12,21,10,22
	FendQ
MYDEMO_B_f3	Faces
	Face3	20,5,-89,89,12,27,2,21
	FendQ
MYDEMO_B_f5	Faces
	Face3	18,0,0,127,11,21,22,27
	Face4	32,35,0,122,34,28,27,22,30
	Face3	14,36,98,77,22,10,30,22
	Face3	18,37,-98,77,22,2,27,28
	Face4	10,40,60,-109,-27,26,25,24,2
	Face4	10,42,0,-90,-90,23,10,2,24
	Face3	12,3,86,-92,17,21,20,10
	Face3	14,4,-86,-92,17,2,20,21
	Face3	11,33,0,-120,-40,20,2,10
	Face3	14,34,0,103,-74,28,30,26
	Face3	12,38,96,52,-65,10,26,30
	Face3	16,39,-96,52,-65,28,26,2
	Face4	10,41,-5,-102,-76,10,23,25,26
	Face3	43,43,0,-99,-79,23,24,25
	FendQ
MYDEMO_B_f6	Faces
	Face3	30,29,-13,-116,-50,2,1,8
	FendQ
MYDEMO_B_f8	Faces
	Face3	12,11,57,-113,-6,2,21,31
	Face3	18,12,-57,113,6,31,21,2
	Face3	34,20,-112,45,40,9,1,0
	Face3	30,24,104,73,3,9,0,2
	Face3	32,32,104,54,48,0,1,2
	Face3	32,18,-93,-79,-34,8,1,9
	Face3	28,22,-6,-103,-74,9,2,8
	FendQ
MYDEMO_B_f9	Faces
	Face3	4,16,0,-114,57,2,4,7
	Face4	0,27,0,-106,-70,5,4,2,3
	Face3	4,2,-65,-98,49,4,6,7
	Face3	4,8,76,38,-95,6,2,7
	Face3	4,10,0,127,0,6,4,2
	Face4	0,28,0,106,70,3,2,4,5
	FendQ
MYDEMO_B_f10	Faces
	Face3	32,30,13,-116,-50,19,18,10
	FendQ
MYDEMO_B_f12	Faces
	Face3	11,13,-57,-113,-6,29,21,10
	Face3	18,14,57,113,6,10,21,29
	Face3	32,19,112,45,40,11,18,12
	Face3	28,23,-104,73,3,10,11,12
	Face3	30,31,-104,54,48,10,18,11
	Face3	34,17,93,-79,-34,12,18,19
	Face3	30,21,6,-103,-74,19,10,12
	FendQ
MYDEMO_B_f13	Faces
	Face3	4,15,0,-114,57,17,14,10
	Face4	0,25,0,-106,-70,15,10,14,13
	Face3	4,1,65,-98,49,17,16,14
	Face3	4,7,-76,38,-95,17,10,16
	Face3	4,9,0,127,0,10,14,16
	Face4	0,26,0,106,70,13,14,10,15
	FendQ
MYDEMO_B_EBSP
	EndShape

	endc


	start_shapes
	
;--Shape file ----- C:\MYDEMO~1.3DG ----
	ifne	DO_HDR

wiremydemo_4
	ShapeHdr	wiremydemo_4_P,0,wiremydemo_4_F,0,0,0,0,0,playerB_col,35,14,60,60,id_0_c,0,0,0,0,<wiremydemo_4>
	elseif
wiremydemo_4_P
	Pointsb	27
	pb	15,-3,3	;0
	pb	15,12,20	;1
	pb	10,4,0	;2
	pb	13,6,3	;3
	pb	20,4,0	;4
	pb	18,6,3	;5
	pb	35,14,-40	;6
	pb	20,9,-10	;7
	pb	27,9,-20	;8
	pb	30,9,-20	;9
	pb	15,3,-1	;10
	pb	20,-11,-20	;11
	pb	-10,4,0	;12
	pb	-15,-3,3	;13
	pb	-20,-11,-20	;14
	pb	-18,6,3	;15
	pb	-20,4,0	;16
	pb	-13,6,3	;17
	pb	-35,14,-40	;18
	pb	-20,9,-10	;19
	pb	-30,9,-20	;20
	pb	-27,9,-20	;21
	pb	-15,12,20	;22
	pb	-15,3,-1	;23
	pb	0,10,18	;24
	pb	0,2,60	;25
	pb	-2,-2,15	;26
	PointsXb	1
	pb	-5,3,-1	;27
	Pointsb	7
	pb	0,-1,-6	;29
	pb	0,-2,-10	;30
	pb	2,-2,15	;31
	pb	2,-7,-3	;32
	pb	-12,5,0	;33
	pb	-2,-7,-3	;34
	pb	12,5,0	;35

	EndPoints
wiremydemo_4_F
	Vizis	48
	Viz	21,20,18,0,123,-31	;0
	Viz	18,20,21,0,-123,31	;1
	Viz	6,9,8,0,123,-31	;2
	Viz	8,9,6,0,-123,31	;3
	Viz	19,18,16,65,-98,49	;4
	Viz	4,6,7,-65,-98,49	;5
	Viz	25,26,31,0,127,11	;6
	Viz	19,12,18,-70,-105,-17	;7
	Viz	6,2,7,70,-105,-17	;8
	Viz	25,24,12,86,-92,17	;9
	Viz	2,24,25,-86,-92,17	;10
	Viz	12,16,18,0,123,-31	;11
	Viz	6,4,2,0,123,-31	;12
	Viz	31,2,25,-89,89,12	;13
	Viz	25,12,26,89,89,12	;14
	Viz	2,25,35,57,-113,-6	;15
	Viz	35,25,2,-57,113,6	;16
	Viz	33,25,12,-57,-113,-6	;17
	Viz	12,25,33,57,113,6	;18
	Viz	19,16,12,0,-114,57	;19
	Viz	2,4,7,0,-114,57	;20
	Viz	14,22,23,93,-79,-34	;21
	Viz	10,1,11,-93,-79,-34	;22
	Viz	13,22,14,112,45,40	;23
	Viz	11,1,0,-112,45,40	;24
	Viz	23,12,14,6,-103,-74	;25
	Viz	11,2,10,-6,-103,-74	;26
	Viz	12,13,14,-104,73,3	;27
	Viz	11,0,2,104,73,3	;28
	Viz	17,12,16,0,-106,-70	;29
	Viz	15,16,12,0,106,70	;30
	Viz	5,4,2,0,-106,-70	;31
	Viz	3,2,4,0,106,70	;32
	Viz	2,1,10,-13,-116,-50	;33
	Viz	23,22,12,13,-116,-50	;34
	Viz	12,22,13,-104,54,48	;35
	Viz	0,1,2,104,54,48	;36
	Viz	24,2,12,0,-120,-40	;37
	Viz	32,34,30,0,103,-74	;38
	Viz	32,31,26,0,122,34	;39
	Viz	12,34,26,98,77,22	;40
	Viz	2,31,32,-98,77,22	;41
	Viz	12,30,34,96,52,-65	;42
	Viz	32,30,2,-96,52,-65	;43
	Viz	30,29,28,60,-109,-27	;44
	Viz	12,27,29,-5,-102,-76	;45
	Viz	27,12,2,0,-90,-90	;46
	Viz	27,28,29,0,-99,-79	;47
	BSPInit	wiremydemo_4_EBSP
	BSP	13,wiremydemo_4_f1,.bsp2
	BSP	14,wiremydemo_4_f3,.bsp4
	BSPE	wiremydemo_4_f5
.bsp4	BSP	34,wiremydemo_4_f6,.bsp7
	BSPE	wiremydemo_4_f8
.bsp7	BSP	19,wiremydemo_4_f9,.bsp10
	BSPE	wiremydemo_4_f11
.bsp10	BSPE	wiremydemo_4_f12
.bsp2	BSP	33,wiremydemo_4_f13,.bsp14
	BSPE	wiremydemo_4_f15
.bsp14	BSP	20,wiremydemo_4_f16,.bsp17
	BSPE	wiremydemo_4_f18
.bsp17	BSPE	wiremydemo_4_f19

wiremydemo_4_f1	Faces
	aface3	20,13,-89,89,12,31,2,25
	FendQ
wiremydemo_4_f3	Faces
	aface3	16,14,89,89,12,25,12,26
	FendQ
wiremydemo_4_f5	Faces
	aface3	18,6,0,127,11,25,26,31
	aface4	32,39,0,122,34,32,31,26,34
	aface3	14,40,98,77,22,12,34,26
	aface3	18,41,-98,77,22,2,31,32
	aface4	10,44,60,-109,-27,30,29,28,2
	aface4	10,46,0,-90,-90,27,12,2,28
	aface3	12,9,86,-92,17,25,24,12
	aface3	14,10,-86,-92,17,2,24,25
	aface3	11,37,0,-120,-40,24,2,12
	aface3	14,38,0,103,-74,32,34,30
	aface3	12,42,96,52,-65,12,30,34
	aface3	16,43,-96,52,-65,32,30,2
	aface4	10,45,-5,-102,-76,12,27,29,30
	aface3	43,47,0,-99,-79,27,28,29
	FendQ
wiremydemo_4_f6	Faces
	aface3	32,34,13,-116,-50,23,22,12
	FendQ
wiremydemo_4_f8	Faces
	aface3	11,17,-57,-113,-6,33,25,12
	aface3	18,18,57,113,6,12,25,33
	aface3	32,23,112,45,40,13,22,14
	aface3	28,27,-104,73,3,12,13,14
	aface3	30,35,-104,54,48,12,22,13
	aface3	34,21,93,-79,-34,14,22,23
	aface3	30,25,6,-103,-74,23,12,14
	FendQ
wiremydemo_4_f9	Faces
	aface3	44,19,0,-114,57,19,16,12
	FendQ
wiremydemo_4_f11	Faces
	aface3	12,1,0,-123,31,18,20,21
	aface3	18,0,0,123,-31,21,20,18
	aface3	18,11,0,123,-31,12,16,18
	aface3	12,4,65,-98,49,19,18,16
	aface3	14,7,-70,-105,-17,19,12,18
	FendQ
wiremydemo_4_f12	Faces
	aface4	0,29,0,-106,-70,17,12,16,15
	aface4	0,30,0,106,70,15,16,12,17
	FendQ
wiremydemo_4_f13	Faces
	aface3	30,33,-13,-116,-50,2,1,10
	FendQ
wiremydemo_4_f15	Faces
	aface3	12,15,57,-113,-6,2,25,35
	aface3	18,16,-57,113,6,35,25,2
	aface3	34,24,-112,45,40,11,1,0
	aface3	30,28,104,73,3,11,0,2
	aface3	32,36,104,54,48,0,1,2
	aface3	32,22,-93,-79,-34,10,1,11
	aface3	28,26,-6,-103,-74,11,2,10
	FendQ
wiremydemo_4_f16	Faces
	aface3	44,20,0,-114,57,2,4,7
	FendQ
wiremydemo_4_f18	Faces
	aface3	14,3,0,-123,31,8,9,6
	aface3	18,2,0,123,-31,6,9,8
	aface3	18,12,0,123,-31,6,4,2
	aface3	14,5,-65,-98,49,4,6,7
	aface3	12,8,70,-105,-17,6,2,7
	FendQ
wiremydemo_4_f19	Faces
	aface4	0,31,0,-106,-70,5,4,2,3
	aface4	0,32,0,106,70,3,2,4,5
	FendQ
wiremydemo_4_EBSP
	EndShape

	endc


;--Shape file ----- C:\wireMYDEMO_L.TXT ----
	ifne	DO_HDR

wireMYDEMO_L
	ShapeHdr	wireMYDEMO_L_P,0,wireMYDEMO_L_F,0,0,0,0,0,playerB_col,35,14,60,60,id_0_c,0,0,0,0,<wireMYDEMO_L>
	elseif
wireMYDEMO_L_P
	Pointsb	5
	pb	35,14,-40	;0
	pb	30,9,-20	;1
	pb	27,9,-20	;2
	pb	-20,9,-10	;3
	pb	-35,4,-20	;4
	PointsXb	1
	pb	-20,4,0	;5
	Pointsb	2
	pb	20,9,-10	;7
	pb	0,2,60	;8
	PointsXb	2
	pb	-2,-2,15	;9
	pb	-10,4,0	;11
	Pointsb	1
	pb	0,10,18	;13
	PointsXb	1
	pb	12,5,0	;14
	Pointsb	2
	pb	-20,-11,-20	;16
	pb	-15,12,20	;17
	PointsXb	1
	pb	-15,3,-1	;18
	Pointsb	2
	pb	15,12,20	;20
	pb	20,-11,-20	;21
	PointsXb	1
	pb	-15,-3,3	;22
	Pointsb	1
	pb	-13,6,3	;24
	PointsXb	1
	pb	-18,6,3	;25
	Pointsb	1
	pb	13,6,3	;27
	PointsXb	1
	pb	2,-7,-3	;28
	Pointsb	2
	pb	0,-2,-10	;30
	pb	0,-1,-6	;31
	PointsXb	1
	pb	5,3,-1	;32

	EndPoints
wireMYDEMO_L_F
	Vizis	46
	Viz	2,1,0,0,-123,31	;0
	Viz	0,1,2,0,123,-31	;1
	Viz	6,0,7,-65,-98,49	;2
	Viz	8,9,10,0,127,11	;3
	Viz	0,12,7,70,-105,-17	;4
	Viz	3,4,5,65,-98,49	;5
	Viz	12,13,8,-86,-92,17	;6
	Viz	8,13,11,86,-92,17	;7
	Viz	0,6,12,0,123,-31	;8
	Viz	8,11,9,89,89,12	;9
	Viz	10,12,8,-89,89,12	;10
	Viz	3,11,4,-76,38,-95	;11
	Viz	11,5,4,0,127,0	;12
	Viz	11,8,15,57,113,6	;13
	Viz	15,8,11,-57,-113,-6	;14
	Viz	14,8,12,-57,113,6	;15
	Viz	12,8,14,57,-113,-6	;16
	Viz	12,6,7,0,-114,57	;17
	Viz	3,5,11,0,-114,57	;18
	Viz	19,20,21,-93,-79,-34	;19
	Viz	16,17,18,93,-79,-34	;20
	Viz	21,20,23,-112,45,40	;21
	Viz	22,17,16,112,45,40	;22
	Viz	21,12,19,-6,-103,-74	;23
	Viz	18,11,16,6,-103,-74	;24
	Viz	21,23,12,104,73,3	;25
	Viz	11,22,16,-104,73,3	;26
	Viz	27,12,6,0,106,70	;27
	Viz	26,6,12,0,-106,-70	;28
	Viz	25,5,11,0,106,70	;29
	Viz	24,11,5,0,-106,-70	;30
	Viz	18,17,11,13,-116,-50	;31
	Viz	12,20,19,-13,-116,-50	;32
	Viz	23,20,12,104,54,48	;33
	Viz	11,17,22,-104,54,48	;34
	Viz	13,12,11,0,-120,-40	;35
	Viz	28,29,30,0,103,-74	;36
	Viz	28,10,9,0,122,34	;37
	Viz	12,10,28,-98,77,22	;38
	Viz	11,29,9,98,77,22	;39
	Viz	28,30,12,-96,52,-65	;40
	Viz	11,30,29,96,52,-65	;41
	Viz	11,33,31,-5,-102,-76	;42
	Viz	30,31,32,60,-109,-27	;43
	Viz	33,11,12,0,-90,-90	;44
	Viz	33,32,31,0,-99,-79	;45
	BSPInit	wireMYDEMO_L_EBSP
	BSP	9,wireMYDEMO_L_f1,.bsp2
	BSP	10,wireMYDEMO_L_f3,.bsp4
	BSPE	wireMYDEMO_L_f5
.bsp4	BSP	32,wireMYDEMO_L_f6,.bsp7
	BSPE	wireMYDEMO_L_f8
.bsp7	BSP	17,wireMYDEMO_L_f9,.bsp10
	BSPE	wireMYDEMO_L_f11
.bsp10	BSPE	wireMYDEMO_L_f12
.bsp2	BSP	31,wireMYDEMO_L_f13,.bsp14
	BSPE	wireMYDEMO_L_f15
.bsp14	BSPE	wireMYDEMO_L_f16

wireMYDEMO_L_f1	Faces
	aface3	16,9,89,89,12,8,11,9
	FendQ
wireMYDEMO_L_f3	Faces
	aface3	20,10,-89,89,12,10,12,8
	FendQ
wireMYDEMO_L_f5	Faces
	aface3	18,3,0,127,11,8,9,10
	aface4	32,37,0,122,34,28,10,9,29
	aface3	18,38,-98,77,22,12,10,28
	aface3	14,39,98,77,22,11,29,9
	aface4	10,43,60,-109,-27,30,31,32,12
	aface4	10,44,0,-90,-90,33,11,12,32
	aface3	14,6,-86,-92,17,12,13,8
	aface3	12,7,86,-92,17,8,13,11
	aface3	11,35,0,-120,-40,13,12,11
	aface3	14,36,0,103,-74,28,29,30
	aface3	16,40,-96,52,-65,28,30,12
	aface3	12,41,96,52,-65,11,30,29
	aface4	10,42,-5,-102,-76,11,33,31,30
	aface3	43,45,0,-99,-79,33,32,31
	FendQ
wireMYDEMO_L_f6	Faces
	aface3	30,32,-13,-116,-50,12,20,19
	FendQ
wireMYDEMO_L_f8	Faces
	aface3	18,15,-57,113,6,14,8,12
	aface3	12,16,57,-113,-6,12,8,14
	aface3	34,21,-112,45,40,21,20,23
	aface3	30,25,104,73,3,21,23,12
	aface3	32,33,104,54,48,23,20,12
	aface3	32,19,-93,-79,-34,19,20,21
	aface3	28,23,-6,-103,-74,21,12,19
	FendQ
wireMYDEMO_L_f9	Faces
	aface3	44,17,0,-114,57,12,6,7
	FendQ
wireMYDEMO_L_f11	Faces
	aface3	14,0,0,-123,31,2,1,0
	aface3	18,1,0,123,-31,0,1,2
	aface3	18,8,0,123,-31,0,6,12
	aface3	14,2,-65,-98,49,6,0,7
	aface3	12,4,70,-105,-17,0,12,7
	FendQ
wireMYDEMO_L_f12	Faces
	aface4	0,27,0,106,70,27,12,6,26
	aface4	0,28,0,-106,-70,26,6,12,27
	FendQ
wireMYDEMO_L_f13	Faces
	aface3	32,31,13,-116,-50,18,17,11
	FendQ
wireMYDEMO_L_f15	Faces
	aface3	18,13,57,113,6,11,8,15
	aface3	11,14,-57,-113,-6,15,8,11
	aface3	32,22,112,45,40,22,17,16
	aface3	28,26,-104,73,3,11,22,16
	aface3	30,34,-104,54,48,11,17,22
	aface3	34,20,93,-79,-34,16,17,18
	aface3	30,24,6,-103,-74,18,11,16
	FendQ
wireMYDEMO_L_f16	Faces
	aface3	4,18,0,-114,57,3,5,11
	aface4	0,30,0,-106,-70,24,11,5,25
	aface3	4,5,65,-98,49,3,4,5
	aface3	4,11,-76,38,-95,3,11,4
	aface3	4,12,0,127,0,11,5,4
	aface4	0,29,0,106,70,25,5,11,24
	FendQ
wireMYDEMO_L_EBSP
	EndShape

	endc


;--Shape file ----- C:\wireMYDEMO_R.TXT ----
	ifne	DO_HDR

wireMYDEMO_R
	ShapeHdr	wireMYDEMO_R_P,0,wireMYDEMO_R_F,0,0,0,0,0,playerB_col,35,14,60,60,id_0_c,0,0,0,0,<wireMYDEMO_R>
	elseif
wireMYDEMO_R_P
	Pointsb	25
	pb	15,-3,3	;0
	pb	15,12,20	;1
	pb	10,4,0	;2
	pb	13,6,3	;3
	pb	20,4,0	;4
	pb	18,6,3	;5
	pb	35,4,-20	;6
	pb	20,9,-10	;7
	pb	15,3,-1	;8
	pb	20,-11,-20	;9
	pb	-10,4,0	;10
	pb	-15,-3,3	;11
	pb	-20,-11,-20	;12
	pb	-18,6,3	;13
	pb	-20,4,0	;14
	pb	-13,6,3	;15
	pb	-35,14,-40	;16
	pb	-20,9,-10	;17
	pb	-30,9,-20	;18
	pb	-27,9,-20	;19
	pb	-15,12,20	;20
	pb	-15,3,-1	;21
	pb	0,10,18	;22
	pb	0,2,60	;23
	pb	-2,-2,15	;24
	PointsXb	1
	pb	-5,3,-1	;25
	Pointsb	7
	pb	0,-1,-6	;27
	pb	0,-2,-10	;28
	pb	2,-2,15	;29
	pb	2,-7,-3	;30
	pb	-12,5,0	;31
	pb	-2,-7,-3	;32
	pb	12,5,0	;33

	EndPoints
wireMYDEMO_R_F
	Vizis	46
	Viz	19,18,16,0,123,-31	;0
	Viz	16,18,19,0,-123,31	;1
	Viz	17,16,14,65,-98,49	;2
	Viz	23,24,29,0,127,11	;3
	Viz	17,10,16,-70,-105,-17	;4
	Viz	4,6,7,-65,-98,49	;5
	Viz	23,22,10,86,-92,17	;6
	Viz	2,22,23,-86,-92,17	;7
	Viz	10,14,16,0,123,-31	;8
	Viz	29,2,23,-89,89,12	;9
	Viz	23,10,24,89,89,12	;10
	Viz	6,2,7,76,38,-95	;11
	Viz	6,4,2,0,127,0	;12
	Viz	2,23,33,57,-113,-6	;13
	Viz	33,23,2,-57,113,6	;14
	Viz	31,23,10,-57,-113,-6	;15
	Viz	10,23,31,57,113,6	;16
	Viz	17,14,10,0,-114,57	;17
	Viz	2,4,7,0,-114,57	;18
	Viz	12,20,21,93,-79,-34	;19
	Viz	8,1,9,-93,-79,-34	;20
	Viz	11,20,12,112,45,40	;21
	Viz	9,1,0,-112,45,40	;22
	Viz	21,10,12,6,-103,-74	;23
	Viz	9,2,8,-6,-103,-74	;24
	Viz	10,11,12,-104,73,3	;25
	Viz	9,0,2,104,73,3	;26
	Viz	15,10,14,0,-106,-70	;27
	Viz	13,14,10,0,106,70	;28
	Viz	5,4,2,0,-106,-70	;29
	Viz	3,2,4,0,106,70	;30
	Viz	2,1,8,-13,-116,-50	;31
	Viz	21,20,10,13,-116,-50	;32
	Viz	10,20,11,-104,54,48	;33
	Viz	0,1,2,104,54,48	;34
	Viz	22,2,10,0,-120,-40	;35
	Viz	30,32,28,0,103,-74	;36
	Viz	30,29,24,0,122,34	;37
	Viz	10,32,24,98,77,22	;38
	Viz	2,29,30,-98,77,22	;39
	Viz	10,28,32,96,52,-65	;40
	Viz	30,28,2,-96,52,-65	;41
	Viz	28,27,26,60,-109,-27	;42
	Viz	10,25,27,-5,-102,-76	;43
	Viz	25,10,2,0,-90,-90	;44
	Viz	25,26,27,0,-99,-79	;45
	BSPInit	wireMYDEMO_R_EBSP
	BSP	9,wireMYDEMO_R_f1,.bsp2
	BSP	10,wireMYDEMO_R_f3,.bsp4
	BSPE	wireMYDEMO_R_f5
.bsp4	BSP	32,wireMYDEMO_R_f6,.bsp7
	BSPE	wireMYDEMO_R_f8
.bsp7	BSP	17,wireMYDEMO_R_f9,.bsp10
	BSPE	wireMYDEMO_R_f11
.bsp10	BSPE	wireMYDEMO_R_f12
.bsp2	BSP	31,wireMYDEMO_R_f13,.bsp14
	BSPE	wireMYDEMO_R_f15
.bsp14	BSPE	wireMYDEMO_R_f16

wireMYDEMO_R_f1	Faces
	aface3	20,9,-89,89,12,29,2,23
	FendQ
wireMYDEMO_R_f3	Faces
	aface3	16,10,89,89,12,23,10,24
	FendQ
wireMYDEMO_R_f5	Faces
	aface3	18,3,0,127,11,23,24,29
	aface4	32,37,0,122,34,30,29,24,32
	aface3	14,38,98,77,22,10,32,24
	aface3	18,39,-98,77,22,2,29,30
	aface4	10,42,60,-109,-27,28,27,26,2
	aface4	10,44,0,-90,-90,25,10,2,26
	aface3	12,6,86,-92,17,23,22,10
	aface3	14,7,-86,-92,17,2,22,23
	aface3	11,35,0,-120,-40,22,2,10
	aface3	14,36,0,103,-74,30,32,28
	aface3	12,40,96,52,-65,10,28,32
	aface3	16,41,-96,52,-65,30,28,2
	aface4	10,43,-5,-102,-76,10,25,27,28
	aface3	43,45,0,-99,-79,25,26,27
	FendQ
wireMYDEMO_R_f6	Faces
	aface3	32,32,13,-116,-50,21,20,10
	FendQ
wireMYDEMO_R_f8	Faces
	aface3	11,15,-57,-113,-6,31,23,10
	aface3	18,16,57,113,6,10,23,31
	aface3	32,21,112,45,40,11,20,12
	aface3	28,25,-104,73,3,10,11,12
	aface3	30,33,-104,54,48,10,20,11
	aface3	34,19,93,-79,-34,12,20,21
	aface3	30,23,6,-103,-74,21,10,12
	FendQ
wireMYDEMO_R_f9	Faces
	aface3	44,17,0,-114,57,17,14,10
	FendQ
wireMYDEMO_R_f11	Faces
	aface3	12,1,0,-123,31,16,18,19
	aface3	18,0,0,123,-31,19,18,16
	aface3	18,8,0,123,-31,10,14,16
	aface3	12,2,65,-98,49,17,16,14
	aface3	14,4,-70,-105,-17,17,10,16
	FendQ
wireMYDEMO_R_f12	Faces
	aface4	0,27,0,-106,-70,15,10,14,13
	aface4	0,28,0,106,70,13,14,10,15
	FendQ
wireMYDEMO_R_f13	Faces
	aface3	30,31,-13,-116,-50,2,1,8
	FendQ
wireMYDEMO_R_f15	Faces
	aface3	12,13,57,-113,-6,2,23,33
	aface3	18,14,-57,113,6,33,23,2
	aface3	34,22,-112,45,40,9,1,0
	aface3	30,26,104,73,3,9,0,2
	aface3	32,34,104,54,48,0,1,2
	aface3	32,20,-93,-79,-34,8,1,9
	aface3	28,24,-6,-103,-74,9,2,8
	FendQ
wireMYDEMO_R_f16	Faces
	aface3	4,18,0,-114,57,2,4,7
	aface4	0,29,0,-106,-70,5,4,2,3
	aface3	4,5,-65,-98,49,4,6,7
	aface3	4,11,76,38,-95,6,2,7
	aface3	4,12,0,127,0,6,4,2
	aface4	0,30,0,106,70,3,2,4,5
	FendQ
wireMYDEMO_R_EBSP
	EndShape

	endc


;--Shape file ----- C:\wiremydemo_b.TXT ----
	ifne	DO_HDR

wiremydemo_b
	ShapeHdr	wiremydemo_b_P,0,wiremydemo_b_F,0,0,0,0,0,playerB_col,35,12,60,60,id_0_c,0,0,0,0,<wiremydemo_b>
	elseif
wiremydemo_b_P
	Pointsb	23
	pb	15,-3,3	;0
	pb	15,12,20	;1
	pb	10,4,0	;2
	pb	13,6,3	;3
	pb	20,4,0	;4
	pb	18,6,3	;5
	pb	35,4,-20	;6
	pb	20,9,-10	;7
	pb	15,3,-1	;8
	pb	20,-11,-20	;9
	pb	-10,4,0	;10
	pb	-15,-3,3	;11
	pb	-20,-11,-20	;12
	pb	-18,6,3	;13
	pb	-20,4,0	;14
	pb	-13,6,3	;15
	pb	-35,4,-20	;16
	pb	-20,9,-10	;17
	pb	-15,12,20	;18
	pb	-15,3,-1	;19
	pb	0,10,18	;20
	pb	0,2,60	;21
	pb	-2,-2,15	;22
	PointsXb	1
	pb	-5,3,-1	;23
	Pointsb	7
	pb	0,-1,-6	;25
	pb	0,-2,-10	;26
	pb	2,-2,15	;27
	pb	2,-7,-3	;28
	pb	-12,5,0	;29
	pb	-2,-7,-3	;30
	pb	12,5,0	;31

	EndPoints
wiremydemo_b_F
	Vizis	44
	Viz	21,22,27,0,127,11	;0
	Viz	17,16,14,65,-98,49	;1
	Viz	4,6,7,-65,-98,49	;2
	Viz	21,20,10,86,-92,17	;3
	Viz	2,20,21,-86,-92,17	;4
	Viz	27,2,21,-89,89,12	;5
	Viz	21,10,22,89,89,12	;6
	Viz	17,10,16,-76,38,-95	;7
	Viz	6,2,7,76,38,-95	;8
	Viz	10,14,16,0,127,0	;9
	Viz	6,4,2,0,127,0	;10
	Viz	2,21,31,57,-113,-6	;11
	Viz	31,21,2,-57,113,6	;12
	Viz	29,21,10,-57,-113,-6	;13
	Viz	10,21,29,57,113,6	;14
	Viz	17,14,10,0,-114,57	;15
	Viz	2,4,7,0,-114,57	;16
	Viz	12,18,19,93,-79,-34	;17
	Viz	8,1,9,-93,-79,-34	;18
	Viz	11,18,12,112,45,40	;19
	Viz	9,1,0,-112,45,40	;20
	Viz	19,10,12,6,-103,-74	;21
	Viz	9,2,8,-6,-103,-74	;22
	Viz	10,11,12,-104,73,3	;23
	Viz	9,0,2,104,73,3	;24
	Viz	15,10,14,0,-106,-70	;25
	Viz	13,14,10,0,106,70	;26
	Viz	5,4,2,0,-106,-70	;27
	Viz	3,2,4,0,106,70	;28
	Viz	2,1,8,-13,-116,-50	;29
	Viz	19,18,10,13,-116,-50	;30
	Viz	10,18,11,-104,54,48	;31
	Viz	0,1,2,104,54,48	;32
	Viz	20,2,10,0,-120,-40	;33
	Viz	28,30,26,0,103,-74	;34
	Viz	28,27,22,0,122,34	;35
	Viz	10,30,22,98,77,22	;36
	Viz	2,27,28,-98,77,22	;37
	Viz	10,26,30,96,52,-65	;38
	Viz	28,26,2,-96,52,-65	;39
	Viz	26,25,24,60,-109,-27	;40
	Viz	10,23,25,-5,-102,-76	;41
	Viz	23,10,2,0,-90,-90	;42
	Viz	23,24,25,0,-99,-79	;43
	BSPInit	wiremydemo_b_EBSP
	BSP	6,wiremydemo_b_f1,.bsp2
	BSP	5,wiremydemo_b_f3,.bsp4
	BSPE	wiremydemo_b_f5
.bsp4	BSP	29,wiremydemo_b_f6,.bsp7
	BSPE	wiremydemo_b_f8
.bsp7	BSPE	wiremydemo_b_f9
.bsp2	BSP	30,wiremydemo_b_f10,.bsp11
	BSPE	wiremydemo_b_f12
.bsp11	BSPE	wiremydemo_b_f13

wiremydemo_b_f1	Faces
	aface3	16,6,89,89,12,21,10,22
	FendQ
wiremydemo_b_f3	Faces
	aface3	20,5,-89,89,12,27,2,21
	FendQ
wiremydemo_b_f5	Faces
	aface3	18,0,0,127,11,21,22,27
	aface4	32,35,0,122,34,28,27,22,30
	aface3	14,36,98,77,22,10,30,22
	aface3	18,37,-98,77,22,2,27,28
	aface4	10,40,60,-109,-27,26,25,24,2
	aface4	10,42,0,-90,-90,23,10,2,24
	aface3	12,3,86,-92,17,21,20,10
	aface3	14,4,-86,-92,17,2,20,21
	aface3	11,33,0,-120,-40,20,2,10
	aface3	14,34,0,103,-74,28,30,26
	aface3	12,38,96,52,-65,10,26,30
	aface3	16,39,-96,52,-65,28,26,2
	aface4	10,41,-5,-102,-76,10,23,25,26
	aface3	43,43,0,-99,-79,23,24,25
	FendQ
wiremydemo_b_f6	Faces
	aface3	30,29,-13,-116,-50,2,1,8
	FendQ
wiremydemo_b_f8	Faces
	aface3	12,11,57,-113,-6,2,21,31
	aface3	18,12,-57,113,6,31,21,2
	aface3	34,20,-112,45,40,9,1,0
	aface3	30,24,104,73,3,9,0,2
	aface3	32,32,104,54,48,0,1,2
	aface3	32,18,-93,-79,-34,8,1,9
	aface3	28,22,-6,-103,-74,9,2,8
	FendQ
wiremydemo_b_f9	Faces
	aface3	4,16,0,-114,57,2,4,7
	aface4	0,27,0,-106,-70,5,4,2,3
	aface3	4,2,-65,-98,49,4,6,7
	aface3	4,8,76,38,-95,6,2,7
	aface3	4,10,0,127,0,6,4,2
	aface4	0,28,0,106,70,3,2,4,5
	FendQ
wiremydemo_b_f10	Faces
	aface3	32,30,13,-116,-50,19,18,10
	FendQ
wiremydemo_b_f12	Faces
	aface3	11,13,-57,-113,-6,29,21,10
	aface3	18,14,57,113,6,10,21,29
	aface3	32,19,112,45,40,11,18,12
	aface3	28,23,-104,73,3,10,11,12
	aface3	30,31,-104,54,48,10,18,11
	aface3	34,17,93,-79,-34,12,18,19
	aface3	30,21,6,-103,-74,19,10,12
	FendQ
wiremydemo_b_f13	Faces
	aface3	4,15,0,-114,57,17,14,10
	aface4	0,25,0,-106,-70,15,10,14,13
	aface3	4,1,65,-98,49,17,16,14
	aface3	4,7,-76,38,-95,17,10,16
	aface3	4,9,0,127,0,10,14,16
	aface4	0,26,0,106,70,13,14,10,15
	FendQ
wiremydemo_b_EBSP
	EndShape

	endc

	ENDC ; hipolyarwing

;--Shape file ----- C:\SHED\NSHAPES\ITEM_3.TXT ----
	ifne	DO_HDR

ITEM_3
	ShapeHdr	ITEM_3_P,0,ITEM_3_F,0,0,0,0,0,0,20,23,18,28,id_0_c,0,0,0,0,<ITEM_3>
	elseif
ITEM_3_P
	datahdr
	Pointsb	1
	pb	0,-9,0	;0
	PointsXb	1
	pb	-10,8,-9	;1
	Pointsb	1
	pb	0,8,9	;3
	PointsXb	1
	pb	20,-9,-18	;4
	Pointsb	2
	pb	0,23,0	;6
	pb	0,-9,18	;7

	EndPoints
ITEM_3_F
	Vizis	4
	Viz	0,1,2,0,59,-112	;4
	Viz	2,1,3,0,-127,0	;5
	Viz	1,0,3,108,32,60	;6
	Viz	3,0,2,-108,32,60	;7

ITEM_3_f1	Faces
	Face3	7,0,0,59,-112,0,1,2
	Face3	7,1,0,-127,0,2,1,3
	Face3	7,2,108,32,60,1,0,3
	Face3	7,3,-108,32,60,3,0,2
	Face2	43,-1,0,123,31,5,6
	Face2	43,-1,0,-123,31,6,4
	Face2	43,-1,120,0,42,6,7
	Face2	43,-1,-120,0,42,7,5
	Face2	43,-1,0,123,-31,4,7
	Face2	43,-1,0,-123,31,4,5
	Fend
	EndShape

	endc


;--Shape file ----- C:\SHED\NSHAPES\RIP_MAN.TXT ----
	ifne	DO_HDR

RIP_MAN
	ShapeHdr	RIP_MAN_P,0,RIP_MAN_F,0,0,0,0,0,0,40,40,20,50,id_0_c,0,0,0,0,<RIP_MAN>
	elseif
RIP_MAN_P
	datahdr
	PointsXb	1
	pb	5,-20,-5	;0
	Pointsb	2
	pb	0,-20,4	;2
	pb	0,0,9	;3
	PointsXb	1
	pb	-10,0,-9	;4
	Pointsb	4
	pb	0,-25,-2	;6
	pb	0,10,-2	;7
	pb	-11,-40,1	;8
	pb	-40,-30,5	;9
	PointsXb	1
	pb	-37,-20,2	;10
	Pointsb	5
	pb	40,-30,5	;12
	pb	11,-40,1	;13
	pb	-16,30,7	;14
	pb	0,30,-20	;15
	pb	16,30,7	;16

	EndPoints
RIP_MAN_F
	Vizis	13
	Viz	6,0,2,-96,64,53	;0
	Viz	2,1,6,96,64,53	;1
	Viz	0,1,4,0,25,-125	;2
	Viz	5,3,2,-110,15,61	;3
	Viz	1,2,3,110,15,61	;4
	Viz	6,1,0,0,65,-109	;5
	Viz	4,3,7,98,-60,54	;6
	Viz	7,3,5,-98,-60,54	;7
	Viz	7,5,4,0,-73,-104	;8
	Viz	8,9,10,26,28,-121	;9
	Viz	1,10,9,-26,-28,121	;10
	Viz	0,11,12,-26,28,-121	;11
	Viz	13,12,11,26,-28,121	;12
	BSPInit	RIP_MAN_EBSP
	BSP	0,RIP_MAN_f1,.bsp2
	BSP	1,RIP_MAN_f3,.bsp4
	BSPE	RIP_MAN_f5
.bsp4	BSPE	RIP_MAN_f6
.bsp2	BSPE	RIP_MAN_f7

RIP_MAN_f1	Faces
	Face3	25,0,-96,64,53,6,0,2
	FendQ
RIP_MAN_f3	Faces
	Face3	27,1,96,64,53,2,1,6
	FendQ
RIP_MAN_f5	Faces
	Face3	25,6,98,-60,54,4,3,7
	Face3	23,7,-98,-60,54,7,3,5
	Face3	21,8,0,-73,-104,7,5,4
	Face4	14,2,0,25,-125,0,1,4,5
	Face4	16,3,-110,15,61,5,3,2,0
	Face4	20,4,110,15,61,1,2,3,4
	Face2	44,-1,0,0,0,14,7
	Face2	44,-1,0,0,0,15,7
	Face2	44,-1,0,0,0,7,16
	Face3	23,5,0,65,-109,6,1,0
	FendQ
RIP_MAN_f6	Faces
	Face4	14,9,26,28,-121,8,9,10,1
	Face4	45,10,-26,-28,121,1,10,9,8
	FendQ
RIP_MAN_f7	Faces
	Face4	14,11,-26,28,-121,0,11,12,13
	Face4	45,12,26,-28,121,13,12,11,0
	FendQ
RIP_MAN_EBSP
	EndShape

	endc

	IFNE	SPEED_MODE
	ifne	DO_HDR

boss_d_0
	ShapeHdr	boss_d_0_P,0,boss_d_0_F,0,0,0,0,1,0,44,43,48,64,id_0_c,0,0,0,0,<boss_d_0>
	elseif
boss_d_0_P
	datahdr
	Pointsb	2
	pb	0,-25,-16	;0
	pb	0,20,14	;1
	PointsXb	4
	pb	-19,-5,17	;2
	pb	-12,5,24	;4
	pb	-12,-15,24	;6
	pb	-5,-5,31	;8
	IFEQ	SPEED_MODE
	Frames	10
	jumptab	.A0A
	jumptab	.A1A
	jumptab	.A2A
	jumptab	.A3A
	jumptab	.A4A
	jumptab	.A5A
	jumptab	.A6A
	jumptab	.A7A
	jumptab	.A8A
	jumptab	.A9A
	ELSEIF
	Frames	20
	jumptab	.A0A
	jumptab	.A0_5A
	jumptab	.A1A
	jumptab	.A1_5A
	jumptab	.A2A
	jumptab	.A2_5A
	jumptab	.A3A
	jumptab	.A3_5A
	jumptab	.A4A
	jumptab	.A4_5A
	jumptab	.A5A
	jumptab	.A5_5A
	jumptab	.A6A
	jumptab	.A6_5A
	jumptab	.A7A
	jumptab	.A7_5A
	jumptab	.A8A
	jumptab	.A8_5A
	jumptab	.A9A
	jumptab	.A9_5A
	ENDC
.A0A	Pointsb	6
	pb	42,-30,23	;10
	pb	18,-24,24	;11
	pb	-15,-25,27	;12
	pb	0,12,43	;13
	pb	-30,-35,44	;14
	pb	0,13,47	;15
	PointsXb	2
	pb	-19,0,31	;16
	pb	-19,-10,31	;18
	jump	.EB0
.A0_5A	Pointsb	6
	pb	40,-32,26	;10
	pb	17,-24,24	;11
	pb	-16,-24,26	;12
	pb	0,14,42	;13
	pb	-33,-33,42	;14
	pb	0,11,48	;15
	PointsXb	2
	pb	-19,0,31	;16
	pb	-19,-10,31	;18
	jump	.EB0
.A1A	Pointsb	6
	pb	39,-35,28	;10
	pb	16,-25,24	;11
	pb	-17,-24,26	;12
	pb	0,15,42	;13
	pb	-36,-31,41	;14
	pb	0,9,48	;15
	PointsXb	2
	pb	-19,0,31	;16
	pb	-19,-10,31	;18
	jump	.EB0
.A1_5A	Pointsb	6
	pb	36,-37,30	;10
	pb	15,-26,24	;11
	pb	-18,-24,26	;12
	pb	0,16,40	;13
	pb	-38,-28,39	;14
	pb	0,7,48	;15
	PointsXb	2
	pb	-19,0,31	;16
	pb	-19,-10,31	;18
	jump	.EB0
.A2A	Pointsb	6
	pb	33,-39,32	;10
	pb	14,-26,25	;11
	pb	-19,-23,26	;12
	pb	0,18,39	;13
	pb	-41,-26,37	;14
	pb	0,5,48	;15
	PointsXb	2
	pb	-19,0,31	;16
	pb	-19,-10,31	;18
	jump	.EB0
.A2_5A	Pointsb	6
	pb	30,-40,34	;10
	pb	13,-26,26	;11
	pb	-20,-22,26	;12
	pb	0,20,38	;13
	pb	-42,-22,34	;14
	pb	0,2,48	;15
	PointsXb	2
	pb	-19,0,31	;16
	pb	-19,-10,31	;18
	jump	.EB0
.A3A	Pointsb	6
	pb	28,-42,37	;10
	pb	12,-26,26	;11
	pb	-20,-22,25	;12
	pb	0,21,37	;13
	pb	-44,-19,32	;14
	pb	0,0,48	;15
	PointsXb	2
	pb	-19,0,31	;16
	pb	-19,-10,31	;18
	jump	.EB0
.A3_5A	Pointsb	6
	pb	24,-42,39	;10
	pb	11,-26,26	;11
	pb	-20,-22,24	;12
	pb	0,20,38	;13
	pb	-44,-22,30	;14
	pb	0,2,48	;15
	PointsXb	2
	pb	-19,0,31	;16
	pb	-19,-10,31	;18
	jump	.EB0
.A4A	Pointsb	6
	pb	20,-43,41	;10
	pb	10,-25,26	;11
	pb	-19,-23,24	;12
	pb	0,18,39	;13
	pb	-44,-25,28	;14
	pb	0,5,48	;15
	PointsXb	2
	pb	-19,0,31	;16
	pb	-19,-10,31	;18
	jump	.EB0
.A4_5A	Pointsb	6
	pb	21,-42,42	;10
	pb	10,-25,26	;11
	pb	-18,-24,24	;12
	pb	0,16,40	;13
	pb	-43,-28,26	;14
	pb	0,7,48	;15
	PointsXb	2
	pb	-19,0,31	;16
	pb	-19,-10,31	;18
	jump	.EB0
.A5A	Pointsb	6
	pb	22,-40,44	;10
	pb	11,-25,27	;11
	pb	-18,-24,24	;12
	pb	0,15,42	;13
	pb	-42,-30,23	;14
	pb	0,9,48	;15
	PointsXb	2
	pb	-19,0,31	;16
	pb	-19,-10,31	;18
	jump	.EB0
.A5_5A	Pointsb	6
	pb	28,-38,42	;10
	pb	13,-25,26	;11
	pb	-17,-24,24	;12
	pb	0,14,42	;13
	pb	-40,-32,26	;14
	pb	0,11,48	;15
	PointsXb	2
	pb	-20,-1,32	;16
	pb	-20,-9,32	;18
	jump	.EB0
.A6A	Pointsb	6
	pb	33,-35,41	;10
	pb	15,-25,26	;11
	pb	-16,-25,24	;12
	pb	0,12,43	;13
	pb	-39,-35,28	;14
	pb	0,13,47	;15
	PointsXb	2
	pb	-20,-2,32	;16
	pb	-20,-8,32	;18
	jump	.EB0
.A6_5A	Pointsb	6
	pb	37,-30,39	;10
	pb	17,-24,26	;11
	pb	-15,-26,24	;12
	pb	0,12,43	;13
	pb	-36,-37,30	;14
	pb	0,13,47	;15
	PointsXb	2
	pb	-20,-3,32	;16
	pb	-20,-7,32	;18
	jump	.EB0
.A7A	Pointsb	6
	pb	41,-26,37	;10
	pb	19,-23,26	;11
	pb	-14,-26,25	;12
	pb	0,12,43	;13
	pb	-33,-39,32	;14
	pb	0,13,47	;15
	PointsXb	2
	pb	-20,-4,32	;16
	pb	-20,-6,32	;18
	jump	.EB0
.A7_5A	Pointsb	6
	pb	42,-23,34	;10
	pb	20,-22,26	;11
	pb	-13,-26,26	;12
	pb	0,12,43	;13
	pb	-30,-40,34	;14
	pb	0,13,47	;15
	PointsXb	2
	pb	-20,-3,32	;16
	pb	-20,-7,32	;18
	jump	.EB0
.A8A	Pointsb	6
	pb	44,-20,32	;10
	pb	20,-22,25	;11
	pb	-12,-26,26	;12
	pb	0,12,43	;13
	pb	-28,-42,37	;14
	pb	0,13,47	;15
	PointsXb	2
	pb	-20,-2,32	;16
	pb	-20,-8,32	;18
	jump	.EB0
.A8_5A	Pointsb	6
	pb	44,-22,30	;10
	pb	20,-22,24	;11
	pb	-12,-26,26	;12
	pb	0,12,43	;13
	pb	-28,-40,39	;14
	pb	0,13,47	;15
	PointsXb	2
	pb	-20,-3,32	;16
	pb	-20,-7,32	;18
	jump	.EB0
.A9A	Pointsb	6
	pb	44,-25,28	;10
	pb	19,-23,24	;11
	pb	-13,-25,26	;12
	pb	0,12,43	;13
	pb	-29,-38,41	;14
	pb	0,13,47	;15
	PointsXb	2
	pb	-20,-4,32	;16
	pb	-20,-6,32	;18
	jump	.EB0
.A9_5A	Pointsb	6
	pb	43,-28,26	;10
	pb	18,-24,24	;11
	pb	-14,-25,26	;12
	pb	0,12,43	;13
	pb	-30,-36,42	;14
	pb	0,13,47	;15
	PointsXb	2
	pb	-20,-2,32	;16
	pb	-20,-8,32	;18
.EB0

	EndPoints
boss_d_0_F
	Vizis	31
	Viz	7,11,10,-6,-4,127	;0
	Viz	10,11,7,6,4,-127	;1
	Viz	14,12,6,-96,4,83	;2
	Viz	6,12,14,96,-4,-83	;3
	Viz	0,1,3,-83,-53,-80	;4
	Viz	2,1,0,83,-53,-80	;5
	Viz	1,5,3,-101,-76,-7	;6
	Viz	2,4,1,101,-76,-7	;7
	Viz	3,7,0,-100,77,-11	;8
	Viz	0,6,2,100,77,-11	;9
	Viz	7,6,0,0,123,31	;10
	Viz	13,4,5,0,119,44	;11
	Viz	1,13,5,-89,-87,24	;12
	Viz	4,13,1,89,-87,24	;13
	Viz	7,9,8,0,73,104	;14
	Viz	15,5,4,0,-120,-42	;15
	Viz	15,9,5,-105,28,65	;16
	Viz	4,8,15,105,28,65	;17
	Viz	8,9,15,0,84,95	;18
	Viz	17,9,19,0,0,127	;19
	Viz	19,3,17,-127,0,0	;20
	Viz	3,5,17,-90,-84,-30	;21
	Viz	17,5,9,30,-84,90	;22
	Viz	19,7,3,-90,84,-30	;23
	Viz	9,7,19,30,84,90	;24
	Viz	18,8,16,0,0,127	;25
	Viz	16,2,18,127,0,0	;26
	Viz	16,4,2,90,-84,-30	;27
	Viz	8,4,16,-30,-84,90	;28
	Viz	2,6,18,90,84,-30	;29
	Viz	18,6,8,-30,84,90	;30
	BSPInit	boss_d_0_EBSP
	BSP	8,boss_d_0_f1,.bsp2
	BSP	9,boss_d_0_f3,.bsp4
	BSPE	boss_d_0_f5
.bsp4	BSPE	boss_d_0_f6
.bsp2	BSP	23,boss_d_0_f7,.bsp8
	BSPEND
.bsp8	BSPE	boss_d_0_f9

boss_d_0_f1	Faces
	Face3	18,8,-100,77,-11,3,7,0
	FendQ
boss_d_0_f3	Faces
	Face3	14,9,100,77,-11,0,6,2
	FendQ
boss_d_0_f5	Faces
	Face3	10,11,0,119,44,13,4,5
	Face3	10,15,0,-120,-42,15,5,4
	Face3	27,16,-105,28,65,15,9,5
	Face3	23,17,105,28,65,4,8,15
	Face3	25,18,0,84,95,8,9,15
	Face3	43,19,0,0,127,17,9,19
	Face3	16,21,-90,-84,-30,3,5,17
	Face3	14,22,30,-84,90,17,5,9
	Face3	16,24,30,84,90,9,7,19
	Face3	43,25,0,0,127,18,8,16
	Face3	12,27,90,-84,-30,16,4,2
	Face3	16,28,-30,-84,90,8,4,16
	Face3	20,30,-30,84,90,18,6,8
	Face3	30,4,-83,-53,-80,0,1,3
	Face3	28,5,83,-53,-80,2,1,0
	Face3	18,6,-101,-76,-7,1,5,3
	Face3	14,7,101,-76,-7,2,4,1
	Face3	16,10,0,123,31,7,6,0
	Face3	25,12,-89,-87,24,1,13,5
	Face3	21,13,89,-87,24,4,13,1
	Face4	18,14,0,73,104,7,9,8,6
	FendQ
boss_d_0_f6	Faces
	Face3	28,3,96,-4,-83,6,12,14
	Face3	16,29,90,84,-30,2,6,18
	Face3	43,26,127,0,0,16,2,18
	Face3	34,2,-96,4,83,14,12,6
	FendQ
boss_d_0_f7	Faces
	Face3	20,23,-90,84,-30,19,7,3
	FendQ
boss_d_0_f9	Faces
	Face3	30,0,-6,-4,127,7,11,10
	Face3	32,1,6,4,-127,10,11,7
	Face3	43,20,-127,0,0,19,3,17
	FendQ
boss_d_0_EBSP
	EndShape

	endc

	ifne	DO_HDR

boss_d_1
	ShapeHdr	boss_d_1_P,0,boss_d_1_F,0,0,0,0,2,0,40/2,74,38,75/2,id_0_c,0,0,0,0,<boss_d_1>
	elseif
boss_d_1_P
	IFEQ	SPEED_MODE
	Frames	16
	jumptab	.A0A
	jumptab	.A1A
	jumptab	.A2A
	jumptab	.A3A
	jumptab	.A4A
	jumptab	.A5A
	jumptab	.A6A
	jumptab	.A7A
	jumptab	.A8A
	jumptab	.A9A
	jumptab	.A10A
	jumptab	.A11A
	jumptab	.A12A
	jumptab	.A12A
	jumptab	.A12A
	jumptab	.A12A
	ELSEIF
	Frames	32
	jumptab	.A0A
	jumptab	.A0_5A
	jumptab	.A1A
	jumptab	.A1_5A
	jumptab	.A2A
	jumptab	.A2_5A
	jumptab	.A3A
	jumptab	.A3_5A
	jumptab	.A4A
	jumptab	.A4_5A
	jumptab	.A5A
	jumptab	.A5_5A
	jumptab	.A6A
	jumptab	.A6_5A
	jumptab	.A7A
	jumptab	.A7_5A
	jumptab	.A8A
	jumptab	.A8_5A
	jumptab	.A9A
	jumptab	.A9_5A
	jumptab	.A10A
	jumptab	.A10_5A
	jumptab	.A11A
	jumptab	.A11_5A
	jumptab	.A12A
	jumptab	.A12A
	jumptab	.A12A
	jumptab	.A12A
	jumptab	.A12A
	jumptab	.A12A
	jumptab	.A12A
	jumptab	.A12A
	ENDC
.A0A	Pointsb	14
	pb	-35,0,-29	;0
	pb	35,0,-29	;1
	pb	0,-30,-27	;2
	pb	0,-50,-27	;3
	pb	23,-10,-9	;4
	pb	-23,-10,-9	;5
	pb	0,-60,-9	;6
	pb	0,-15,0	;7
	pb	8,0,6	;8
	pb	-8,0,6	;9
	pb	18,0,10	;10
	pb	-18,0,10	;11
	pb	0,-25,18	;12
	pb	0,-45,18	;13
	PointsXb	6
	pb	18,-35,-18	;14
	pb	18,-45,-18	;16
	pb	18,-50,-9	;18
	pb	18,-25,0	;20
	pb	-18,-30,9	;22
	pb	18,-40,9	;24
	jump	.EB0
.A0_5A	Pointsb	14
	pb	-36,-12,-32	;0
	pb	30,0,-26	;1
	pb	0,-35,-27	;2
	pb	0,-55,-27	;3
	pb	21,-14,-6	;4
	pb	-24,-17,-10	;5
	pb	0,-65,-9	;6
	pb	0,-20,0	;7
	pb	7,-8,10	;8
	pb	-10,-4,2	;9
	pb	18,-8,14	;10
	pb	-20,-4,6	;11
	pb	0,-30,18	;12
	pb	0,-50,18	;13
	PointsXb	6
	pb	18,-40,-18	;14
	pb	18,-50,-18	;16
	pb	18,-55,-9	;18
	pb	18,-30,0	;20
	pb	-18,-35,9	;22
	pb	18,-45,9	;24
	jump	.EB0
.A1A	Pointsb	14
	pb	-38,-23,-35	;0
	pb	26,0,-22	;1
	pb	0,-40,-27	;2
	pb	0,-60,-27	;3
	pb	19,-18,-4	;4
	pb	-25,-24,-12	;5
	pb	0,-70,-9	;6
	pb	0,-25,0	;7
	pb	6,-15,15	;8
	pb	-12,-8,-2	;9
	pb	17,-15,18	;10
	pb	-22,-9,2	;11
	pb	0,-35,18	;12
	pb	0,-55,18	;13
	PointsXb	6
	pb	18,-45,-18	;14
	pb	18,-55,-18	;16
	pb	18,-60,-9	;18
	pb	18,-35,0	;20
	pb	-18,-40,9	;22
	pb	18,-50,9	;24
	jump	.EB0
.A1_5A	Pointsb	14
	pb	-39,-28,-36	;0
	pb	23,0,-18	;1
	pb	0,-42,-27	;2
	pb	0,-62,-27	;3
	pb	18,-20,-1	;4
	pb	-26,-29,-14	;5
	pb	0,-72,-9	;6
	pb	0,-27,0	;7
	pb	7,-18,20	;8
	pb	-12,-12,-3	;9
	pb	18,-18,21	;10
	pb	-23,-14,1	;11
	pb	0,-37,18	;12
	pb	0,-57,18	;13
	PointsXb	6
	pb	18,-47,-18	;14
	pb	18,-57,-18	;16
	pb	18,-62,-9	;18
	pb	18,-37,0	;20
	pb	-18,-42,9	;22
	pb	18,-52,9	;24
	jump	.EB0
.A2A	Pointsb	14
	pb	-40,-33,-37	;0
	pb	20,0,-14	;1
	pb	0,-44,-27	;2
	pb	0,-64,-27	;3
	pb	18,-21,2	;4
	pb	-27,-34,-15	;5
	pb	0,-74,-9	;6
	pb	0,-29,0	;7
	pb	8,-22,24	;8
	pb	-13,-17,-4	;9
	pb	19,-22,24	;10
	pb	-24,-18,0	;11
	pb	0,-39,18	;12
	pb	0,-59,18	;13
	PointsXb	6
	pb	18,-49,-18	;14
	pb	18,-59,-18	;16
	pb	18,-64,-9	;18
	pb	18,-39,0	;20
	pb	-18,-44,9	;22
	pb	18,-54,9	;24
	jump	.EB0
.A2_5A	Pointsb	14
	pb	-38,-24,-35	;0
	pb	23,0,-18	;1
	pb	0,-42,-27	;2
	pb	0,-62,-27	;3
	pb	18,-20,-1	;4
	pb	-26,-29,-14	;5
	pb	0,-72,-9	;6
	pb	0,-27,0	;7
	pb	7,-18,20	;8
	pb	-12,-12,-3	;9
	pb	18,-18,21	;10
	pb	-23,-14,1	;11
	pb	0,-37,18	;12
	pb	0,-57,18	;13
	PointsXb	6
	pb	18,-47,-18	;14
	pb	18,-57,-18	;16
	pb	18,-62,-9	;18
	pb	18,-37,0	;20
	pb	-18,-42,9	;22
	pb	18,-52,9	;24
	jump	.EB0
.A3A	Pointsb	14
	pb	-37,-14,-33	;0
	pb	26,0,-22	;1
	pb	0,-40,-27	;2
	pb	0,-60,-27	;3
	pb	19,-18,-4	;4
	pb	-25,-24,-12	;5
	pb	0,-70,-9	;6
	pb	0,-25,0	;7
	pb	6,-15,15	;8
	pb	-12,-8,-2	;9
	pb	17,-15,18	;10
	pb	-22,-9,2	;11
	pb	0,-35,18	;12
	pb	0,-55,18	;13
	PointsXb	6
	pb	18,-45,-18	;14
	pb	18,-55,-18	;16
	pb	18,-60,-9	;18
	pb	18,-35,0	;20
	pb	-18,-40,9	;22
	pb	18,-50,9	;24
	jump	.EB0
.A3_5A	Pointsb	14
	pb	-36,-7,-31	;0
	pb	30,0,-26	;1
	pb	0,-35,-27	;2
	pb	0,-55,-27	;3
	pb	21,-14,-6	;4
	pb	-24,-17,-10	;5
	pb	0,-65,-9	;6
	pb	0,-20,0	;7
	pb	7,-8,10	;8
	pb	-10,-4,2	;9
	pb	18,-8,14	;10
	pb	-20,-4,6	;11
	pb	0,-30,18	;12
	pb	0,-50,18	;13
	PointsXb	6
	pb	18,-40,-18	;14
	pb	18,-50,-18	;16
	pb	18,-55,-9	;18
	pb	18,-30,0	;20
	pb	-18,-35,9	;22
	pb	18,-45,9	;24
	jump	.EB0
.A4A	Pointsb	14
	pb	-35,0,-29	;0
	pb	35,0,-29	;1
	pb	0,-30,-27	;2
	pb	0,-50,-27	;3
	pb	23,-10,-9	;4
	pb	-23,-10,-9	;5
	pb	0,-60,-9	;6
	pb	0,-15,0	;7
	pb	8,0,6	;8
	pb	-8,0,6	;9
	pb	18,0,10	;10
	pb	-18,0,10	;11
	pb	0,-25,18	;12
	pb	0,-45,18	;13
	PointsXb	6
	pb	18,-35,-18	;14
	pb	18,-45,-18	;16
	pb	18,-50,-9	;18
	pb	18,-25,0	;20
	pb	-18,-30,9	;22
	pb	18,-40,9	;24
	jump	.EB0
.A4_5A	Pointsb	14
	pb	-32,0,-24	;0
	pb	36,-12,-32	;1
	pb	0,-35,-27	;2
	pb	0,-55,-27	;3
	pb	24,-17,-10	;4
	pb	-22,-14,-6	;5
	pb	0,-65,-9	;6
	pb	0,-20,0	;7
	pb	10,-4,2	;8
	pb	-6,-8,10	;9
	pb	20,-4,6	;10
	pb	-16,-8,14	;11
	pb	0,-30,18	;12
	pb	0,-50,18	;13
	PointsXb	6
	pb	18,-40,-18	;14
	pb	18,-50,-18	;16
	pb	18,-55,-9	;18
	pb	18,-30,0	;20
	pb	-18,-35,9	;22
	pb	18,-45,9	;24
	jump	.EB0
.A5A	Pointsb	14
	pb	-30,0,-20	;0
	pb	38,-23,-35	;1
	pb	0,-40,-27	;2
	pb	0,-60,-27	;3
	pb	25,-24,-12	;4
	pb	-20,-18,-3	;5
	pb	0,-70,-9	;6
	pb	0,-25,0	;7
	pb	12,-8,-2	;8
	pb	-4,-15,13	;9
	pb	22,-9,2	;10
	pb	-14,-15,17	;11
	pb	0,-35,18	;12
	pb	0,-55,18	;13
	PointsXb	6
	pb	18,-45,-18	;14
	pb	18,-55,-18	;16
	pb	18,-60,-9	;18
	pb	18,-35,0	;20
	pb	-18,-40,9	;22
	pb	18,-50,9	;24
	jump	.EB0
.A5_5A	Pointsb	14
	pb	-26,0,-16	;0
	pb	38,-30,-36	;1
	pb	0,-42,-27	;2
	pb	0,-62,-27	;3
	pb	26,-28,-14	;4
	pb	-18,-20,0	;5
	pb	0,-72,-9	;6
	pb	0,-27,0	;7
	pb	14,-12,-4	;8
	pb	-4,-18,16	;9
	pb	24,-13,0	;10
	pb	-14,-18,20	;11
	pb	0,-37,18	;12
	pb	0,-57,18	;13
	PointsXb	6
	pb	18,-47,-18	;14
	pb	18,-57,-18	;16
	pb	18,-62,-9	;18
	pb	18,-37,0	;20
	pb	-18,-42,9	;22
	pb	18,-52,9	;24
	jump	.EB0
.A6A	Pointsb	14
	pb	-23,0,-13	;0
	pb	39,-37,-37	;1
	pb	0,-44,-27	;2
	pb	0,-64,-27	;3
	pb	26,-33,-15	;4
	pb	-17,-22,2	;5
	pb	0,-74,-9	;6
	pb	0,-29,0	;7
	pb	15,-15,-7	;8
	pb	-4,-22,20	;9
	pb	25,-17,-3	;10
	pb	-15,-22,23	;11
	pb	0,-39,18	;12
	pb	0,-59,18	;13
	PointsXb	6
	pb	18,-49,-18	;14
	pb	18,-59,-18	;16
	pb	18,-64,-9	;18
	pb	18,-39,0	;20
	pb	-18,-44,9	;22
	pb	18,-54,9	;24
	jump	.EB0
.A6_5A	Pointsb	14
	pb	-24,0,-18	;0
	pb	38,-30,-36	;1
	pb	0,-42,-27	;2
	pb	0,-62,-27	;3
	pb	26,-28,-14	;4
	pb	-18,-20,-1	;5
	pb	0,-72,-9	;6
	pb	0,-27,0	;7
	pb	14,-12,-4	;8
	pb	-5,-18,18	;9
	pb	24,-13,0	;10
	pb	-16,-18,20	;11
	pb	0,-37,18	;12
	pb	0,-57,18	;13
	PointsXb	6
	pb	18,-47,-18	;14
	pb	18,-57,-18	;16
	pb	18,-62,-9	;18
	pb	18,-37,0	;20
	pb	-18,-42,9	;22
	pb	18,-52,9	;24
	jump	.EB0
.A7A	Pointsb	14
	pb	-26,0,-22	;0
	pb	38,-23,-35	;1
	pb	0,-40,-27	;2
	pb	0,-60,-27	;3
	pb	25,-24,-12	;4
	pb	-20,-18,-4	;5
	pb	0,-70,-9	;6
	pb	0,-25,0	;7
	pb	12,-8,-2	;8
	pb	-6,-15,15	;9
	pb	22,-9,2	;10
	pb	-17,-15,18	;11
	pb	0,-35,18	;12
	pb	0,-55,18	;13
	PointsXb	6
	pb	18,-45,-18	;14
	pb	18,-55,-18	;16
	pb	18,-60,-9	;18
	pb	18,-35,0	;20
	pb	-18,-40,9	;22
	pb	18,-50,9	;24
	jump	.EB0
.A7_5A	Pointsb	14
	pb	-30,0,-26	;0
	pb	36,-12,-32	;1
	pb	0,-32,-24	;2
	pb	0,-52,-24	;3
	pb	24,-17,-10	;4
	pb	-22,-14,-6	;5
	pb	0,-62,-6	;6
	pb	0,-18,2	;7
	pb	10,-4,2	;8
	pb	-7,-8,10	;9
	pb	20,-4,6	;10
	pb	-18,-8,14	;11
	pb	0,-28,20	;12
	pb	0,-48,20	;13
	PointsXb	6
	pb	18,-38,-16	;14
	pb	18,-48,-16	;16
	pb	18,-52,-6	;18
	pb	18,-28,2	;20
	pb	-18,-32,12	;22
	pb	18,-42,12	;24
	jump	.EB0
.A8A	Pointsb	14
	pb	-35,0,-29	;0
	pb	35,0,-29	;1
	pb	0,-25,-22	;2
	pb	0,-45,-22	;3
	pb	23,-10,-9	;4
	pb	-23,-10,-9	;5
	pb	0,-55,-4	;6
	pb	0,-10,5	;7
	pb	8,0,6	;8
	pb	-8,0,6	;9
	pb	18,0,10	;10
	pb	-18,0,10	;11
	pb	0,-20,23	;12
	pb	0,-40,23	;13
	PointsXb	6
	pb	18,-30,-13	;14
	pb	18,-40,-13	;16
	pb	18,-45,-4	;18
	pb	18,-20,5	;20
	pb	-18,-25,14	;22
	pb	18,-35,14	;24
	jump	.EB0
.A8_5A	Pointsb	14
	pb	-35,0,-29	;0
	pb	35,0,-29	;1
	pb	0,-22,-20	;2
	pb	0,-42,-20	;3
	pb	23,-10,-9	;4
	pb	-23,-10,-9	;5
	pb	0,-52,-2	;6
	pb	0,-8,8	;7
	pb	8,0,6	;8
	pb	-8,0,6	;9
	pb	18,0,10	;10
	pb	-18,0,10	;11
	pb	0,-18,26	;12
	pb	0,-38,26	;13
	PointsXb	6
	pb	18,-28,-10	;14
	pb	18,-38,-10	;16
	pb	18,-42,-2	;18
	pb	18,-18,8	;20
	pb	-18,-22,16	;22
	pb	18,-32,16	;24
	jump	.EB0
.A9A	Pointsb	14
	pb	-35,0,-29	;0
	pb	35,0,-29	;1
	pb	0,-20,-17	;2
	pb	0,-40,-17	;3
	pb	23,-10,-9	;4
	pb	-23,-10,-9	;5
	pb	0,-50,1	;6
	pb	0,-5,10	;7
	pb	8,0,6	;8
	pb	-8,0,6	;9
	pb	18,0,10	;10
	pb	-18,0,10	;11
	pb	0,-15,28	;12
	pb	0,-35,28	;13
	PointsXb	6
	pb	18,-25,-8	;14
	pb	18,-35,-8	;16
	pb	18,-40,1	;18
	pb	18,-15,10	;20
	pb	-18,-20,19	;22
	pb	18,-30,19	;24
	jump	.EB0
.A9_5A	Pointsb	14
	pb	-35,-10,-26	;0
	pb	35,-10,-26	;1
	pb	0,-26,-15	;2
	pb	0,-46,-15	;3
	pb	23,-14,-5	;4
	pb	-23,-14,-5	;5
	pb	0,-56,3	;6
	pb	0,-11,12	;7
	pb	8,-1,6	;8
	pb	-8,-1,6	;9
	pb	18,0,10	;10
	pb	-18,0,10	;11
	pb	0,-21,30	;12
	pb	0,-41,30	;13
	PointsXb	6
	pb	18,-31,-6	;14
	pb	18,-41,-6	;16
	pb	18,-46,3	;18
	pb	18,-21,12	;20
	pb	-18,-26,21	;22
	pb	18,-36,21	;24
	jump	.EB0
.A10A	Pointsb	14
	pb	-35,-19,-24	;0
	pb	35,-19,-24	;1
	pb	0,-32,-13	;2
	pb	0,-52,-13	;3
	pb	23,-18,-1	;4
	pb	-23,-18,-1	;5
	pb	0,-62,5	;6
	pb	0,-17,14	;7
	pb	8,-2,7	;8
	pb	-8,-2,7	;9
	pb	18,0,10	;10
	pb	-18,0,10	;11
	pb	0,-27,32	;12
	pb	0,-47,32	;13
	PointsXb	6
	pb	18,-37,-4	;14
	pb	18,-47,-4	;16
	pb	18,-52,5	;18
	pb	18,-27,14	;20
	pb	-18,-32,23	;22
	pb	18,-42,23	;24
	jump	.EB0
.A10_5A	Pointsb	14
	pb	-35,-26,-17	;0
	pb	35,-26,-17	;1
	pb	0,-29,-6	;2
	pb	0,-49,-6	;3
	pb	23,-20,4	;4
	pb	-23,-20,4	;5
	pb	0,-59,12	;6
	pb	0,-14,20	;7
	pb	8,-2,8	;8
	pb	-8,-2,8	;9
	pb	18,0,10	;10
	pb	-18,0,10	;11
	pb	0,-24,38	;12
	pb	0,-44,38	;13
	PointsXb	6
	pb	18,-34,2	;14
	pb	18,-44,2	;16
	pb	18,-49,12	;18
	pb	18,-24,20	;20
	pb	-18,-29,30	;22
	pb	18,-39,30	;24
	jump	.EB0
.A11A	Pointsb	14
	pb	-35,-34,-10	;0
	pb	35,-34,-10	;1
	pb	0,-26,0	;2
	pb	0,-46,0	;3
	pb	23,-21,9	;4
	pb	-23,-21,9	;5
	pb	0,-56,18	;6
	pb	0,-11,27	;7
	pb	8,-3,8	;8
	pb	-8,-3,8	;9
	pb	18,0,10	;10
	pb	-18,0,10	;11
	pb	0,-21,45	;12
	pb	0,-41,45	;13
	PointsXb	6
	pb	18,-31,9	;14
	pb	18,-41,9	;16
	pb	18,-46,18	;18
	pb	18,-21,27	;20
	pb	-18,-26,36	;22
	pb	18,-36,36	;24
	jump	.EB0
.A11_5A	Pointsb	14
	pb	-35,-36,0	;0
	pb	35,-36,0	;1
	pb	0,-20,4	;2
	pb	0,-40,4	;3
	pb	23,-20,14	;4
	pb	-23,-20,14	;5
	pb	0,-50,22	;6
	pb	0,-6,31	;7
	pb	8,-4,9	;8
	pb	-8,-4,9	;9
	pb	18,0,10	;10
	pb	-18,0,10	;11
	pb	0,-16,49	;12
	pb	0,-36,49	;13
	PointsXb	6
	pb	18,-26,13	;14
	pb	18,-36,13	;16
	pb	18,-40,22	;18
	pb	18,-16,31	;20
	pb	-18,-20,40	;22
	pb	18,-30,40	;24
	jump	.EB0
.A12A	Pointsb	14
	pb	-35,-39,10	;0
	pb	35,-39,10	;1
	pb	0,-15,8	;2
	pb	0,-35,8	;3
	pb	23,-19,20	;4
	pb	-23,-19,20	;5
	pb	0,-45,26	;6
	pb	0,0,35	;7
	pb	8,-4,10	;8
	pb	-8,-4,10	;9
	pb	18,0,10	;10
	pb	-18,0,10	;11
	pb	0,-10,53	;12
	pb	0,-30,53	;13
	PointsXb	6
	pb	18,-20,17	;14
	pb	18,-30,17	;16
	pb	18,-35,26	;18
	pb	18,-10,35	;20
	pb	-18,-15,44	;22
	pb	18,-25,44	;24
.EB0

	EndPoints
boss_d_1_F
	Vizis	26
	Viz	20,8,4,95,18,-83	;0
	Viz	10,8,20,44,44,111	;1
	Viz	4,8,1,97,33,-75	;2
	Viz	5,9,21,-95,18,-83	;3
	Viz	21,9,11,-44,44,111	;4
	Viz	0,9,5,-97,33,-75	;5
	Viz	13,6,18,-55,100,55	;6
	Viz	25,19,6,55,100,55	;7
	Viz	2,7,20,-55,-100,-55	;8
	Viz	14,16,3,-57,0,-114	;9
	Viz	23,20,7,-55,-100,55	;10
	Viz	12,13,24,-57,0,114	;11
	Viz	15,21,7,55,-100,-55	;12
	Viz	2,3,17,57,0,-114	;13
	Viz	16,18,6,-55,100,-55	;14
	Viz	3,6,19,55,100,-55	;15
	Viz	19,25,22,127,0,0	;16
	Viz	12,7,21,55,-100,55	;17
	Viz	22,25,13,57,0,114	;18
	Viz	16,14,20,-127,0,0	;19
	Viz	21,11,5,120,16,40	;20
	Viz	5,11,0,111,37,49	;21
	Viz	4,10,20,-120,16,40	;22
	Viz	1,10,4,-111,37,49	;23
	Viz	1,8,10,0,-127,0	;24
	Viz	11,9,0,0,-127,0	;25
	BSPInit	boss_d_1_EBSP
	BSP	2,boss_d_1_f1,.bsp2
	BSPEND
.bsp2	BSP	5,boss_d_1_f3,.bsp4
	BSPEND
.bsp4	BSPE	boss_d_1_f5

boss_d_1_f1	Faces
	Face3	14,2,97,33,-75,4,8,1
	FendQ
boss_d_1_f3	Faces
	Face3	16,5,-97,33,-75,0,9,5
	FendQ
boss_d_1_f5	Faces
	Face3	30,0,95,18,-83,20,8,4
	Face3	28,1,44,44,111,10,8,20
	Face3	32,3,-95,18,-83,5,9,21
	Face3	28,4,-44,44,111,21,9,11
	Face4	16,8,-55,-100,-55,2,7,20,14
	Face4	18,9,-57,0,-114,14,16,3,2
	Face4	14,10,-55,-100,55,23,20,7,12
	Face4	14,12,55,-100,-55,15,21,7,2
	Face4	16,13,57,0,-114,2,3,17,15
	Face6	29,16,127,0,0,19,25,22,21,15,17
	Face4	12,17,55,-100,55,12,7,21,22
	Face6	33,19,-127,0,0,16,14,20,23,24,18
	Face3	30,20,120,16,40,21,11,5
	Face3	12,21,111,37,49,5,11,0
	Face3	32,22,-120,16,40,4,10,20
	Face3	18,23,-111,37,49,1,10,4
	Face4	32,6,-55,100,55,13,6,18,24
	Face4	30,7,55,100,55,25,19,6,13
	Face4	30,11,-57,0,114,12,13,24,23
	Face4	34,14,-55,100,-55,16,18,6,3
	Face4	32,15,55,100,-55,3,6,19,17
	Face4	28,18,57,0,114,22,25,13,12
	Face3	12,24,0,-127,0,1,8,10
	Face3	12,25,0,-127,0,11,9,0
	FendQ
boss_d_1_EBSP
	EndShape

	endc

	ifne	DO_HDR

boss_d_4
	ShapeHdr	boss_d_4_P,0,boss_d_4_F,0,0,0,0,1,0,57/2,21/2,37/2,60/2,id_0_c,0,0,0,0,<boss_d_4>
	elseif
boss_d_4_P
	datahdr
	Pointsb	2
	pb	0,5,5	;0
	pb	0,0,25	;1
	PointsXb	1
	pb	-5,0,25	;2
	IFEQ	SPEED_MODE
	Frames	10
	jumptab	.A0A
	jumptab	.A1A
	jumptab	.A2A
	jumptab	.A3A
	jumptab	.A4A
	jumptab	.A5A
	jumptab	.A6A
	jumptab	.A7A
	jumptab	.A8A
	jumptab	.A9A
	ELSEIF
	Frames	20
	jumptab	.A0A
	jumptab	.A0_5A
	jumptab	.A1A
	jumptab	.A1_5A
	jumptab	.A2A
	jumptab	.A2_5A
	jumptab	.A3A
	jumptab	.A3_5A
	jumptab	.A4A
	jumptab	.A4_5A
	jumptab	.A5A
	jumptab	.A5_5A
	jumptab	.A6A
	jumptab	.A6_5A
	jumptab	.A7A
	jumptab	.A7_5A
	jumptab	.A8A
	jumptab	.A8_5A
	jumptab	.A9A
	jumptab	.A9_5A
	ENDC
.A0A	Pointsb	6
	pb	0,0,-35	;4
	pb	47,-10,-11	;5
	pb	-47,-10,-11	;6
	pb	0,-13,14	;7
	pb	0,-10,30	;8
	pb	0,5,36	;9
	PointsXb	3
	pb	-17,-17,-3	;10
	pb	-10,15,5	;12
	pb	-17,-12,11	;14
	jump	.EB0
.A0_5A	Pointsb	6
	pb	0,0,-35	;4
	pb	50,-8,-12	;5
	pb	-50,-8,-12	;6
	pb	0,-14,14	;7
	pb	0,-10,30	;8
	pb	0,6,36	;9
	PointsXb	3
	pb	-20,-14,-4	;10
	pb	-10,15,6	;12
	pb	-20,-8,10	;14
	jump	.EB0
.A1A	Pointsb	6
	pb	0,-1,-35	;4
	pb	53,-7,-12	;5
	pb	-53,-7,-12	;6
	pb	0,-14,15	;7
	pb	0,-10,31	;8
	pb	0,6,36	;9
	PointsXb	3
	pb	-22,-10,-5	;10
	pb	-10,15,6	;12
	pb	-22,-5,9	;14
	jump	.EB0
.A1_5A	Pointsb	6
	pb	0,-1,-35	;4
	pb	54,-8,-12	;5
	pb	-54,-8,-12	;6
	pb	0,-14,16	;7
	pb	0,-10,32	;8
	pb	0,6,36	;9
	PointsXb	3
	pb	-23,-8,-6	;10
	pb	-10,15,6	;12
	pb	-23,-4,8	;14
	jump	.EB0
.A2A	Pointsb	6
	pb	0,-1,-35	;4
	pb	55,-9,-11	;5
	pb	-55,-9,-11	;6
	pb	0,-15,16	;7
	pb	0,-9,32	;8
	pb	0,7,35	;9
	PointsXb	3
	pb	-24,-7,-7	;10
	pb	-10,15,7	;12
	pb	-24,-2,7	;14
	jump	.EB0
.A2_5A	Pointsb	6
	pb	0,-2,-35	;4
	pb	56,-8,-12	;5
	pb	-56,-8,-12	;6
	pb	0,-15,17	;7
	pb	0,-8,32	;8
	pb	0,8,34	;9
	PointsXb	3
	pb	-24,-5,-8	;10
	pb	-10,15,6	;12
	pb	-24,0,6	;14
	jump	.EB0
.A3A	Pointsb	6
	pb	0,-2,-35	;4
	pb	56,-6,-12	;5
	pb	-57,-6,-12	;6
	pb	0,-15,18	;7
	pb	0,-8,32	;8
	pb	0,8,34	;9
	PointsXb	3
	pb	-25,-3,-8	;10
	pb	-10,15,5	;12
	pb	-25,2,6	;14
	jump	.EB0
.A3_5A	Pointsb	6
	pb	0,-2,-35	;4
	pb	55,-1,-14	;5
	pb	-56,0,-14	;6
	pb	0,-15,17	;7
	pb	0,-8,32	;8
	pb	0,8,34	;9
	PointsXb	3
	pb	-24,4,-9	;10
	pb	-10,15,6	;12
	pb	-24,6,6	;14
	jump	.EB0
.A4A	Pointsb	6
	pb	0,-3,-35	;4
	pb	54,4,-15	;5
	pb	-55,5,-15	;6
	pb	0,-15,16	;7
	pb	0,-9,32	;8
	pb	0,7,35	;9
	PointsXb	3
	pb	-24,11,-10	;10
	pb	-10,15,6	;12
	pb	-24,11,5	;14
	jump	.EB0
.A4_5A	Pointsb	6
	pb	0,-3,-34	;4
	pb	52,8,-16	;5
	pb	-54,10,-16	;6
	pb	0,-14,16	;7
	pb	0,-10,32	;8
	pb	0,6,36	;9
	PointsXb	3
	pb	-22,14,-11	;10
	pb	-10,15,6	;12
	pb	-22,15,4	;14
	jump	.EB0
.A5A	Pointsb	6
	pb	0,-3,-34	;4
	pb	51,13,-17	;5
	pb	-52,14,-17	;6
	pb	0,-14,15	;7
	pb	0,-10,31	;8
	pb	0,6,36	;9
	PointsXb	3
	pb	-20,16,-12	;10
	pb	-10,15,7	;12
	pb	-20,19,3	;14
	jump	.EB0
.A5_5A	Pointsb	6
	pb	0,-3,-34	;4
	pb	52,16,-16	;5
	pb	-53,18,-16	;6
	pb	0,-14,14	;7
	pb	0,-10,30	;8
	pb	0,6,36	;9
	PointsXb	3
	pb	-22,14,-11	;10
	pb	-10,15,6	;12
	pb	-22,15,4	;14
	jump	.EB0
.A6A	Pointsb	6
	pb	0,-3,-35	;4
	pb	53,19,-15	;5
	pb	-54,21,-15	;6
	pb	0,-13,14	;7
	pb	0,-10,30	;8
	pb	0,5,36	;9
	PointsXb	3
	pb	-24,11,-10	;10
	pb	-10,15,5	;12
	pb	-24,11,5	;14
	jump	.EB0
.A6_5A	Pointsb	6
	pb	0,-2,-35	;4
	pb	52,18,-14	;5
	pb	-53,21,-14	;6
	pb	0,-12,14	;7
	pb	0,-10,30	;8
	pb	0,4,36	;9
	PointsXb	3
	pb	-24,8,-10	;10
	pb	-10,15,6	;12
	pb	-24,6,4	;14
	jump	.EB0
.A7A	Pointsb	6
	pb	0,-2,-35	;4
	pb	51,18,-13	;5
	pb	-52,21,-12	;6
	pb	0,-12,13	;7
	pb	0,-10,29	;8
	pb	0,4,36	;9
	PointsXb	3
	pb	-25,5,-10	;10
	pb	-10,15,6	;12
	pb	-25,2,4	;14
	jump	.EB0
.A7_5A	Pointsb	6
	pb	0,-2,-35	;4
	pb	49,19,-12	;5
	pb	-50,20,-12	;6
	pb	0,-12,12	;7
	pb	0,-10,28	;8
	pb	0,4,36	;9
	PointsXb	3
	pb	-24,2,-12	;10
	pb	-10,15,6	;12
	pb	-24,-2,2	;14
	jump	.EB0
.A8A	Pointsb	6
	pb	0,-1,-35	;4
	pb	47,20,-11	;5
	pb	-47,20,-11	;6
	pb	0,-11,12	;7
	pb	0,-11,28	;8
	pb	0,3,37	;9
	PointsXb	3
	pb	-22,0,-13	;10
	pb	-10,15,7	;12
	pb	-22,-5,1	;14
	jump	.EB0
.A8_5A	Pointsb	6
	pb	0,-1,-35	;4
	pb	44,15,-12	;5
	pb	-44,15,-12	;6
	pb	0,-12,12	;7
	pb	0,-10,28	;8
	pb	0,4,36	;9
	PointsXb	3
	pb	-20,-5,-13	;10
	pb	-10,15,6	;12
	pb	-20,-9,2	;14
	jump	.EB0
.A9A	Pointsb	6
	pb	0,-1,-35	;4
	pb	42,10,-14	;5
	pb	-42,10,-14	;6
	pb	0,-12,13	;7
	pb	0,-10,29	;8
	pb	0,4,36	;9
	PointsXb	3
	pb	-17,-10,-13	;10
	pb	-10,15,6	;12
	pb	-17,-13,2	;14
	jump	.EB0
.A9_5A	Pointsb	6
	pb	0,0,-35	;4
	pb	44,0,-12	;5
	pb	-44,0,-12	;6
	pb	0,-12,14	;7
	pb	0,-10,30	;8
	pb	0,4,36	;9
	PointsXb	3
	pb	-17,-14,-8	;10
	pb	-10,15,6	;12
	pb	-17,-12,6	;14
.EB0

	EndPoints
boss_d_4_F
	Vizis	20
	Viz	11,15,5,38,-114,-41	;0
	Viz	5,15,11,-38,114,41	;1
	Viz	0,11,15,92,82,29	;2
	Viz	15,11,0,-92,-82,-29	;3
	Viz	6,14,10,-38,-114,-41	;4
	Viz	10,14,6,38,114,41	;5
	Viz	14,10,0,-92,82,29	;6
	Viz	0,10,14,92,-82,-29	;7
	Viz	12,13,4,0,-119,-45	;8
	Viz	1,13,12,0,-102,76	;9
	Viz	13,0,4,-89,89,11	;10
	Viz	4,0,12,89,89,11	;11
	Viz	1,0,13,-88,88,-22	;12
	Viz	12,0,1,88,88,-22	;13
	Viz	7,2,3,0,-82,-97	;14
	Viz	8,7,3,-115,53,10	;15
	Viz	2,7,8,115,53,10	;16
	Viz	3,2,9,0,-116,-53	;17
	Viz	3,9,8,-109,24,61	;18
	Viz	8,9,2,109,24,61	;19

boss_d_4_f1	Faces
	Face3	0,0,38,-114,-41,11,15,5
	Face3	0,4,-38,-114,-41,6,14,10
	Face3	14,14,0,-82,-97,7,2,3
	Face3	7,2,92,82,29,0,11,15
	Face3	0,3,-92,-82,-29,15,11,0
	Face3	7,6,-92,82,29,14,10,0
	Face3	0,7,92,-82,-29,0,10,14
	Face3	18,9,0,-102,76,1,13,12
	Face3	32,10,-89,89,11,13,0,4
	Face3	30,11,89,89,11,4,0,12
	Face3	34,12,-88,88,-22,1,0,13
	Face3	32,13,88,88,-22,12,0,1
	Face3	18,15,-115,53,10,8,7,3
	Face3	16,16,115,53,10,2,7,8
	Face3	21,17,0,-116,-53,3,2,9
	Face3	27,18,-109,24,61,3,9,8
	Face3	23,19,109,24,61,8,9,2
	Face3	7,1,-38,114,41,5,15,11
	Face3	7,5,38,114,41,10,14,6
	Face3	16,8,0,-119,-45,12,13,4
	Fend
	EndShape

	endc

	ifne	DO_HDR

boss_d_8
	ShapeHdr	boss_d_8_P,0,boss_d_8_F,0,0,0,0,2,0,71,71,48,93,id_0_c,0,0,0,0,<boss_d_8>
	elseif
boss_d_8_P
	datahdr
	IFEQ	SPEED_MODE
	Frames	14
	jumptab	.A0A
	jumptab	.A1A
	jumptab	.A2A
	jumptab	.A3A
	jumptab	.A4A
	jumptab	.A5A
	jumptab	.A6A
	jumptab	.A7A
	jumptab	.A8A
	jumptab	.A9A
	jumptab	.A10A
	jumptab	.A11A
	jumptab	.A12A
	jumptab	.A13A
	ELSEIF
	Frames	28
	jumptab	.A0A
	jumptab	.A0_5A
	jumptab	.A1A
	jumptab	.A1_5A
	jumptab	.A2A
	jumptab	.A2_5A
	jumptab	.A3A
	jumptab	.A3_5A
	jumptab	.A4A
	jumptab	.A4_5A
	jumptab	.A5A
	jumptab	.A5_5A
	jumptab	.A6A
	jumptab	.A6_5A
	jumptab	.A7A
	jumptab	.A7_5A
	jumptab	.A8A
	jumptab	.A8_5A
	jumptab	.A9A
	jumptab	.A9_5A
	jumptab	.A10A
	jumptab	.A10_5A
	jumptab	.A11A
	jumptab	.A11_5A
	jumptab	.A12A
	jumptab	.A12_5A
	jumptab	.A13A
	jumptab	.A13_5A
	ENDC
.A0A	Pointsb	7
	pb	-10,-50,-20	;0
	pb	-7,-51,-20	;1
	pb	-14,-42,-16	;2
	pb	-14,-30,-10	;3
	pb	-6,-29,-8	;4
	pb	-12,-20,-5	;5
	pb	0,-40,10	;6
	jump	.EB0
.A0_5A	Pointsb	7
	pb	-17,-50,-16	;0
	pb	-14,-51,-16	;1
	pb	-20,-42,-10	;2
	pb	-18,-30,-5	;3
	pb	-10,-29,-6	;4
	pb	-15,-20,-1	;5
	pb	0,-40,10	;6
	jump	.EB0
.A1A	Pointsb	7
	pb	-24,-50,-11	;0
	pb	-21,-51,-12	;1
	pb	-25,-42,-5	;2
	pb	-22,-30,0	;3
	pb	-14,-29,-3	;4
	pb	-18,-20,3	;5
	pb	0,-40,10	;6
	jump	.EB0
.A1_5A	Pointsb	7
	pb	-28,-52,-4	;0
	pb	-22,-58,-4	;1
	pb	-30,-44,1	;2
	pb	-29,-34,2	;3
	pb	-18,-34,1	;4
	pb	-26,-24,5	;5
	pb	0,-40,10	;6
	jump	.EB0
.A2A	Pointsb	7
	pb	-32,-53,3	;0
	pb	-22,-65,4	;1
	pb	-36,-46,7	;2
	pb	-36,-38,4	;3
	pb	-23,-40,5	;4
	pb	-34,-29,7	;5
	pb	0,-40,10	;6
	jump	.EB0
.A2_5A	Pointsb	7
	pb	-39,-53,1	;0
	pb	-22,-65,4	;1
	pb	-42,-44,4	;2
	pb	-43,-32,3	;3
	pb	-23,-40,5	;4
	pb	-40,-20,8	;5
	pb	0,-40,10	;6
	jump	.EB0
.A3A	Pointsb	7
	pb	-46,-53,-1	;0
	pb	-22,-65,4	;1
	pb	-48,-42,2	;2
	pb	-50,-25,2	;3
	pb	-23,-40,5	;4
	pb	-46,-10,8	;5
	pb	0,-40,10	;6
	jump	.EB0
.A3_5A	Pointsb	7
	pb	-52,-52,-5	;0
	pb	-22,-65,4	;1
	pb	-54,-39,-2	;2
	pb	-58,-18,0	;3
	pb	-22,-42,10	;4
	pb	-50,-2,10	;5
	pb	0,-40,10	;6
	jump	.EB0
.A4A	Pointsb	7
	pb	-59,-51,-9	;0
	pb	-22,-65,3	;1
	pb	-61,-36,-7	;2
	pb	-65,-11,-1	;3
	pb	-22,-43,16	;4
	pb	-55,6,11	;5
	pb	0,-40,10	;6
	jump	.EB0
.A4_5A	Pointsb	7
	pb	-58,-56,-1	;0
	pb	-20,-66,8	;1
	pb	-62,-40,0	;2
	pb	-66,-15,4	;3
	pb	-20,-44,18	;4
	pb	-56,2,15	;5
	pb	0,-40,10	;6
	jump	.EB0
.A5A	Pointsb	7
	pb	-58,-60,7	;0
	pb	-19,-68,13	;1
	pb	-63,-44,7	;2
	pb	-68,-19,10	;3
	pb	-19,-44,21	;4
	pb	-57,-1,19	;5
	pb	0,-40,9	;6
	jump	.EB0
.A5_5A	Pointsb	7
	pb	-57,-62,13	;0
	pb	-18,-68,14	;1
	pb	-62,-46,14	;2
	pb	-68,-22,18	;3
	pb	-18,-45,22	;4
	pb	-58,-3,24	;5
	pb	0,-40,9	;6
	jump	.EB0
.A6A	Pointsb	7
	pb	-56,-64,19	;0
	pb	-16,-69,15	;1
	pb	-61,-49,22	;2
	pb	-68,-24,25	;3
	pb	-16,-46,24	;4
	pb	-58,-5,30	;5
	pb	0,-40,9	;6
	jump	.EB0
.A6_5A	Pointsb	7
	pb	-54,-66,23	;0
	pb	-14,-70,17	;1
	pb	-59,-51,26	;2
	pb	-66,-26,31	;3
	pb	-14,-46,26	;4
	pb	-57,-6,35	;5
	pb	0,-40,9	;6
	jump	.EB0
.A7A	Pointsb	7
	pb	-52,-68,27	;0
	pb	-13,-70,19	;1
	pb	-57,-53,31	;2
	pb	-65,-28,37	;3
	pb	-13,-46,27	;4
	pb	-56,-8,40	;5
	pb	0,-40,9	;6
	jump	.EB0
.A7_5A	Pointsb	7
	pb	-54,-70,26	;0
	pb	-16,-69,14	;1
	pb	-59,-55,30	;2
	pb	-66,-32,39	;3
	pb	-16,-46,24	;4
	pb	-58,-12,43	;5
	pb	0,-40,9	;6
	jump	.EB0
.A8A	Pointsb	7
	pb	-55,-71,24	;0
	pb	-19,-68,8	;1
	pb	-61,-57,30	;2
	pb	-68,-35,41	;3
	pb	-19,-46,20	;4
	pb	-61,-15,46	;5
	pb	0,-40,9	;6
	jump	.EB0
.A8_5A	Pointsb	7
	pb	-56,-70,16	;0
	pb	-20,-64,1	;1
	pb	-62,-58,24	;2
	pb	-70,-37,38	;3
	pb	-20,-45,16	;4
	pb	-62,-19,47	;5
	pb	0,-40,9	;6
	jump	.EB0
.A9A	Pointsb	7
	pb	-58,-68,8	;0
	pb	-22,-60,-6	;1
	pb	-64,-58,18	;2
	pb	-71,-39,35	;3
	pb	-22,-44,13	;4
	pb	-64,-23,48	;5
	pb	0,-40,9	;6
	jump	.EB0
.A9_5A	Pointsb	7
	pb	-58,-64,3	;0
	pb	-22,-55,-10	;1
	pb	-64,-55,14	;2
	pb	-71,-38,33	;3
	pb	-22,-40,11	;4
	pb	-64,-22,47	;5
	pb	0,-40,9	;6
	jump	.EB0
.A10A	Pointsb	7
	pb	-59,-60,-2	;0
	pb	-23,-50,-13	;1
	pb	-65,-52,11	;2
	pb	-71,-37,31	;3
	pb	-23,-37,9	;4
	pb	-64,-22,46	;5
	pb	0,-40,9	;6
	jump	.EB0
.A10_5A	Pointsb	7
	pb	-59,-54,-5	;0
	pb	-22,-46,-15	;1
	pb	-64,-46,8	;2
	pb	-70,-30,27	;3
	pb	-22,-34,7	;4
	pb	-63,-16,42	;5
	pb	0,-40,9	;6
	jump	.EB0
.A11A	Pointsb	7
	pb	-59,-48,-8	;0
	pb	-21,-43,-17	;1
	pb	-64,-39,4	;2
	pb	-70,-24,23	;3
	pb	-21,-31,5	;4
	pb	-62,-10,38	;5
	pb	0,-40,9	;6
	jump	.EB0
.A11_5A	Pointsb	7
	pb	-57,-40,-11	;0
	pb	-18,-38,-18	;1
	pb	-62,-32,2	;2
	pb	-67,-18,22	;3
	pb	-18,-27,4	;4
	pb	-59,-6,38	;5
	pb	0,-40,9	;6
	jump	.EB0
.A12A	Pointsb	7
	pb	-55,-33,-14	;0
	pb	-16,-32,-20	;1
	pb	-60,-25,-1	;2
	pb	-64,-12,21	;3
	pb	-16,-23,4	;4
	pb	-56,-2,39	;5
	pb	0,-40,9	;6
	jump	.EB0
.A12_5A	Pointsb	7
	pb	-56,-32,-18	;0
	pb	-18,-40,-18	;1
	pb	-60,-22,-8	;2
	pb	-62,-5,10	;3
	pb	-18,-28,4	;4
	pb	-54,6,28	;5
	pb	0,-40,9	;6
	jump	.EB0
.A13A	Pointsb	7
	pb	-56,-31,-23	;0
	pb	-21,-48,-16	;1
	pb	-59,-18,-15	;2
	pb	-60,2,0	;3
	pb	-21,-32,3	;4
	pb	-51,15,17	;5
	pb	0,-40,9	;6
	jump	.EB0
.A13_5A	Pointsb	7
	pb	-58,-41,-16	;0
	pb	-22,-56,-6	;1
	pb	-60,-27,-11	;2
	pb	-62,-4,0	;3
	pb	-22,-38,10	;4
	pb	-53,10,14	;5
	pb	0,-40,10	;6
.EB0

	EndPoints
boss_d_8_F
	Vizis	10
	Viz	5,1,4,32,58,108	;0
	Viz	4,1,5,-32,-58,-108	;1
	Viz	3,1,4,20,59,110	;2
	Viz	4,1,3,-20,-59,-110	;3
	Viz	1,2,4,-14,-60,-111	;4
	Viz	4,2,1,14,60,111	;5
	Viz	1,0,4,-20,-59,-111	;6
	Viz	4,0,1,20,59,111	;7
	Viz	6,1,4,-122,-12,-33	;8
	Viz	4,1,6,122,12,33	;9
	BSPInit	boss_d_8_EBSP
	BSP	9,boss_d_8_f1,.bsp2
	BSPEND
.bsp2	BSPE	boss_d_8_f3

boss_d_8_f1	Faces
	Face3	32,9,122,12,33,4,1,6
	FendQ
boss_d_8_f3	Faces
	Face3	14,0,32,58,108,5,1,4
	Face3	16,2,20,59,110,3,1,4
	Face3	18,5,14,60,111,4,2,1
	Face3	20,7,20,59,111,4,0,1
	Face3	14,1,-32,-58,-108,4,1,5
	Face3	16,3,-20,-59,-110,4,1,3
	Face3	18,4,-14,-60,-111,1,2,4
	Face3	20,6,-20,-59,-111,1,0,4
	Face3	32,8,-122,-12,-33,6,1,4
	FendQ
boss_d_8_EBSP
	EndShape

	endc

	ifne	DO_HDR

boss_d_9
	ShapeHdr	boss_d_9_P,0,boss_d_9_F,0,0,0,0,2,0,71,71,48,93,id_0_c,0,0,0,0,<boss_d_9>
	elseif
boss_d_9_P
	datahdr
	IFEQ	SPEED_MODE
	Frames	14
	jumptab	.A0A
	jumptab	.A1A
	jumptab	.A2A
	jumptab	.A3A
	jumptab	.A4A
	jumptab	.A5A
	jumptab	.A6A
	jumptab	.A7A
	jumptab	.A8A
	jumptab	.A9A
	jumptab	.A10A
	jumptab	.A11A
	jumptab	.A12A
	jumptab	.A13A
	ELSEIF
	Frames	28
	jumptab	.A0A
	jumptab	.A0_5A
	jumptab	.A1A
	jumptab	.A1_5A
	jumptab	.A2A
	jumptab	.A2_5A
	jumptab	.A3A
	jumptab	.A3_5A
	jumptab	.A4A
	jumptab	.A4_5A
	jumptab	.A5A
	jumptab	.A5_5A
	jumptab	.A6A
	jumptab	.A6_5A
	jumptab	.A7A
	jumptab	.A7_5A
	jumptab	.A8A
	jumptab	.A8_5A
	jumptab	.A9A
	jumptab	.A9_5A
	jumptab	.A10A
	jumptab	.A10_5A
	jumptab	.A11A
	jumptab	.A11_5A
	jumptab	.A12A
	jumptab	.A12_5A
	jumptab	.A13A
	jumptab	.A13_5A
	ENDC
.A0A	Pointsb	7
	pb	10,-50,-20	;0
	pb	7,-51,-20	;1
	pb	14,-42,-16	;2
	pb	14,-30,-10	;3
	pb	6,-29,-8	;4
	pb	12,-20,-5	;5
	pb	0,-40,10	;6
	jump	.EB0
.A0_5A	Pointsb	7
	pb	17,-50,-16	;0
	pb	14,-51,-16	;1
	pb	20,-42,-10	;2
	pb	18,-30,-5	;3
	pb	10,-29,-6	;4
	pb	15,-20,-1	;5
	pb	0,-40,10	;6
	jump	.EB0
.A1A	Pointsb	7
	pb	24,-50,-11	;0
	pb	21,-51,-12	;1
	pb	25,-42,-5	;2
	pb	22,-30,0	;3
	pb	14,-29,-3	;4
	pb	18,-20,3	;5
	pb	0,-40,10	;6
	jump	.EB0
.A1_5A	Pointsb	7
	pb	28,-52,-4	;0
	pb	22,-58,-4	;1
	pb	30,-44,1	;2
	pb	29,-34,2	;3
	pb	18,-34,1	;4
	pb	26,-24,5	;5
	pb	0,-40,10	;6
	jump	.EB0
.A2A	Pointsb	7
	pb	32,-53,3	;0
	pb	22,-65,4	;1
	pb	36,-46,7	;2
	pb	36,-38,4	;3
	pb	23,-40,5	;4
	pb	34,-29,7	;5
	pb	0,-40,10	;6
	jump	.EB0
.A2_5A	Pointsb	7
	pb	39,-53,1	;0
	pb	22,-65,4	;1
	pb	42,-44,4	;2
	pb	43,-32,3	;3
	pb	23,-40,5	;4
	pb	40,-20,8	;5
	pb	0,-40,10	;6
	jump	.EB0
.A3A	Pointsb	7
	pb	46,-53,-1	;0
	pb	22,-65,4	;1
	pb	48,-42,2	;2
	pb	50,-25,2	;3
	pb	23,-40,5	;4
	pb	46,-10,8	;5
	pb	0,-40,10	;6
	jump	.EB0
.A3_5A	Pointsb	7
	pb	52,-52,-5	;0
	pb	22,-65,4	;1
	pb	54,-39,-2	;2
	pb	58,-18,0	;3
	pb	22,-42,10	;4
	pb	50,-2,10	;5
	pb	0,-40,10	;6
	jump	.EB0
.A4A	Pointsb	7
	pb	59,-51,-9	;0
	pb	22,-65,3	;1
	pb	61,-36,-7	;2
	pb	65,-11,-1	;3
	pb	22,-43,16	;4
	pb	55,6,11	;5
	pb	0,-40,10	;6
	jump	.EB0
.A4_5A	Pointsb	7
	pb	58,-56,-1	;0
	pb	20,-66,8	;1
	pb	62,-40,0	;2
	pb	66,-15,4	;3
	pb	20,-44,18	;4
	pb	56,2,15	;5
	pb	0,-40,10	;6
	jump	.EB0
.A5A	Pointsb	7
	pb	58,-60,7	;0
	pb	19,-68,13	;1
	pb	63,-44,7	;2
	pb	68,-19,10	;3
	pb	19,-44,21	;4
	pb	57,-1,19	;5
	pb	0,-40,9	;6
	jump	.EB0
.A5_5A	Pointsb	7
	pb	57,-62,13	;0
	pb	18,-68,14	;1
	pb	62,-46,14	;2
	pb	68,-22,18	;3
	pb	18,-45,22	;4
	pb	58,-3,24	;5
	pb	0,-40,9	;6
	jump	.EB0
.A6A	Pointsb	7
	pb	56,-64,19	;0
	pb	16,-69,15	;1
	pb	61,-49,22	;2
	pb	68,-24,25	;3
	pb	16,-46,24	;4
	pb	58,-5,30	;5
	pb	0,-40,9	;6
	jump	.EB0
.A6_5A	Pointsb	7
	pb	54,-66,23	;0
	pb	14,-70,17	;1
	pb	59,-51,26	;2
	pb	66,-26,31	;3
	pb	14,-46,26	;4
	pb	57,-6,35	;5
	pb	0,-40,9	;6
	jump	.EB0
.A7A	Pointsb	7
	pb	52,-68,27	;0
	pb	13,-70,19	;1
	pb	57,-53,31	;2
	pb	65,-28,37	;3
	pb	13,-46,27	;4
	pb	56,-8,40	;5
	pb	0,-40,9	;6
	jump	.EB0
.A7_5A	Pointsb	7
	pb	54,-70,26	;0
	pb	16,-69,14	;1
	pb	59,-55,30	;2
	pb	66,-32,39	;3
	pb	16,-46,24	;4
	pb	58,-12,43	;5
	pb	0,-40,9	;6
	jump	.EB0
.A8A	Pointsb	7
	pb	55,-71,24	;0
	pb	19,-68,8	;1
	pb	61,-57,30	;2
	pb	68,-35,41	;3
	pb	19,-46,20	;4
	pb	61,-15,46	;5
	pb	0,-40,9	;6
	jump	.EB0
.A8_5A	Pointsb	7
	pb	56,-70,16	;0
	pb	20,-64,1	;1
	pb	62,-58,24	;2
	pb	70,-37,38	;3
	pb	20,-45,16	;4
	pb	62,-19,47	;5
	pb	0,-40,9	;6
	jump	.EB0
.A9A	Pointsb	7
	pb	58,-68,8	;0
	pb	22,-60,-6	;1
	pb	64,-58,18	;2
	pb	71,-39,35	;3
	pb	22,-44,13	;4
	pb	64,-23,48	;5
	pb	0,-40,9	;6
	jump	.EB0
.A9_5A	Pointsb	7
	pb	58,-64,3	;0
	pb	22,-55,-10	;1
	pb	64,-55,14	;2
	pb	71,-38,33	;3
	pb	22,-40,11	;4
	pb	64,-22,47	;5
	pb	0,-40,9	;6
	jump	.EB0
.A10A	Pointsb	7
	pb	59,-60,-2	;0
	pb	23,-50,-13	;1
	pb	65,-52,11	;2
	pb	71,-37,31	;3
	pb	23,-37,9	;4
	pb	64,-22,46	;5
	pb	0,-40,9	;6
	jump	.EB0
.A10_5A	Pointsb	7
	pb	59,-54,-5	;0
	pb	22,-46,-15	;1
	pb	64,-46,8	;2
	pb	70,-30,27	;3
	pb	22,-34,7	;4
	pb	63,-16,42	;5
	pb	0,-40,9	;6
	jump	.EB0
.A11A	Pointsb	7
	pb	59,-48,-8	;0
	pb	21,-43,-17	;1
	pb	64,-39,4	;2
	pb	70,-24,23	;3
	pb	21,-31,5	;4
	pb	62,-10,38	;5
	pb	0,-40,9	;6
	jump	.EB0
.A11_5A	Pointsb	7
	pb	57,-40,-11	;0
	pb	18,-38,-18	;1
	pb	62,-32,2	;2
	pb	67,-18,22	;3
	pb	18,-27,4	;4
	pb	59,-6,38	;5
	pb	0,-40,9	;6
	jump	.EB0
.A12A	Pointsb	7
	pb	55,-33,-14	;0
	pb	16,-32,-20	;1
	pb	60,-25,-1	;2
	pb	64,-12,21	;3
	pb	16,-23,4	;4
	pb	56,-2,39	;5
	pb	0,-40,9	;6
	jump	.EB0
.A12_5A	Pointsb	7
	pb	56,-32,-18	;0
	pb	18,-40,-18	;1
	pb	60,-22,-8	;2
	pb	62,-5,10	;3
	pb	18,-28,4	;4
	pb	54,6,28	;5
	pb	0,-40,9	;6
	jump	.EB0
.A13A	Pointsb	7
	pb	56,-31,-23	;0
	pb	21,-48,-16	;1
	pb	59,-18,-15	;2
	pb	60,2,0	;3
	pb	21,-32,3	;4
	pb	51,15,17	;5
	pb	0,-40,9	;6
	jump	.EB0
.A13_5A	Pointsb	7
	pb	58,-41,-16	;0
	pb	22,-56,-6	;1
	pb	60,-27,-11	;2
	pb	62,-4,0	;3
	pb	22,-38,10	;4
	pb	53,10,14	;5
	pb	0,-40,10	;6
.EB0

	EndPoints
boss_d_9_F
	Vizis	10
	Viz	4,1,5,-32,58,108	;0
	Viz	5,1,4,32,-58,-108	;1
	Viz	4,1,3,-20,59,110	;2
	Viz	3,1,4,20,-59,-110	;3
	Viz	4,2,1,14,-60,-111	;4
	Viz	1,2,4,-14,60,111	;5
	Viz	4,0,1,20,-59,-111	;6
	Viz	1,0,4,-20,59,111	;7
	Viz	4,1,6,122,-12,-33	;8
	Viz	6,1,4,-122,12,33	;9
	BSPInit	boss_d_9_EBSP
	BSP	9,boss_d_9_f1,.bsp2
	BSPEND
.bsp2	BSPE	boss_d_9_f3

boss_d_9_f1	Faces
	Face3	32,9,-122,12,33,6,1,4
	FendQ
boss_d_9_f3	Faces
	Face3	12,0,-32,58,108,4,1,5
	Face3	14,2,-20,59,110,4,1,3
	Face3	16,5,-14,60,111,1,2,4
	Face3	18,7,-20,59,111,1,0,4
	Face3	12,1,32,-58,-108,5,1,4
	Face3	14,3,20,-59,-110,3,1,4
	Face3	16,4,14,-60,-111,4,2,1
	Face3	18,6,20,-59,-111,4,0,1
	Face3	32,8,122,-12,-33,4,1,6
	FendQ
boss_d_9_EBSP
	EndShape

	endc

	ENDC

	IFNE	SPEED_MODE

;--Shape file ----- C:\SHED\NSHAPES\BOSS_F_1.ANM ----
	ifne	DO_HDR

BOSS_F_1
	ShapeHdr	BOSS_F_1_P,0,BOSS_F_1_F,0,0,0,0,bossf_scale,0,30,27,25,38,id_1_c,0,0,0,0,<BOSS_F_1>
boss_f_1a
	ShapeHdr	BOSS_F_1_P,0,BOSS_F_1_F,0,0,0,0,0,0,30,27,25,38,id_1_c,0,0,0,0,<BOSS_F_1>
	elseif
BOSS_F_1_P
	Pointsb	5
	pb	0,0,0	;0
	pb	-17,0,-5	;1
	pb	-20,-3,-15	;2
	pb	-6,-6,-20	;3
	pb	-6,6,-20	;4
	PointsXb	1
	pb	-20,3,-15	;5
	Pointsb	4
	pb	17,0,-5	;7
	pb	20,-3,-15	;8
	pb	6,-6,-20	;9
	pb	6,6,-20	;10
	IFEQ	SPEED_MODE
	Frames	4
	jumptab	.A0A
	jumptab	.A1A
	jumptab	.A2A
	jumptab	.A3A
	ELSEIF
	Frames	7
	jumptab	.A0A
	jumptab	.A0_5A
	jumptab	.A1A
	jumptab	.A1_5A
	jumptab	.A2A
	jumptab	.A2_5A
	jumptab	.A3A
	ENDC
.A0A	Pointsb	5
	pb	0,6,20	;11
	pb	-30,-5,-20	;12
	pb	-15,-10,-25	;13
	pb	15,-10,-25	;14
	pb	30,-5,-20	;15
	jump	.EB0
.A0_5A	Pointsb	5
	pb	0,6,20;11
	pb	-30,-9,-20;12
	pb	-14,-12,-25;13
	pb	14,-12,-25;14
	pb	29,-9,-20;15
	jump	.EB0
.A1A	Pointsb	5
	pb	0,6,20	;11
	pb	-29,-13,-20	;12
	pb	-13,-13,-25	;13
	pb	13,-13,-25	;14
	pb	28,-13,-20	;15
	jump	.EB0
.A1_5A	Pointsb	5
	pb	0,8,20;11
	pb	-27,-17,-20;12
	pb	-12,-14,-25;13
	pb	11,-14,-25;14
	pb	26,-17,-20;15
	jump	.EB0
.A2A	Pointsb	5
	pb	0,9,20	;11
	pb	-25,-21,-20	;12
	pb	-10,-15,-25	;13
	pb	9,-15,-25	;14
	pb	24,-21,-20	;15
	jump	.EB0
.A2_5A	Pointsb	5
	pb	0,11,20;11
	pb	-22,-24,-20;12
	pb	-8,-16,-25;13
	pb	8,-16,-25;14
	pb	20,-24,-20;15
	jump	.EB0
.A3A	Pointsb	5
	pb	0,13,19	;11
	pb	-19,-26,-20	;12
	pb	-7,-16,-25	;13
	pb	6,-16,-25	;14
	pb	17,-27,-20	;15
.EB0

	EndPoints
BOSS_F_1_F
	Vizis	17
	Viz	9,15,14,4,-96,-84	;133
	Viz	14,15,9,-4,96,84	;134
	Viz	13,12,3,-4,-96,-84	;135
	Viz	3,12,13,4,96,84	;136
	Viz	3,4,10,0,0,-127	;137
	Viz	11,10,4,0,-127,0	;138
	Viz	0,10,11,-113,56,17	;139
	Viz	11,4,0,113,56,17	;140
	Viz	9,0,3,0,122,36	;141
	Viz	0,7,6,-12,-120,40	;142
	Viz	9,8,7,-12,120,40	;143
	Viz	9,10,6,-43,0,-120	;144
	Viz	6,7,8,-122,0,36	;145
	Viz	2,5,4,43,0,-120	;146
	Viz	2,1,5,122,0,36	;147
	Viz	4,5,1,12,-120,40	;148
	Viz	0,1,2,12,120,40	;149
	BSPInit	BOSS_F_1_EBSP
	BSP	4,BOSS_F_1_f1,.bsp2
	BSPE	BOSS_F_1_f3
.bsp2	BSPE	BOSS_F_1_f4

BOSS_F_1_f1	Faces
	Face4	14,4,0,0,-127,3,4,10,9
	FendQ
BOSS_F_1_f3	Faces
	Face4	16,9,-12,-120,40,0,7,6,10
	Face4	14,15,12,-120,40,4,5,1,0
	Face3	27,6,-113,56,17,0,10,11
	Face3	23,7,113,56,17,11,4,0
	Face3	21,5,0,-127,0,11,10,4
	Face3	16,8,0,122,36,9,0,3
	Face4	20,10,-12,120,40,9,8,7,0
	Face4	18,11,-43,0,-120,9,10,6,8
	Face3	44,12,-122,0,36,6,7,8
	Face4	16,13,43,0,-120,2,5,4,3
	Face3	44,14,122,0,36,2,1,5
	Face4	18,16,12,120,40,0,1,2,3
	FendQ
BOSS_F_1_f4	Faces
	Face3	0,0,4,-96,-84,9,15,14
	Face3	0,1,-4,96,84,14,15,9
	Face3	0,2,-4,-96,-84,13,12,3
	Face3	0,3,4,96,84,3,12,13
	FendQ
BOSS_F_1_EBSP
	EndShape

	endc

;--Shape file ----- C:\SHED\NSHAPES\boss_f_2.anm ----
	ifne	DO_HDR

boss_f_2
	ShapeHdr	boss_f_2_P,0,boss_f_2_F,0,0,0,0,bossF_scale,0,61,75,80,86,id_1_c,0,0,0,0,<boss_f_2>
	elseif
boss_f_2_P
	PointsXb	7
	pb	-29,4,-10	;0
	pb	-29,-5,-10	;2
	pb	-8,-15,-10	;4
	pb	-29,4,0	;6
	pb	-29,-5,0	;8
	pb	-8,-15,0	;10
	pb	-8,-5,20	;12
	IFEQ	SPEED_MODE
	Frames	13
	jumptab	.A0A
	jumptab	.A1A
	jumptab	.A2A
	jumptab	.A3A
	jumptab	.A4A
	jumptab	.A5A
	jumptab	.A6A
	jumptab	.A7A
	jumptab	.A8A
	jumptab	.A9A
	jumptab	.A10A
	jumptab	.A11A
	jumptab	.A12A
	ELSEIF
	Frames	25
	jumptab	.A0A
	jumptab	.A0_5A
	jumptab	.A1A
	jumptab	.A1_5A
	jumptab	.A2A
	jumptab	.A2_5A
	jumptab	.A3A
	jumptab	.A3_5A
	jumptab	.A4A
	jumptab	.A4_5A
	jumptab	.A5A
	jumptab	.A5_5A
	jumptab	.A6A
	jumptab	.A6_5A
	jumptab	.A7A
	jumptab	.A7_5A
	jumptab	.A8A
	jumptab	.A8_5A
	jumptab	.A9A
	jumptab	.A9_5A
	jumptab	.A10A
	jumptab	.A10_5A
	jumptab	.A11A
	jumptab	.A11_5A
	jumptab	.A12A
	ENDC
.A0A	Pointsb	16
	pb	-31,4,-80	;14
	pb	31,4,-80	;15
	pb	31,-4,-80	;16
	pb	-31,-4,-80	;17
	pb	51,0,-68	;18
	pb	-51,0,-68	;19
	pb	-31,6,-58	;20
	pb	31,6,-58	;21
	pb	31,-6,-58	;22
	pb	-31,-6,-58	;23
	pb	61,0,-40	;24
	pb	-61,0,-40	;25
	pb	-31,4,0	;26
	pb	31,4,0	;27
	pb	-31,-4,0	;28
	pb	31,-4,0	;29
	PointsXb	4
	pb	-8,15,-20	;30
	pb	8,4,-10	;32
	pb	-8,15,0	;34
	pb	8,4,20	;36
	jump	.EB0
.A0_5A	Pointsb	16
	pb	-31,16,-77;14
	pb	31,-9,-78;15
	pb	31,-16,-77;16
	pb	-31,9,-78;17
	pb	51,-10,-66;18
	pb	-51,10,-66;19
	pb	-31,15,-56;20
	pb	31,-3,-58;21
	pb	31,-15,-56;22
	pb	-31,3,-58;23
	pb	61,-6,-39;24
	pb	-61,6,-39;25
	pb	-31,3,0;26
	pb	31,4,-1;27
	pb	-31,-4,-1;28
	pb	31,-3,0;29
	PointsXb	4
	pb	-8,15,-20;30
	pb	8,4,-10;32
	pb	-8,15,0;34
	pb	8,4,20;36
	jump	.EB0
.A1A	Pointsb	16
	pb	-31,29,-74	;14
	pb	31,-22,-77	;15
	pb	31,-29,-74	;16
	pb	-31,22,-77	;17
	pb	51,-21,-64	;18
	pb	-51,21,-64	;19
	pb	-31,24,-53	;20
	pb	31,-12,-57	;21
	pb	31,-24,-53	;22
	pb	-31,12,-57	;23
	pb	61,-12,-38	;24
	pb	-61,12,-38	;25
	pb	-31,2,1	;26
	pb	31,5,-2	;27
	pb	-31,-5,-2	;28
	pb	31,-2,1	;29
	PointsXb	4
	pb	-8,15,-20	;30
	pb	8,4,-10	;32
	pb	-8,15,0	;34
	pb	8,4,20	;36
	jump	.EB0
.A1_5A	Pointsb	16
	pb	-31,40,-67;14
	pb	31,-34,-71;15
	pb	31,-40,-67;16
	pb	-31,34,-71;17
	pb	51,-30,-58;18
	pb	-51,30,-58;19
	pb	-31,32,-48;20
	pb	31,-20,-53;21
	pb	31,-32,-48;22
	pb	-31,20,-53;23
	pb	61,-17,-35;24
	pb	-61,17,-35;25
	pb	-31,1,1;26
	pb	31,6,-3;27
	pb	-31,-6,-3;28
	pb	31,-1,1;29
	PointsXb	4
	pb	-8,15,-20;30
	pb	8,4,-10;32
	pb	-8,15,0;34
	pb	8,4,20;36
	jump	.EB0
.A2A	Pointsb	16
	pb	-31,51,-60	;14
	pb	31,-45,-65	;15
	pb	31,-51,-60	;16
	pb	-31,45,-65	;17
	pb	51,-40,-53	;18
	pb	-51,40,-53	;19
	pb	-31,39,-42	;20
	pb	31,-29,-49	;21
	pb	31,-39,-42	;22
	pb	-31,29,-49	;23
	pb	61,-22,-32	;24
	pb	-61,22,-32	;25
	pb	-31,0,1	;26
	pb	31,6,-4	;27
	pb	-31,-6,-4	;28
	pb	31,0,1	;29
	PointsXb	4
	pb	-8,15,-20	;30
	pb	8,4,-10	;32
	pb	-8,15,0	;34
	pb	8,4,20	;36
	jump	.EB0
.A2_5A	Pointsb	16
	pb	-31,59,-50;14
	pb	31,-54,-56;15
	pb	31,-59,-50;16
	pb	-31,54,-56;17
	pb	51,-47,-44;18
	pb	-51,47,-44;19
	pb	-31,44,-34;20
	pb	31,-36,-42;21
	pb	31,-44,-34;22
	pb	-31,36,-43;23
	pb	61,-26,-27;24
	pb	-61,26,-27;25
	pb	-31,-1,1;26
	pb	31,6,-5;27
	pb	-31,-6,-5;28
	pb	31,1,1;29
	PointsXb	4
	pb	-8,15,-20;30
	pb	8,4,-10;32
	pb	-8,15,0;34
	pb	8,4,20;36
	jump	.EB0
.A3A	Pointsb	16
	pb	-31,67,-39	;14
	pb	31,-63,-46	;15
	pb	31,-67,-39	;16
	pb	-31,63,-46	;17
	pb	51,-54,-36	;18
	pb	-51,54,-36	;19
	pb	-31,49,-26	;20
	pb	31,-43,-36	;21
	pb	31,-49,-26	;22
	pb	-31,43,-37	;23
	pb	61,-30,-22	;24
	pb	-61,30,-22	;25
	pb	-31,-2,1	;26
	pb	31,6,-6	;27
	pb	-31,-6,-6	;28
	pb	31,2,1	;29
	PointsXb	4
	pb	-8,15,-20	;30
	pb	8,4,-10	;32
	pb	-8,15,0	;34
	pb	8,4,20	;36
	jump	.EB0
.A3_5A	Pointsb	16
	pb	-31,71,-26;14
	pb	31,-68,-34;15
	pb	31,-71,-26;16
	pb	-31,68,-34;17
	pb	51,-58,-26;18
	pb	-51,58,-26;19
	pb	-31,51,-17;20
	pb	31,-47,-28;21
	pb	31,-51,-17;22
	pb	-31,47,-28;23
	pb	61,-32,-16;24
	pb	-61,32,-16;25
	pb	-31,-3,0;26
	pb	31,6,-7;27
	pb	-31,-6,-7;28
	pb	31,3,0;29
	PointsXb	4
	pb	-8,15,-20;30
	pb	8,4,-10;32
	pb	-8,15,0;34
	pb	8,4,20;36
	jump	.EB0
.A4A	Pointsb	16
	pb	-31,75,-14	;14
	pb	31,-73,-22	;15
	pb	31,-75,-14	;16
	pb	-31,73,-22	;17
	pb	51,-62,-16	;18
	pb	-51,62,-16	;19
	pb	-31,53,-8	;20
	pb	31,-51,-20	;21
	pb	31,-53,-8	;22
	pb	-31,51,-20	;23
	pb	61,-34,-11	;24
	pb	-61,34,-11	;25
	pb	-31,-4,0	;26
	pb	31,6,-8	;27
	pb	-31,-6,-8	;28
	pb	31,4,0	;29
	PointsXb	4
	pb	-8,15,-20	;30
	pb	8,4,-10	;32
	pb	-8,15,0	;34
	pb	8,4,20	;36
	jump	.EB0
.A4_5A	Pointsb	16
	pb	-31,74,-1;14
	pb	31,-74,-9;15
	pb	31,-74,-1;16
	pb	-31,74,-9;17
	pb	51,-62,-5;18
	pb	-51,62,-5;19
	pb	-31,52,1;20
	pb	31,-52,-11;21
	pb	31,-52,1;22
	pb	-31,52,-11;23
	pb	61,-34,-5;24
	pb	-61,34,-5;25
	pb	-31,-5,-1;26
	pb	31,5,-9;27
	pb	-31,-5,-9;28
	pb	31,5,-1;29
	PointsXb	4
	pb	-8,15,-20;30
	pb	8,4,-10;32
	pb	-8,15,0;34
	pb	8,4,20;36
	jump	.EB0
.A5A	Pointsb	16
	pb	-31,73,12	;14
	pb	31,-75,4	;15
	pb	31,-73,12	;16
	pb	-31,75,4	;17
	pb	51,-62,6	;18
	pb	-51,62,6	;19
	pb	-31,51,10	;20
	pb	31,-53,-2	;21
	pb	31,-51,10	;22
	pb	-31,53,-2	;23
	pb	61,-34,1	;24
	pb	-61,34,1	;25
	pb	-31,-6,-2	;26
	pb	31,4,-10	;27
	pb	-31,-4,-10	;28
	pb	31,6,-2	;29
	PointsXb	4
	pb	-8,15,-20	;30
	pb	8,4,-10	;32
	pb	-8,15,0	;34
	pb	8,4,20	;36
	jump	.EB0
.A5_5A	Pointsb	16
	pb	-31,68,24;14
	pb	31,-71,16;15
	pb	31,-68,24;16
	pb	-31,71,16;17
	pb	51,-58,16;18
	pb	-51,58,16;19
	pb	-31,47,18;20
	pb	31,-51,7;21
	pb	31,-47,18;22
	pb	-31,51,7;23
	pb	61,-32,7;24
	pb	-61,32,6;25
	pb	-31,-6,-3;26
	pb	31,3,-10;27
	pb	-31,-3,-10;28
	pb	31,6,-3;29
	PointsXb	4
	pb	-8,15,-20;30
	pb	8,4,-10;32
	pb	-8,15,0;34
	pb	8,4,20;36
	jump	.EB0
.A6A	Pointsb	16
	pb	-31,63,36	;14
	pb	31,-67,29	;15
	pb	31,-63,36	;16
	pb	-31,67,29	;17
	pb	51,-54,27	;18
	pb	-51,54,26	;19
	pb	-31,43,26	;20
	pb	31,-49,16	;21
	pb	31,-43,27	;22
	pb	-31,49,16	;23
	pb	61,-30,13	;24
	pb	-61,30,12	;25
	pb	-31,-6,-4	;26
	pb	31,2,-11	;27
	pb	-31,-2,-11	;28
	pb	31,6,-4	;29
	PointsXb	4
	pb	-8,15,-20	;30
	pb	8,4,-10	;32
	pb	-8,15,0	;34
	pb	8,4,20	;36
	jump	.EB0
.A6_5A	Pointsb	16
	pb	-31,54,46;14
	pb	31,-59,40;15
	pb	31,-54,46;16
	pb	-31,59,40;17
	pb	51,-47,35;18
	pb	-51,47,34;19
	pb	-31,36,32;20
	pb	31,-44,24;21
	pb	31,-36,33;22
	pb	-31,44,24;23
	pb	61,-26,18;24
	pb	-61,26,17;25
	pb	-31,-6,-5;26
	pb	31,1,-11;27
	pb	-31,-1,-11;28
	pb	31,6,-5;29
	PointsXb	4
	pb	-8,15,-20;30
	pb	8,4,-10;32
	pb	-8,15,0;34
	pb	8,4,20;36
	jump	.EB0
.A7A	Pointsb	16
	pb	-31,45,55	;14
	pb	31,-51,50	;15
	pb	31,-45,55	;16
	pb	-31,51,50	;17
	pb	51,-40,43	;18
	pb	-51,40,43	;19
	pb	-31,29,39	;20
	pb	31,-39,32	;21
	pb	31,-29,39	;22
	pb	-31,39,32	;23
	pb	61,-22,22	;24
	pb	-61,22,22	;25
	pb	-31,-6,-6	;26
	pb	31,0,-11	;27
	pb	-31,0,-11	;28
	pb	31,6,-6	;29
	PointsXb	4
	pb	-8,15,-20	;30
	pb	8,4,-10	;32
	pb	-8,15,0	;34
	pb	8,4,20	;36
	jump	.EB0
.A7_5A	Pointsb	16
	pb	-31,34,61;14
	pb	31,-40,57;15
	pb	31,-34,61;16
	pb	-31,40,57;17
	pb	51,-30,48;18
	pb	-51,30,48;19
	pb	-31,20,43;20
	pb	31,-32,38;21
	pb	31,-20,43;22
	pb	-31,32,38;23
	pb	61,-17,25;24
	pb	-61,17,25;25
	pb	-31,-6,-7;26
	pb	31,-1,-11;27
	pb	-31,1,-11;28
	pb	31,6,-7;29
	PointsXb	4
	pb	-8,16,-20;30
	pb	8,5,-10;32
	pb	-8,16,0;34
	pb	8,5,20;36
	jump	.EB0
.A8A	Pointsb	16
	pb	-31,22,67	;14
	pb	31,-29,64	;15
	pb	31,-22,67	;16
	pb	-31,29,64	;17
	pb	51,-21,54	;18
	pb	-51,21,54	;19
	pb	-31,12,47	;20
	pb	31,-24,43	;21
	pb	31,-12,47	;22
	pb	-31,24,43	;23
	pb	61,-12,28	;24
	pb	-61,12,28	;25
	pb	-31,-5,-8	;26
	pb	31,-2,-11	;27
	pb	-31,2,-11	;28
	pb	31,5,-8	;29
	PointsXb	4
	pb	-8,17,-20	;30
	pb	8,6,-10	;32
	pb	-8,17,0	;34
	pb	8,6,20	;36
	jump	.EB0
.A8_5A	Pointsb	16
	pb	-31,9,68;14
	pb	31,-16,67;15
	pb	31,-9,68;16
	pb	-31,16,67;17
	pb	51,-10,56;18
	pb	-51,10,56;19
	pb	-31,3,48;20
	pb	31,-15,46;21
	pb	31,-3,48;22
	pb	-31,15,46;23
	pb	61,-6,29;24
	pb	-61,6,29;25
	pb	-31,-4,-9;26
	pb	31,-3,-10;27
	pb	-31,3,-10;28
	pb	31,4,-9;29
	PointsXb	4
	pb	-8,18,-20;30
	pb	8,7,-10;32
	pb	-8,18,0;34
	pb	8,7,20;36
	jump	.EB0
.A9A	Pointsb	16
	pb	-31,-4,70	;14
	pb	31,-4,70	;15
	pb	31,4,70	;16
	pb	-31,4,70	;17
	pb	51,0,58	;18
	pb	-51,0,58	;19
	pb	-31,-6,48	;20
	pb	31,-6,48	;21
	pb	31,6,48	;22
	pb	-31,6,48	;23
	pb	61,0,30	;24
	pb	-61,0,30	;25
	pb	-31,-4,-10	;26
	pb	31,-4,-10	;27
	pb	-31,4,-10	;28
	pb	31,4,-10	;29
	PointsXb	4
	pb	-8,19,-20	;30
	pb	8,8,-10	;32
	pb	-8,19,0	;34
	pb	8,8,20	;36
	jump	.EB0
.A9_5A	Pointsb	16
	pb	-32,-6,70;14
	pb	32,-6,70;15
	pb	30,2,70;16
	pb	-30,2,70;17
	pb	50,2,58;18
	pb	-50,2,58;19
	pb	-33,-8,48;20
	pb	33,-8,48;21
	pb	30,4,48;22
	pb	-30,4,48;23
	pb	60,5,30;24
	pb	-60,5,30;25
	pb	-32,-6,-10;26
	pb	32,-6,-10;27
	pb	-30,2,-10;28
	pb	30,2,-10;29
	PointsXb	4
	pb	-8,20,-20;30
	pb	8,9,-10;32
	pb	-8,20,0;34
	pb	8,9,20;36
	jump	.EB0
.A10A	Pointsb	16
	pb	-34,-8,70	;14
	pb	34,-8,70	;15
	pb	30,-1,70	;16
	pb	-30,-1,70	;17
	pb	49,5,58	;18
	pb	-49,5,58	;19
	pb	-35,-10,48	;20
	pb	35,-10,48	;21
	pb	29,1,48	;22
	pb	-29,1,48	;23
	pb	58,10,30	;24
	pb	-58,10,30	;25
	pb	-34,-8,-10	;26
	pb	34,-8,-10	;27
	pb	-30,-1,-10	;28
	pb	30,-1,-10	;29
	PointsXb	4
	pb	-8,21,-20	;30
	pb	8,10,-10	;32
	pb	-8,21,0	;34
	pb	8,10,20	;36
	jump	.EB0
.A10_5A	Pointsb	16
	pb	-36,-9,70;14
	pb	36,-9,70;15
	pb	31,-4,70;16
	pb	-31,-4,70;17
	pb	47,7,58;18
	pb	-47,7,58;19
	pb	-38,-10,48;20
	pb	38,-10,48;21
	pb	30,-2,48;22
	pb	-30,-2,48;23
	pb	54,14,30;24
	pb	-54,14,30;25
	pb	-36,-9,-10;26
	pb	36,-9,-10;27
	pb	-31,-4,-10;28
	pb	31,-4,-10;29
	PointsXb	4
	pb	-8,22,-20;30
	pb	8,10,-10;32
	pb	-8,22,0;34
	pb	8,10,20;36
	jump	.EB0
.A11A	Pointsb	16
	pb	-39,-10,70	;14
	pb	39,-10,70	;15
	pb	32,-6,70	;16
	pb	-32,-6,70	;17
	pb	45,9,58	;18
	pb	-45,9,58	;19
	pb	-41,-11,48	;20
	pb	41,-11,48	;21
	pb	30,-5,48	;22
	pb	-30,-5,48	;23
	pb	50,17,30	;24
	pb	-50,18,30	;25
	pb	-39,-10,-10	;26
	pb	39,-10,-10	;27
	pb	-32,-6,-10	;28
	pb	32,-6,-10	;29
	PointsXb	4
	pb	-8,23,-20	;30
	pb	8,10,-10	;32
	pb	-8,23,0	;34
	pb	8,10,20	;36
	jump	.EB0
.A11_5A	Pointsb	16
	pb	-42,-10,70;14
	pb	42,-10,70;15
	pb	34,-8,70;16
	pb	-34,-8,70;17
	pb	42,10,58;18
	pb	-42,10,58;19
	pb	-44,-10,48;20
	pb	44,-10,48;21
	pb	32,-7,48;22
	pb	-32,-7,48;23
	pb	45,19,30;24
	pb	-45,20,30;25
	pb	-42,-10,-10;26
	pb	42,-10,-10;27
	pb	-34,-8,-10;28
	pb	34,-8,-10;29
	PointsXb	4
	pb	-8,24,-20;30
	pb	8,10,-10;32
	pb	-8,24,0;34
	pb	8,10,20;36
	jump	.EB0
.A12A	Pointsb	16
	pb	-44,-9,70	;14
	pb	44,-9,70	;15
	pb	36,-9,70	;16
	pb	-36,-9,70	;17
	pb	40,11,58	;18
	pb	-40,11,58	;19
	pb	-46,-9,48	;20
	pb	46,-9,48	;21
	pb	34,-9,48	;22
	pb	-34,-9,48	;23
	pb	40,21,30	;24
	pb	-40,21,30	;25
	pb	-44,-9,-10	;26
	pb	44,-9,-10	;27
	pb	-36,-9,-10	;28
	pb	36,-9,-10	;29
	PointsXb	4
	pb	-8,25,-20	;30
	pb	8,10,-10	;32
	pb	-8,25,0	;34
	pb	8,10,20	;36
.EB0

	EndPoints
boss_f_2_F
	Vizis	39
	Viz	15,18,16,-65,0,-109	;0
	Viz	29,24,27,-102,0,76	;1
	Viz	22,21,15,127,0,0	;2
	Viz	21,22,29,127,0,0	;3
	Viz	22,24,29,-22,125,4	;4
	Viz	27,24,21,-22,-125,4	;5
	Viz	26,28,23,-127,0,0	;6
	Viz	28,25,23,22,125,4	;7
	Viz	20,25,26,22,-125,4	;8
	Viz	17,19,14,65,0,-109	;9
	Viz	26,25,28,102,0,76	;10
	Viz	5,4,2,0,0,-127	;11
	Viz	32,33,30,0,85,-94	;12
	Viz	33,0,6,0,-127,0	;13
	Viz	36,7,1,0,-127,0	;14
	Viz	25,20,19,31,-123,-11	;15
	Viz	19,23,25,31,123,-11	;16
	Viz	17,14,20,-127,0,0	;17
	Viz	20,14,19,31,-123,-11	;18
	Viz	31,35,36,-127,0,0	;19
	Viz	3,1,7,-127,0,0	;20
	Viz	8,6,0,127,0,0	;21
	Viz	5,11,10,0,127,0	;22
	Viz	5,3,9,-55,115,0	;23
	Viz	10,8,2,55,115,0	;24
	Viz	33,37,34,127,0,0	;25
	Viz	19,17,23,31,123,-11	;26
	Viz	30,34,35,0,-127,0	;27
	Viz	11,13,12,0,114,57	;28
	Viz	34,37,36,0,-111,61	;29
	Viz	9,13,11,-50,105,52	;30
	Viz	18,21,24,-31,-123,-11	;31
	Viz	36,13,9,-88,0,92	;32
	Viz	10,12,8,50,105,52	;33
	Viz	18,15,21,-31,-123,-11	;34
	Viz	6,8,12,88,0,92	;35
	Viz	36,37,12,0,0,127	;36
	Viz	22,16,18,-31,123,-11	;37
	Viz	24,22,18,-31,123,-11	;38
	BSPInit	boss_f_2_EBSP
	BSP	13,boss_f_2_f1,.bsp2
	BSPE	boss_f_2_f3
.bsp2	BSP	14,boss_f_2_f4,.bsp5
	BSPEND
.bsp5	BSP	19,boss_f_2_f6,.bsp7
	BSP	21,boss_f_2_f8,.bsp9
	BSPE	boss_f_2_f10
.bsp9	BSPE	boss_f_2_f11
.bsp7	BSPE	boss_f_2_f12

boss_f_2_f1	Faces
	Face4	23,13,0,-127,0,33,0,6,37
	FendQ
boss_f_2_f3	Faces
	Face4	25,23,-55,115,0,5,3,9,11
	Face4	25,24,55,115,0,10,8,2,4
	Face3	20,4,-22,125,4,22,24,29
	Face3	20,7,22,125,4,28,25,23
	Face8	16,11,0,0,-127,5,4,2,0,33,32,1,3
	Face3	27,16,31,123,-11,19,23,25
	Face4	18,22,0,127,0,5,11,10,4
	Face3	27,26,31,123,-11,19,17,23
	Face4	20,28,0,114,57,11,13,12,10
	Face3	27,30,-50,105,52,9,13,11
	Face3	27,33,50,105,52,10,12,8
	Face3	27,37,-31,123,-11,22,16,18
	Face3	27,38,-31,123,-11,24,22,18
	FendQ
boss_f_2_f4	Faces
	Face4	23,14,0,-127,0,36,7,1,32
	FendQ
boss_f_2_f6	Faces
	Face4	18,19,-127,0,0,31,35,36,32
	FendQ
boss_f_2_f8	Faces
	Face4	21,21,127,0,0,8,6,0,2
	FendQ
boss_f_2_f10	Faces
	Face4	12,25,127,0,0,33,37,34,30
	Face4	44,12,0,85,-94,32,33,30,31
	Face4	12,27,0,-127,0,30,34,35,31
	Face4	14,29,0,-111,61,34,37,36,35
	Face4	18,36,0,0,127,36,37,12,13
	Face4	25,35,88,0,92,6,8,12,37
	FendQ
boss_f_2_f11	Faces
	Face4	18,6,-127,0,0,26,28,23,20
	Face3	14,8,22,-125,4,20,25,26
	Face3	43,9,65,0,-109,17,19,14
	Face3	16,10,102,0,76,26,25,28
	Face3	23,15,31,-123,-11,25,20,19
	Face4	25,17,-127,0,0,17,14,20,23
	Face3	23,18,31,-123,-11,20,14,19
	FendQ
boss_f_2_f12	Faces
	Face4	25,2,127,0,0,22,21,15,16
	Face4	18,3,127,0,0,21,22,29,27
	Face4	23,20,-127,0,0,3,1,7,9
	Face3	43,0,-65,0,-109,15,18,16
	Face3	18,1,-102,0,76,29,24,27
	Face3	14,5,-22,-125,4,27,24,21
	Face3	23,31,-31,-123,-11,18,21,24
	Face4	25,32,-88,0,92,36,13,9,7
	Face3	23,34,-31,-123,-11,18,15,21
	FendQ
boss_f_2_EBSP
	EndShape

	endc

;--Shape file ----- C:\SHED\NSHAPES\zaco_7.anm ----
	ifne	DO_HDR

zaco_7
	ShapeHdr	zaco_7_P,0,zaco_7_F,0,0,0,0,0,0,58,37,28,59,id_0_c,0,0,0,0,<zaco_7>
	elseif
zaco_7_P
	Pointsb	4
	pb	0,15,-15	;0
	pb	0,-15,-15	;1
	pb	0,15,5	;2
	pb	0,-5,15	;3
	PointsXb	1
	pb	10,5,15	;4
	IFEQ	SPEED_MODE
	Frames	10
	jumptab	.A0A
	jumptab	.A1A
	jumptab	.A2A
	jumptab	.A3A
	jumptab	.A4A
	jumptab	.A5A
	jumptab	.A6A
	jumptab	.A7A
	jumptab	.A8A
	jumptab	.A9A
	ELSEIF
	Frames	19
	jumptab	.A0A
	jumptab	.A0_5A
	jumptab	.A1A
	jumptab	.A1_5A
	jumptab	.A2A
	jumptab	.A2_5A
	jumptab	.A3A
	jumptab	.A3_5A
	jumptab	.A4A
	jumptab	.A4_5A
	jumptab	.A5A
	jumptab	.A5_5A
	jumptab	.A6A
	jumptab	.A6_5A
	jumptab	.A7A
	jumptab	.A7_5A
	jumptab	.A8A
	jumptab	.A8_5A
	jumptab	.A9A
	ENDC
.A0A	Pointsb	1
	pb	0,-28,3	;6
	PointsXb	4
	pb	21,5,-10	;7
	pb	26,6,-4	;9
	pb	10,-17,5	;11
	pb	10,-17,15	;13
	jump	.EB0
.A0_5A	Pointsb	1
	pb	0,-30,2;6
	PointsXb	4
	pb	21,6,-10;7
	pb	30,4,-4;9
	pb	12,-17,5;11
	pb	12,-17,15;13
	jump	.EB0
.A1A	Pointsb	1
	pb	0,-31,0	;6
	PointsXb	4
	pb	21,7,-10	;7
	pb	34,2,-4	;9
	pb	14,-17,5	;11
	pb	14,-17,15	;13
	jump	.EB0
.A1_5A	Pointsb	1
	pb	0,-32,-2;6
	PointsXb	4
	pb	20,8,-10;7
	pb	37,1,-4;9
	pb	16,-16,5;11
	pb	16,-16,15;13
	jump	.EB0
.A2A	Pointsb	1
	pb	0,-33,-3	;6
	PointsXb	4
	pb	20,9,-10	;7
	pb	40,0,-4	;9
	pb	17,-16,5	;11
	pb	17,-16,15	;13
	jump	.EB0
.A2_5A	Pointsb	1
	pb	0,-34,-4;6
	PointsXb	4
	pb	20,10,-10;7
	pb	43,-1,-4;9
	pb	19,-15,5;11
	pb	19,-15,15;13
	jump	.EB0
.A3A	Pointsb	1
	pb	0,-35,-6	;6
	PointsXb	4
	pb	19,10,-10	;7
	pb	46,-2,-4	;9
	pb	21,-14,5	;11
	pb	21,-14,15	;13
	jump	.EB0
.A3_5A	Pointsb	1
	pb	0,-36,-8;6
	PointsXb	4
	pb	18,11,-10;7
	pb	48,-3,-4;9
	pb	22,-13,5;11
	pb	22,-13,15;13
	jump	.EB0
.A4A	Pointsb	1
	pb	0,-36,-10	;6
	PointsXb	4
	pb	18,12,-10	;7
	pb	51,-4,-4	;9
	pb	24,-12,5	;11
	pb	24,-12,15	;13
	jump	.EB0
.A4_5A	Pointsb	1
	pb	0,-36,-12;6
	PointsXb	4
	pb	18,12,-10;7
	pb	53,-6,-4;9
	pb	26,-10,5;11
	pb	26,-10,15;13
	jump	.EB0
.A5A	Pointsb	1
	pb	0,-37,-13	;6
	PointsXb	4
	pb	17,13,-10	;7
	pb	55,-7,-4	;9
	pb	27,-9,5	;11
	pb	27,-9,15	;13
	jump	.EB0
.A5_5A	Pointsb	1
	pb	0,-37,-15;6
	PointsXb	4
	pb	16,14,-10;7
	pb	56,-8,-4;9
	pb	28,-8,5;11
	pb	28,-8,15;13
	jump	.EB0
.A6A	Pointsb	1
	pb	0,-37,-17	;6
	PointsXb	4
	pb	15,14,-10	;7
	pb	57,-8,-4	;9
	pb	29,-6,5	;11
	pb	29,-6,15	;13
	jump	.EB0
.A6_5A	Pointsb	1
	pb	0,-36,-19;6
	PointsXb	4
	pb	14,14,-10;7
	pb	58,-8,-4;9
	pb	30,-4,5;11
	pb	30,-4,15;13
	jump	.EB0
.A7A	Pointsb	1
	pb	0,-36,-21	;6
	PointsXb	4
	pb	14,15,-10	;7
	pb	58,-9,-4	;9
	pb	31,-2,5	;11
	pb	31,-1,15	;13
	jump	.EB0
.A7_5A	Pointsb	1
	pb	0,-34,-24;6
	PointsXb	4
	pb	13,16,-10;7
	pb	58,-10,-4;9
	pb	32,0,5;11
	pb	32,2,15;13
	jump	.EB0
.A8A	Pointsb	1
	pb	0,-33,-28	;6
	PointsXb	4
	pb	12,16,-10	;7
	pb	57,-10,-4	;9
	pb	32,1,5	;11
	pb	32,5,15	;13
	jump	.EB0
.A8_5A	Pointsb	1
	pb	0,-34,-26;6
	PointsXb	4
	pb	11,16,-10;7
	pb	56,-10,-4;9
	pb	32,3,5;11
	pb	32,8,15;13
	jump	.EB0
.A9A	Pointsb	1
	pb	0,-35,-25	;6
	PointsXb	4
	pb	10,16,-10	;7
	pb	55,-11,-4	;9
	pb	32,5,5	;11
	pb	32,11,15	;13
.EB0

	EndPoints
zaco_7_F
	Vizis	20
	Viz	5,8,12,116,2,51	;0
	Viz	5,12,14,125,-23,0	;1
	Viz	10,12,14,87,92,0	;2
	Viz	14,12,10,-87,-92,0	;3
	Viz	12,8,5,-116,-2,-51	;5
	Viz	14,12,5,-125,23,0	;6
	Viz	11,7,4,-116,2,51	;7
	Viz	13,11,4,-125,-23,0	;8
	Viz	13,11,9,-87,92,0	;9
	Viz	9,11,13,87,-92,0	;10
	Viz	4,7,11,116,-2,-51	;11
	Viz	4,11,13,125,23,0	;12
	Viz	4,1,0,-120,0,-40	;13
	Viz	0,1,5,120,0,-40	;14
	Viz	5,2,0,90,-90,0	;15
	Viz	0,2,4,-90,-90,0	;16
	Viz	4,2,5,0,-90,90	;17
	Viz	1,3,5,87,87,29	;18
	Viz	4,3,1,-87,87,29	;19
	Viz	5,3,4,0,0,127	;20
	BSPInit	zaco_7_EBSP
	BSP	0,zaco_7_f1,.bsp2
	BSP	6,zaco_7_f3,.bsp4
	BSPE	zaco_7_f5
.bsp4	BSPE	zaco_7_f6
.bsp2	BSPE	zaco_7_f7

zaco_7_f1	Faces
	Face3	10,0,116,2,51,5,8,12
	FendQ
zaco_7_f3	Faces
	Face3	10,6,-116,2,51,11,7,4
	FendQ
zaco_7_f5	Faces
	Face3	21,17,87,87,29,1,3,5
	Face3	23,18,-87,87,29,4,3,1
	Face2	43,-1,0,0,0,6,1
	Face3	16,12,-120,0,-40,4,1,0
	Face3	12,13,120,0,-40,0,1,5
	Face3	23,14,90,-90,0,5,2,0
	Face3	23,15,-90,-90,0,0,2,4
	Face3	21,16,0,-90,90,4,2,5
	Face3	44,19,0,0,127,5,3,4
	FendQ
zaco_7_f6	Faces
	Face3	10,7,-125,-23,0,13,11,4
	Face3	21,9,87,-92,0,9,11,13
	Face3	21,8,-87,92,0,13,11,9
	Face3	14,10,116,-2,-51,4,7,11
	Face3	12,11,125,23,0,4,11,13
	FendQ
zaco_7_f7	Faces
	Face3	10,1,125,-23,0,5,12,14
	Face3	21,3,-87,-92,0,14,12,10
	Face3	21,2,87,92,0,10,12,14
	Face3	12,4,-116,-2,-51,12,8,5
	Face3	12,5,-125,23,0,14,12,5
	FendQ
zaco_7_EBSP
	EndShape

	endc

;--Shape file ----- C:\SHED\NSHAPES\zaco_1.anm ----
	ifne	DO_HDR

zaco_1
	ShapeHdr	zaco_1_P,0,zaco_1_F,0,0,0,0,0,0,45,40,40,45,id_0_c,0,0,0,0,<zaco_1>
	elseif
zaco_1_P
	Pointsb	6
	pb	0,10,-15	;0
	pb	0,-10,-15	;1
	pb	0,30,0	;2
	pb	0,-30,0	;3
	pb	0,10,15	;4
	pb	0,-10,15	;5
	PointsXb	4
	pb	5,0,-15	;6
	pb	-15,0,0	;8
	pb	-45,0,0	;10
	pb	-5,0,15	;12
	IFEQ	SPEED_MODE
	Frames	12
	jumptab	.A0A
	jumptab	.A1A
	jumptab	.A2A
	jumptab	.A3A
	jumptab	.A4A
	jumptab	.A5A
	jumptab	.A6A
	jumptab	.A7A
	jumptab	.A8A
	jumptab	.A9A
	jumptab	.A10A
	jumptab	.A11A
	ELSEIF
	Frames	24
	jumptab	.A0A
	jumptab	.A0_5A
	jumptab	.A1A
	jumptab	.A1_5A
	jumptab	.A2A
	jumptab	.A2_5A
	jumptab	.A3A
	jumptab	.A3_5A
	jumptab	.A4A
	jumptab	.A4_5A
	jumptab	.A5A
	jumptab	.A5_5A
	jumptab	.A6A
	jumptab	.A6_5A
	jumptab	.A7A
	jumptab	.A7_5A
	jumptab	.A8A
	jumptab	.A8_5A
	jumptab	.A9A
	jumptab	.A9_5A
	jumptab	.A10A
	jumptab	.A10_5A
	jumptab	.A11A
	jumptab	.A11_5A
	ENDC
.A0A	PointsXb	4
	pb	-25,-10,0	;14
	pb	-5,0,-40	;16
	pb	-5,0,40	;18
	pb	-25,10,0	;20
	jump	.EB0
.A0_5A	PointsXb	4
	pb	-25,-10,2;14
	pb	-5,-10,-38;16
	pb	-5,10,38;18
	pb	-25,10,-2;20
	jump	.EB0
.A1A	PointsXb	4
	pb	-25,-9,5	;14
	pb	-5,-20,-35	;16
	pb	-5,20,35	;18
	pb	-25,9,-5	;20
	jump	.EB0
.A1_5A	PointsXb	4
	pb	-25,-7,7;14
	pb	-5,-28,-28;16
	pb	-5,28,28;18
	pb	-25,7,-7;20
	jump	.EB0
.A2A	PointsXb	4
	pb	-25,-5,9	;14
	pb	-5,-35,-20	;16
	pb	-5,35,20	;18
	pb	-25,5,-9	;20
	jump	.EB0
.A2_5A	PointsXb	4
	pb	-25,-2,10;14
	pb	-5,-38,-10;16
	pb	-5,38,10;18
	pb	-25,2,-10;20
	jump	.EB0
.A3A	PointsXb	4
	pb	-25,0,10	;14
	pb	-5,-40,0	;16
	pb	-5,40,0	;18
	pb	-25,0,-10	;20
	jump	.EB0
.A3_5A	PointsXb	4
	pb	-25,2,10;14
	pb	-5,-38,10;16
	pb	-5,38,-10;18
	pb	-25,-2,-10;20
	jump	.EB0
.A4A	PointsXb	4
	pb	-25,5,9	;14
	pb	-5,-35,20	;16
	pb	-5,35,-20	;18
	pb	-25,-5,-9	;20
	jump	.EB0
.A4_5A	PointsXb	4
	pb	-25,7,7;14
	pb	-5,-28,28;16
	pb	-5,28,-28;18
	pb	-25,-7,-7;20
	jump	.EB0
.A5A	PointsXb	4
	pb	-25,9,5	;14
	pb	-5,-20,35	;16
	pb	-5,20,-35	;18
	pb	-25,-9,-5	;20
	jump	.EB0
.A5_5A	PointsXb	4
	pb	-25,10,2;14
	pb	-5,-10,38;16
	pb	-5,10,-38;18
	pb	-25,-10,-2;20
	jump	.EB0
.A6A	PointsXb	4
	pb	-25,10,0	;14
	pb	-5,0,40	;16
	pb	-5,0,-40	;18
	pb	-25,-10,0	;20
	jump	.EB0
.A6_5A	PointsXb	4
	pb	-25,10,-2;14
	pb	-5,10,38;16
	pb	-5,-10,-38;18
	pb	-25,-10,2;20
	jump	.EB0
.A7A	PointsXb	4
	pb	-25,9,-5	;14
	pb	-5,20,35	;16
	pb	-5,-20,-35	;18
	pb	-25,-9,5	;20
	jump	.EB0
.A7_5A	PointsXb	4
	pb	-25,7,-7;14
	pb	-5,28,28;16
	pb	-5,-28,-28;18
	pb	-25,-7,7;20
	jump	.EB0
.A8A	PointsXb	4
	pb	-25,5,-9	;14
	pb	-5,35,20	;16
	pb	-5,-35,-20	;18
	pb	-25,-5,9	;20
	jump	.EB0
.A8_5A	PointsXb	4
	pb	-25,2,-10;14
	pb	-5,38,10;16
	pb	-5,-38,-10;18
	pb	-25,-2,10;20
	jump	.EB0
.A9A	PointsXb	4
	pb	-25,0,-10	;14
	pb	-5,40,0	;16
	pb	-5,-40,0	;18
	pb	-25,0,10	;20
	jump	.EB0
.A9_5A	PointsXb	4
	pb	-25,-2,-10;14
	pb	-5,38,-10;16
	pb	-5,-38,10;18
	pb	-25,2,10;20
	jump	.EB0
.A10A	PointsXb	4
	pb	-25,-5,-9	;14
	pb	-5,35,-20	;16
	pb	-5,-35,20	;18
	pb	-25,5,9	;20
	jump	.EB0
.A10_5A	PointsXb	4
	pb	-25,-7,-7;14
	pb	-5,28,-28;16
	pb	-5,-28,28;18
	pb	-25,7,7;20
	jump	.EB0
.A11A	PointsXb	4
	pb	-25,-9,-5	;14
	pb	-5,20,-35	;16
	pb	-5,-20,35	;18
	pb	-25,9,5	;20
	jump	.EB0
.A11_5A	PointsXb	4
	pb	-25,-10,-2;14
	pb	-5,10,-38;16
	pb	-5,-10,38;18
	pb	-25,10,2;20
.EB0

	EndPoints
zaco_1_F
	Vizis	22
	Viz	17,21,11,-52,-52,104	;0
	Viz	11,15,17,-52,-52,-104	;1
	Viz	11,21,19,-52,52,104	;2
	Viz	19,15,11,-52,52,-104	;3
	Viz	10,20,16,52,-52,104	;4
	Viz	16,14,10,52,-52,-104	;5
	Viz	18,20,10,52,52,104	;6
	Viz	10,14,18,52,52,-104	;7
	Viz	2,9,6,-98,-49,-65	;8
	Viz	0,7,8,98,-49,-65	;9
	Viz	4,13,9,-98,-49,65	;10
	Viz	2,8,12,98,-49,65	;11
	Viz	6,1,7,0,0,-127	;12
	Viz	1,6,9,-98,49,-65	;13
	Viz	3,8,7,98,49,-65	;14
	Viz	4,12,5,0,0,127	;15
	Viz	3,9,13,-98,49,65	;16
	Viz	5,12,8,98,49,65	;17
	Viz	16,20,14,-114,57,0	;18
	Viz	14,20,18,-114,-57,0	;19
	Viz	15,21,17,114,57,0	;20
	Viz	19,21,15,114,-57,0	;21

zaco_1_f1	Faces
	Face4	14,8,-98,-49,-65,2,9,6,0
	Face4	12,9,98,-49,-65,0,7,8,2
	Face4	16,10,-98,-49,65,4,13,9,2
	Face4	14,11,98,-49,65,2,8,12,4
	Face4	18,13,-98,49,-65,1,6,9,3
	Face4	16,14,98,49,-65,3,8,7,1
	Face4	20,16,-98,49,65,3,9,13,5
	Face4	18,17,98,49,65,5,12,8,3
	Face3	25,18,-114,57,0,16,20,14
	Face3	27,19,-114,-57,0,14,20,18
	Face3	25,20,114,57,0,15,21,17
	Face3	23,21,114,-57,0,19,21,15
	Face3	14,0,-52,-52,104,17,21,11
	Face3	18,1,-52,-52,-104,11,15,17
	Face3	16,2,-52,52,104,11,21,19
	Face3	20,3,-52,52,-104,19,15,11
	Face3	12,4,52,-52,104,10,20,16
	Face3	14,5,52,-52,-104,16,14,10
	Face3	14,6,52,52,104,18,20,10
	Face3	16,7,52,52,-104,10,14,18
	Face4	43,12,0,0,-127,6,1,7,0
	Face4	43,15,0,0,127,4,12,5,13
	Fend
	EndShape

	endc
	ENDC

	IFNE	SPEED_MODE
;--Shape file ----- C:\SHED\SHAPES5\KICHI_4.ANM ----
	ifne	DO_HDR
k_door
kichi_4
	ShapeHdr	kichi_4_P,0,kichi_4_F,0,0,0,0,1,0,32,64,5,72,id_0_c,0,0,0,0,<kichi_4>
	elseif
kichi_4_P
	PointsXb	2
	pb	32,0,-5	;0
	pb	32,-64,-5	;2
	Frames	19
	jumptab	.A0A
	jumptab	.A0_5A
	jumptab	.A1A
	jumptab	.A1_5A
	jumptab	.A2A
	jumptab	.A2_5A
	jumptab	.A3A
	jumptab	.A3_5A
	jumptab	.A4A
	jumptab	.A4_5A
	jumptab	.A5A
	jumptab	.A5_5A
	jumptab	.A6A
	jumptab	.A6_5A
	jumptab	.A7A
	jumptab	.A7_5A
	jumptab	.A8A
	jumptab	.A8_5A
	jumptab	.A9A
.A0A	PointsXb	20
	pb	5,0,-5	;4
	pb	5,-22,-5	;6
	pb	15,-32,-5	;8
	pb	32,-32,-5	;10
	pb	-5,-22,-5	;12
	pb	-15,-32,-5	;14
	pb	-32,-32,-5	;16
	pb	5,0,0	;18
	pb	5,-22,0	;20
	pb	15,-32,0	;22
	pb	-32,-32,0	;24
	pb	-15,-42,0	;26
	pb	32,-42,0	;28
	pb	5,-52,0	;30
	pb	-5,-22,0	;32
	pb	-15,-32,0	;34
	pb	-32,-32,0	;36
	pb	-15,-42,5	;38
	pb	-32,-42,5	;40
	pb	5,-52,5	;42
	jump	.EB0
.A0_5A	PointsXb	20
	pb	5,0,-5	;4
	pb	5,-19,-5	;6
	pb	15,-29,-5	;8
	pb	32,-29,-5	;10
	pb	-5,-24,-5	;12
	pb	-15,-34,-5	;14
	pb	-32,-34,-5	;16
	pb	5,0,0	;18
	pb	5,-19,0	;20
	pb	15,-29,0	;22
	pb	-32,-29,0	;24
	pb	-15,-39,0	;26
	pb	32,-39,0	;28
	pb	5,-49,0	;30
	pb	-5,-24,0	;32
	pb	-15,-34,0	;34
	pb	-32,-34,0	;36
	pb	-15,-39,5	;38
	pb	-32,-39,5	;40
	pb	5,-49,5	;42
	jump	.EB0
.A1A	PointsXb	20
	pb	5,0,-5	;4
	pb	5,-17,-5	;6
	pb	15,-27,-5	;8
	pb	32,-27,-5	;10
	pb	-5,-27,-5	;12
	pb	-15,-37,-5	;14
	pb	-32,-37,-5	;16
	pb	5,0,0	;18
	pb	5,-17,0	;20
	pb	15,-27,0	;22
	pb	-32,-27,0	;24
	pb	-15,-37,0	;26
	pb	32,-37,0	;28
	pb	5,-47,0	;30
	pb	-5,-27,0	;32
	pb	-15,-37,0	;34
	pb	-32,-37,0	;36
	pb	-15,-37,5	;38
	pb	-32,-37,5	;40
	pb	5,-47,5	;42
	jump	.EB0
.A1_5A	PointsXb	20
	pb	5,0,-5	;4
	pb	5,-14,-5	;6
	pb	15,-24,-5	;8
	pb	32,-24,-5	;10
	pb	-5,-29,-5	;12
	pb	-15,-39,-5	;14
	pb	-32,-39,-5	;16
	pb	5,0,0	;18
	pb	5,-14,0	;20
	pb	15,-24,0	;22
	pb	-32,-24,0	;24
	pb	-15,-34,0	;26
	pb	32,-34,0	;28
	pb	5,-44,0	;30
	pb	-5,-29,0	;32
	pb	-15,-39,0	;34
	pb	-32,-39,0	;36
	pb	-15,-34,5	;38
	pb	-32,-34,5	;40
	pb	5,-44,5	;42
	jump	.EB0
.A2A	PointsXb	20
	pb	5,0,-5	;4
	pb	5,-12,-5	;6
	pb	15,-22,-5	;8
	pb	32,-22,-5	;10
	pb	-5,-32,-5	;12
	pb	-15,-42,-5	;14
	pb	-32,-42,-5	;16
	pb	5,0,0	;18
	pb	5,-12,0	;20
	pb	15,-22,0	;22
	pb	-32,-22,0	;24
	pb	-15,-32,0	;26
	pb	32,-32,0	;28
	pb	5,-42,0	;30
	pb	-5,-32,0	;32
	pb	-15,-42,0	;34
	pb	-32,-42,0	;36
	pb	-15,-32,5	;38
	pb	-32,-32,5	;40
	pb	5,-42,5	;42
	jump	.EB0
.A2_5A	PointsXb	20
	pb	5,0,-5	;4
	pb	5,-9,-5	;6
	pb	15,-19,-5	;8
	pb	32,-19,-5	;10
	pb	-5,-34,-5	;12
	pb	-15,-44,-5	;14
	pb	-32,-44,-5	;16
	pb	5,0,0	;18
	pb	5,-9,0	;20
	pb	15,-19,0	;22
	pb	-32,-19,0	;24
	pb	-15,-29,0	;26
	pb	32,-29,0	;28
	pb	5,-39,0	;30
	pb	-5,-34,0	;32
	pb	-15,-44,0	;34
	pb	-32,-44,0	;36
	pb	-15,-29,5	;38
	pb	-32,-29,5	;40
	pb	5,-39,5	;42
	jump	.EB0
.A3A	PointsXb	20
	pb	5,0,-5	;4
	pb	5,-7,-5	;6
	pb	15,-17,-5	;8
	pb	32,-17,-5	;10
	pb	-5,-37,-5	;12
	pb	-15,-47,-5	;14
	pb	-32,-47,-5	;16
	pb	5,0,0	;18
	pb	5,-7,0	;20
	pb	15,-17,0	;22
	pb	-32,-17,0	;24
	pb	-15,-27,0	;26
	pb	32,-27,0	;28
	pb	5,-37,0	;30
	pb	-5,-37,0	;32
	pb	-15,-47,0	;34
	pb	-32,-47,0	;36
	pb	-15,-27,5	;38
	pb	-32,-27,5	;40
	pb	5,-37,5	;42
	jump	.EB0
.A3_5A	PointsXb	20
	pb	5,0,-5	;4
	pb	5,-4,-5	;6
	pb	15,-14,-5	;8
	pb	32,-14,-5	;10
	pb	-5,-39,-5	;12
	pb	-15,-49,-5	;14
	pb	-32,-49,-5	;16
	pb	5,0,0	;18
	pb	5,-4,0	;20
	pb	15,-14,0	;22
	pb	-32,-14,0	;24
	pb	-15,-24,0	;26
	pb	32,-24,0	;28
	pb	5,-34,0	;30
	pb	-5,-39,0	;32
	pb	-15,-49,0	;34
	pb	-32,-49,0	;36
	pb	-15,-24,5	;38
	pb	-32,-24,5	;40
	pb	5,-34,5	;42
	jump	.EB0
.A4A	PointsXb	20
	pb	5,0,-5	;4
	pb	5,-2,-5	;6
	pb	15,-12,-5	;8
	pb	32,-12,-5	;10
	pb	-5,-42,-5	;12
	pb	-15,-52,-5	;14
	pb	-32,-52,-5	;16
	pb	5,0,0	;18
	pb	5,-2,0	;20
	pb	15,-12,0	;22
	pb	-32,-12,0	;24
	pb	-15,-22,0	;26
	pb	32,-22,0	;28
	pb	5,-32,0	;30
	pb	-5,-42,0	;32
	pb	-15,-52,0	;34
	pb	-32,-52,0	;36
	pb	-15,-22,5	;38
	pb	-32,-22,5	;40
	pb	5,-32,5	;42
	jump	.EB0
.A4_5A	PointsXb	20
	pb	6,0,-5	;4
	pb	6,-1,-5	;6
	pb	15,-9,-5	;8
	pb	32,-9,-5	;10
	pb	-5,-44,-5	;12
	pb	-15,-54,-5	;14
	pb	-32,-54,-5	;16
	pb	6,0,0	;18
	pb	6,-1,0	;20
	pb	15,-9,0	;22
	pb	-32,-9,0	;24
	pb	-15,-19,0	;26
	pb	32,-19,0	;28
	pb	5,-29,0	;30
	pb	-5,-44,0	;32
	pb	-15,-54,0	;34
	pb	-32,-54,0	;36
	pb	-15,-19,5	;38
	pb	-32,-19,5	;40
	pb	5,-29,5	;42
	jump	.EB0
.A5A	PointsXb	20
	pb	8,0,-5	;4
	pb	8,0,-5	;6
	pb	15,-7,-5	;8
	pb	32,-7,-5	;10
	pb	-5,-47,-5	;12
	pb	-15,-57,-5	;14
	pb	-32,-57,-5	;16
	pb	8,0,0	;18
	pb	8,0,0	;20
	pb	15,-7,0	;22
	pb	-32,-7,0	;24
	pb	-15,-17,0	;26
	pb	32,-17,0	;28
	pb	5,-27,0	;30
	pb	-5,-47,0	;32
	pb	-15,-57,0	;34
	pb	-32,-57,0	;36
	pb	-15,-17,5	;38
	pb	-32,-17,5	;40
	pb	5,-27,5	;42
	jump	.EB0
.A5_5A	PointsXb	20
	pb	10,0,-5	;4
	pb	10,0,-5	;6
	pb	15,-4,-5	;8
	pb	32,-4,-5	;10
	pb	-5,-49,-5	;12
	pb	-15,-59,-5	;14
	pb	-32,-59,-5	;16
	pb	10,0,0	;18
	pb	10,0,0	;20
	pb	15,-4,0	;22
	pb	-32,-4,0	;24
	pb	-15,-14,0	;26
	pb	32,-14,0	;28
	pb	5,-24,0	;30
	pb	-5,-49,0	;32
	pb	-15,-59,0	;34
	pb	-32,-59,0	;36
	pb	-15,-14,5	;38
	pb	-32,-14,5	;40
	pb	5,-24,5	;42
	jump	.EB0
.A6A	PointsXb	20
	pb	13,0,-5	;4
	pb	13,0,-5	;6
	pb	15,-2,-5	;8
	pb	32,-2,-5	;10
	pb	-5,-52,-5	;12
	pb	-15,-62,-5	;14
	pb	-32,-62,-5	;16
	pb	13,0,0	;18
	pb	13,0,0	;20
	pb	15,-2,0	;22
	pb	-32,-2,0	;24
	pb	-15,-12,0	;26
	pb	32,-12,0	;28
	pb	5,-22,0	;30
	pb	-5,-52,0	;32
	pb	-15,-62,0	;34
	pb	-32,-62,0	;36
	pb	-15,-12,5	;38
	pb	-32,-12,5	;40
	pb	5,-22,5	;42
	jump	.EB0
.A6_5A	PointsXb	20
	pb	14,0,-5	;4
	pb	14,0,-5	;6
	pb	15,-1,-5	;8
	pb	32,-1,-5	;10
	pb	-5,-54,-5	;12
	pb	-13,-63,-5	;14
	pb	-32,-63,-5	;16
	pb	14,0,0	;18
	pb	14,0,0	;20
	pb	15,-1,0	;22
	pb	-32,-1,0	;24
	pb	-15,-9,0	;26
	pb	32,-9,0	;28
	pb	5,-19,0	;30
	pb	-5,-54,0	;32
	pb	-13,-63,0	;34
	pb	-32,-63,0	;36
	pb	-15,-9,5	;38
	pb	-32,-9,5	;40
	pb	5,-19,5	;42
	jump	.EB0
.A7A	PointsXb	20
	pb	15,0,-5	;4
	pb	15,0,-5	;6
	pb	15,0,-5	;8
	pb	32,0,-5	;10
	pb	-5,-57,-5	;12
	pb	-12,-64,-5	;14
	pb	-32,-64,-5	;16
	pb	15,0,0	;18
	pb	15,0,0	;20
	pb	15,0,0	;22
	pb	-32,0,0	;24
	pb	-15,-7,0	;26
	pb	32,-7,0	;28
	pb	5,-17,0	;30
	pb	-5,-57,0	;32
	pb	-12,-64,0	;34
	pb	-32,-64,0	;36
	pb	-15,-7,5	;38
	pb	-32,-7,5	;40
	pb	5,-17,5	;42
	jump	.EB0
.A7_5A	PointsXb	20
	pb	15,0,-5	;4
	pb	15,0,-5	;6
	pb	15,0,-5	;8
	pb	32,0,-5	;10
	pb	-5,-59,-5	;12
	pb	-9,-64,-5	;14
	pb	-32,-64,-5	;16
	pb	15,0,0	;18
	pb	15,0,0	;20
	pb	15,0,0	;22
	pb	-32,0,0	;24
	pb	-15,-4,0	;26
	pb	32,-4,0	;28
	pb	5,-14,0	;30
	pb	-5,-59,0	;32
	pb	-9,-64,0	;34
	pb	-32,-64,0	;36
	pb	-15,-4,5	;38
	pb	-32,-4,5	;40
	pb	5,-14,5	;42
	jump	.EB0
.A8A	PointsXb	20
	pb	15,0,-5	;4
	pb	15,0,-5	;6
	pb	15,0,-5	;8
	pb	32,0,-5	;10
	pb	-5,-62,-5	;12
	pb	-7,-64,-5	;14
	pb	-32,-64,-5	;16
	pb	15,0,0	;18
	pb	15,0,0	;20
	pb	15,0,0	;22
	pb	-32,0,0	;24
	pb	-15,-2,0	;26
	pb	32,-2,0	;28
	pb	5,-12,0	;30
	pb	-5,-62,0	;32
	pb	-7,-64,0	;34
	pb	-32,-64,0	;36
	pb	-15,-2,5	;38
	pb	-32,-2,5	;40
	pb	5,-12,5	;42
	jump	.EB0
.A8_5A	PointsXb	20
	pb	13,0,-5	;4
	pb	13,0,-5	;6
	pb	13,0,-5	;8
	pb	32,0,-5	;10
	pb	-2,-63,-5	;12
	pb	-3,-64,-5	;14
	pb	-32,-64,-5	;16
	pb	13,0,0	;18
	pb	13,0,0	;20
	pb	13,0,0	;22
	pb	-32,0,0	;24
	pb	-13,-1,0	;26
	pb	32,-1,0	;28
	pb	5,-9,0	;30
	pb	-2,-63,0	;32
	pb	-3,-64,0	;34
	pb	-32,-64,0	;36
	pb	-13,-1,5	;38
	pb	-32,-1,5	;40
	pb	5,-9,5	;42
	jump	.EB0
.A9A	PointsXb	20
	pb	12,0,-5	;4
	pb	12,0,-5	;6
	pb	12,0,-5	;8
	pb	32,0,-5	;10
	pb	0,-64,-5	;12
	pb	0,-64,-5	;14
	pb	-32,-64,-5	;16
	pb	12,0,0	;18
	pb	12,0,0	;20
	pb	12,0,0	;22
	pb	-32,0,0	;24
	pb	-12,0,0	;26
	pb	32,0,0	;28
	pb	5,-7,0	;30
	pb	0,-64,0	;32
	pb	0,-64,0	;34
	pb	-32,-64,0	;36
	pb	-12,0,5	;38
	pb	-32,0,5	;40
	pb	5,-7,5	;42
.EB0

	EndPoints
kichi_4_F
	Vizis	23
	Viz	14,12,13,0,0,-127	;0
	Viz	2,3,16,0,0,-127	;1
	Viz	11,9,23,0,127,0	;2
	Viz	5,19,21,-127,0,0	;3
	Viz	7,21,23,-90,90,0	;4
	Viz	1,5,7,0,0,-127	;5
	Viz	6,20,18,127,0,0	;6
	Viz	8,22,20,90,90,0	;7
	Viz	25,22,8,0,127,0	;8
	Viz	10,8,6,0,0,-127	;9
	Viz	15,35,37,0,-127,0	;10
	Viz	16,36,34,0,-127,0	;11
	Viz	15,13,33,-90,-90,0	;12
	Viz	34,32,12,90,-90,0	;13
	Viz	13,12,32,0,-127,0	;14
	Viz	28,41,39,0,127,0	;15
	Viz	26,38,40,0,127,0	;16
	Viz	31,43,38,90,90,0	;17
	Viz	27,39,42,-90,90,0	;18
	Viz	42,43,31,0,127,0	;19
	Viz	24,25,28,0,0,-127	;20
	Viz	20,21,19,0,0,-127	;21
	Viz	30,31,26,0,0,-127	;22
	BSPInit	kichi_4_EBSP
	BSP	14,kichi_4_f1,.bsp2
	BSPE	kichi_4_f3
.bsp2	BSP	20,kichi_4_f4,.bsp5
	BSPEND
.bsp5	BSP	22,kichi_4_f6,.bsp7
	BSPEND
.bsp7	BSP	2,kichi_4_f8,.bsp9
	BSPE	kichi_4_f10
.bsp9	BSP	15,kichi_4_f11,.bsp12
	BSPE	kichi_4_f13
.bsp12	BSPE	kichi_4_f14

kichi_4_f1	Faces
	Face4	14,14,0,-127,0,13,12,32,33
	FendQ
kichi_4_f3	Faces
	Face4	14,10,0,-127,0,15,35,37,17
	Face4	14,11,0,-127,0,16,36,34,14
	Face4	18,12,-90,-90,0,15,13,33,35
	Face4	12,13,90,-90,0,34,32,12,14
	Face4	16,0,0,0,-127,14,12,13,15
	Face4	16,1,0,0,-127,2,3,16,17
	FendQ
kichi_4_f4	Faces
	Face4	21,20,0,0,-127,24,25,28,29
	FendQ
kichi_4_f6	Faces
	Face8	21,22,0,0,-127,30,31,26,23,21,20,22,27
	FendQ
kichi_4_f8	Faces
	Face4	16,2,0,127,0,11,9,23,24
	FendQ
kichi_4_f10	Faces
	Face4	16,3,-127,0,0,5,19,21,7
	Face4	20,4,-90,90,0,7,21,23,9
	Face4	12,6,127,0,0,6,20,18,4
	Face4	14,7,90,90,0,8,22,20,6
	Face4	21,21,0,0,-127,20,21,19,18
	Face5	18,5,0,0,-127,1,5,7,9,11
	Face5	18,9,0,0,-127,10,8,6,4,0
	FendQ
kichi_4_f11	Faces
	Face4	25,15,0,127,0,28,41,39,27
	FendQ
kichi_4_f13	Faces
	Face4	16,8,0,127,0,25,22,8,10
	FendQ
kichi_4_f14	Faces
	Face4	25,16,0,127,0,26,38,40,29
	Face4	23,17,90,90,0,31,43,38,26
	Face4	27,18,-90,90,0,27,39,42,30
	Face4	25,19,0,127,0,42,43,31,30
	FendQ
kichi_4_EBSP
	EndShape

	endc
	ENDC
