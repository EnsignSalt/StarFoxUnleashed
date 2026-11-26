	start_shapes


;--Shape file ----- C:\SHED\NSHAPES\up_door.anm ---- CAN'T compact this shape.
	ifne	DO_HDR

up_door
	ShapeHdr	up_door_P,0,up_door_F,0,0,0,0,1,up_door_col,45,30,10,55,id_0_c,0,0,0,0,<up_door>
	elseif


up_door_P
	PointsXb	1
	pb	45,-30,-10	;0
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
	pb	0,-30,-10	;2
	PointsXb	1
	pb	10,-10,-10	;3
	Pointsb	1
	pb	-45,10,-10	;5
	PointsXb	1
	pb	45,30,-5	;6
	Pointsb	2
	pb	-45,30,-10	;8
	pb	0,-30,-10	;9
	jump	.EB0
	IFNE	SPEED_MODE
.A0_5A	Pointsb	1
	pb	1,-30,-10	;2
	PointsXb	1
	pb	10,-13,-10	;3
	Pointsb	1
	pb	-45,7,-10	;5
	PointsXb	1
	pb	45,30,-5	;6
	Pointsb	2
	pb	-45,27,-10	;8
	pb	-1,-30,-10	;9
	jump	.EB0
	ENDC
.A1A	Pointsb	1
	pb	2,-30,-10	;2
	PointsXb	1
	pb	10,-15,-10	;3
	Pointsb	1
	pb	-45,5,-10	;5
	PointsXb	1
	pb	45,30,-5	;6
	Pointsb	2
	pb	-45,25,-10	;8
	pb	-2,-30,-10	;9
	jump	.EB0
	IFNE	SPEED_MODE
.A1_5A	Pointsb	1
	pb	3,-30,-10	;2
	PointsXb	1
	pb	10,-18,-10	;3
	Pointsb	1
	pb	-45,2,-10	;5
	PointsXb	1
	pb	45,27,-5	;6
	Pointsb	2
	pb	-45,22,-10	;8
	pb	-4,-30,-10	;9
	jump	.EB0
	ENDC
.A2A	Pointsb	1
	pb	5,-30,-10	;2
	PointsXb	1
	pb	10,-20,-10	;3
	Pointsb	1
	pb	-45,0,-10	;5
	PointsXb	1
	pb	45,25,-5	;6
	Pointsb	2
	pb	-45,20,-10	;8
	pb	-5,-30,-10	;9
	jump	.EB0
	IFNE	SPEED_MODE
.A2_5A	Pointsb	1
	pb	6,-30,-10	;2
	PointsXb	1
	pb	10,-23,-10	;3
	Pointsb	1
	pb	-45,-3,-10	;5
	PointsXb	1
	pb	45,22,-5	;6
	Pointsb	2
	pb	-45,17,-10	;8
	pb	-6,-30,-10	;9
	jump	.EB0
	ENDC
.A3A	Pointsb	1
	pb	7,-30,-10	;2
	PointsXb	1
	pb	10,-25,-10	;3
	Pointsb	1
	pb	-45,-5,-10	;5
	PointsXb	1
	pb	45,20,-5	;6
	Pointsb	2
	pb	-45,15,-10	;8
	pb	-7,-30,-10	;9
	jump	.EB0
	IFNE	SPEED_MODE
.A3_5A	Pointsb	1
	pb	8,-30,-10	;2
	PointsXb	1
	pb	10,-28,-10	;3
	Pointsb	1
	pb	-45,-8,-10	;5
	PointsXb	1
	pb	45,17,-5	;6
	Pointsb	2
	pb	-45,12,-10	;8
	pb	-9,-30,-10	;9
	jump	.EB0
	ENDC
.A4A	Pointsb	1
	pb	10,-30,-10	;2
	PointsXb	1
	pb	10,-30,-10	;3
	Pointsb	1
	pb	-45,-10,-10	;5
	PointsXb	1
	pb	45,15,-5	;6
	Pointsb	2
	pb	-45,10,-10	;8
	pb	-10,-30,-10	;9
	jump	.EB0
	IFNE	SPEED_MODE
.A4_5A	Pointsb	1
	pb	10,-30,-10	;2
	PointsXb	1
	pb	10,-30,-10	;3
	Pointsb	1
	pb	-45,-13,-10	;5
	PointsXb	1
	pb	45,12,-5	;6
	Pointsb	2
	pb	-45,7,-10	;8
	pb	-10,-30,-10	;9
	jump	.EB0
	ENDC
.A5A	Pointsb	1
	pb	10,-30,-10	;2
	PointsXb	1
	pb	10,-30,-10	;3
	Pointsb	1
	pb	-45,-15,-10	;5
	PointsXb	1
	pb	45,10,-5	;6
	Pointsb	2
	pb	-45,5,-10	;8
	pb	-10,-30,-10	;9
	jump	.EB0
	IFNE	SPEED_MODE
.A5_5A	Pointsb	1
	pb	10,-30,-10	;2
	PointsXb	1
	pb	10,-30,-10	;3
	Pointsb	1
	pb	-45,-18,-10	;5
	PointsXb	1
	pb	45,7,-5	;6
	Pointsb	2
	pb	-45,2,-10	;8
	pb	-10,-30,-10	;9
	jump	.EB0
	ENDC
.A6A	Pointsb	1
	pb	10,-30,-10	;2
	PointsXb	1
	pb	10,-30,-10	;3
	Pointsb	1
	pb	-45,-20,-10	;5
	PointsXb	1
	pb	45,5,-5	;6
	Pointsb	2
	pb	-45,0,-10	;8
	pb	-10,-30,-10	;9
	jump	.EB0
	IFNE	SPEED_MODE
.A6_5A	Pointsb	1
	pb	10,-30,-10	;2
	PointsXb	1
	pb	10,-30,-10	;3
	Pointsb	1
	pb	-45,-23,-10	;5
	PointsXb	1
	pb	45,2,-5	;6
	Pointsb	2
	pb	-45,-3,-10	;8
	pb	-10,-30,-10	;9
	jump	.EB0
	ENDC
.A7A	Pointsb	1
	pb	10,-30,-10	;2
	PointsXb	1
	pb	10,-30,-10	;3
	Pointsb	1
	pb	-45,-25,-10	;5
	PointsXb	1
	pb	45,0,-5	;6
	Pointsb	2
	pb	-45,-5,-10	;8
	pb	-10,-30,-10	;9
	jump	.EB0
	IFNE	SPEED_MODE
.A7_5A	Pointsb	1
	pb	10,-30,-10	;2
	PointsXb	1
	pb	10,-30,-10	;3
	Pointsb	1
	pb	-45,-28,-10	;5
	PointsXb	1
	pb	45,-3,-5	;6
	Pointsb	2
	pb	-45,-8,-10	;8
	pb	-10,-30,-10	;9
	jump	.EB0
	ENDC
.A8A	Pointsb	1
	pb	10,-30,-10	;2
	PointsXb	1
	pb	10,-30,-10	;3
	Pointsb	1
	pb	-45,-30,-10	;5
	PointsXb	1
	pb	45,-5,-5	;6
	Pointsb	2
	pb	-45,-10,-10	;8
	pb	-10,-30,-10	;9
	jump	.EB0
	IFNE	SPEED_MODE
.A8_5A	Pointsb	1
	pb	10,-30,-10	;2
	PointsXb	1
	pb	10,-30,-10	;3
	Pointsb	1
	pb	-45,-30,-10	;5
	PointsXb	1
	pb	45,-8,-5	;6
	Pointsb	2
	pb	-45,-13,-10	;8
	pb	-10,-30,-10	;9
	jump	.EB0
	ENDC
.A9A	Pointsb	1
	pb	10,-30,-10	;2
	PointsXb	1
	pb	10,-30,-10	;3
	Pointsb	1
	pb	-45,-30,-10	;5
	PointsXb	1
	pb	45,-10,-5	;6
	Pointsb	2
	pb	-45,-15,-10	;8
	pb	-10,-30,-10	;9
.EB0
	Pointsb	1
	pb	-10,-30,-10	;10
	IFEQ	SPEED_MODE
	Frames	10
	jumptab	.A0B
	jumptab	.A1B
	jumptab	.A2B
	jumptab	.A3B
	jumptab	.A4B
	jumptab	.A5B
	jumptab	.A6B
	jumptab	.A7B
	jumptab	.A8B
	jumptab	.A9B
	ELSEIF
	Frames	19
	jumptab	.A0B
	jumptab	.A0_5B
	jumptab	.A1B
	jumptab	.A1_5B
	jumptab	.A2B
	jumptab	.A2_5B
	jumptab	.A3B
	jumptab	.A3_5B
	jumptab	.A4B
	jumptab	.A4_5B
	jumptab	.A5B
	jumptab	.A5_5B
	jumptab	.A6B
	jumptab	.A6_5B
	jumptab	.A7B
	jumptab	.A7_5B
	jumptab	.A8B
	jumptab	.A8_5B
	jumptab	.A9B
	ENDC
.A0B	PointsXb	1
	pb	45,30,10	;11
	jump	.EB1
	IFNE	SPEED_MODE
.A0_5B	PointsXb	1
	pb	45,30,10	;11
	jump	.EB1
	ENDC
.A1B	PointsXb	1
	pb	45,30,10	;11
	jump	.EB1
	IFNE	SPEED_MODE
.A1_5B	PointsXb	1
	pb	45,27,10	;11
	jump	.EB1
	ENDC
.A2B	PointsXb	1
	pb	45,25,10	;11
	jump	.EB1
	IFNE	SPEED_MODE
.A2_5B	PointsXb	1
	pb	45,22,10	;11
	jump	.EB1
	ENDC
.A3B	PointsXb	1
	pb	45,20,10	;11
	jump	.EB1
	IFNE	SPEED_MODE
.A3_5B	PointsXb	1
	pb	45,17,10	;11
	jump	.EB1
	ENDC
.A4B	PointsXb	1
	pb	45,15,10	;11
	jump	.EB1
	IFNE	SPEED_MODE
.A4_5B	PointsXb	1
	pb	45,12,10	;11
	jump	.EB1
	ENDC
.A5B	PointsXb	1
	pb	45,10,10	;11
	jump	.EB1
	IFNE	SPEED_MODE
.A5_5B	PointsXb	1
	pb	45,7,10	;11
	jump	.EB1
	ENDC
.A6B	PointsXb	1
	pb	45,5,10	;11
	jump	.EB1
	IFNE	SPEED_MODE
.A6_5B	PointsXb	1
	pb	45,2,10	;11
	jump	.EB1
	ENDC
.A7B	PointsXb	1
	pb	45,0,10	;11
	jump	.EB1
	IFNE	SPEED_MODE
.A7_5B	PointsXb	1
	pb	45,-3,10	;11
	jump	.EB1
	ENDC
.A8B	PointsXb	1
	pb	45,-5,10	;11
	jump	.EB1
	IFNE	SPEED_MODE
.A8_5B	PointsXb	1
	pb	45,-8,10	;11
	jump	.EB1
	ENDC
.A9B	PointsXb	1
	pb	45,-10,10	;11
.EB1
	Pointsb	1
	pb	10,-30,-10	;13
	IFEQ	SPEED_MODE
	Frames	10
	jumptab	.A0C
	jumptab	.A1C
	jumptab	.A2C
	jumptab	.A3C
	jumptab	.A4C
	jumptab	.A5C
	jumptab	.A6C
	jumptab	.A7C
	jumptab	.A8C
	jumptab	.A9C
	ELSEIF
	Frames	19
	jumptab	.A0C
	jumptab	.A0_5C
	jumptab	.A1C
	jumptab	.A1_5C
	jumptab	.A2C
	jumptab	.A2_5C
	jumptab	.A3C
	jumptab	.A3_5C
	jumptab	.A4C
	jumptab	.A4_5C
	jumptab	.A5C
	jumptab	.A5_5C
	jumptab	.A6C
	jumptab	.A6_5C
	jumptab	.A7C
	jumptab	.A7_5C
	jumptab	.A8C
	jumptab	.A8_5C
	jumptab	.A9C
	ENDC
.A0C	Pointsb	2
	pb	45,30,-10	;14
	pb	0,-10,-10	;15
	PointsXb	1
	pb	-10,10,-10	;16
	Pointsb	2
	pb	0,-10,-10	;18
	pb	0,10,-10	;19
	PointsXb	1
	pb	-10,30,-10	;20
	Pointsb	4
	pb	0,10,-10	;22
	pb	-45,-10,-10	;23
	pb	45,10,-10	;24
	pb	45,-10,-10	;25
	jump	.EB2
	IFNE	SPEED_MODE
.A0_5C	Pointsb	2
	pb	45,27,-10	;14
	pb	0,-13,-10	;15
	PointsXb	1
	pb	-10,7,-10	;16
	Pointsb	2
	pb	0,-13,-10	;18
	pb	0,7,-10	;19
	PointsXb	1
	pb	-10,27,-10	;20
	Pointsb	4
	pb	0,7,-10	;22
	pb	-45,-13,-10	;23
	pb	45,7,-10	;24
	pb	45,-13,-10	;25
	jump	.EB2
	ENDC
.A1C	Pointsb	2
	pb	45,25,-10	;14
	pb	0,-15,-10	;15
	PointsXb	1
	pb	-10,5,-10	;16
	Pointsb	2
	pb	0,-15,-10	;18
	pb	0,5,-10	;19
	PointsXb	1
	pb	-10,25,-10	;20
	Pointsb	4
	pb	0,5,-10	;22
	pb	-45,-15,-10	;23
	pb	45,5,-10	;24
	pb	45,-15,-10	;25
	jump	.EB2
	IFNE	SPEED_MODE
.A1_5C	Pointsb	2
	pb	45,22,-10	;14
	pb	0,-18,-10	;15
	PointsXb	1
	pb	-10,2,-10	;16
	Pointsb	2
	pb	0,-18,-10	;18
	pb	0,2,-10	;19
	PointsXb	1
	pb	-10,22,-10	;20
	Pointsb	4
	pb	0,2,-10	;22
	pb	-45,-18,-10	;23
	pb	45,2,-10	;24
	pb	45,-18,-10	;25
	jump	.EB2
	ENDC
.A2C	Pointsb	2
	pb	45,20,-10	;14
	pb	0,-20,-10	;15
	PointsXb	1
	pb	-10,0,-10	;16
	Pointsb	2
	pb	0,-20,-10	;18
	pb	0,0,-10	;19
	PointsXb	1
	pb	-10,20,-10	;20
	Pointsb	4
	pb	0,0,-10	;22
	pb	-45,-20,-10	;23
	pb	45,0,-10	;24
	pb	45,-20,-10	;25
	jump	.EB2
	IFNE	SPEED_MODE
.A2_5C	Pointsb	2
	pb	45,17,-10	;14
	pb	0,-23,-10	;15
	PointsXb	1
	pb	-10,-3,-10	;16
	Pointsb	2
	pb	0,-23,-10	;18
	pb	0,-3,-10	;19
	PointsXb	1
	pb	-10,17,-10	;20
	Pointsb	4
	pb	0,-3,-10	;22
	pb	-45,-23,-10	;23
	pb	45,-3,-10	;24
	pb	45,-23,-10	;25
	jump	.EB2
	ENDC
.A3C	Pointsb	2
	pb	45,15,-10	;14
	pb	0,-25,-10	;15
	PointsXb	1
	pb	-10,-5,-10	;16
	Pointsb	2
	pb	0,-25,-10	;18
	pb	0,-5,-10	;19
	PointsXb	1
	pb	-10,15,-10	;20
	Pointsb	4
	pb	0,-5,-10	;22
	pb	-45,-25,-10	;23
	pb	45,-5,-10	;24
	pb	45,-25,-10	;25
	jump	.EB2
	IFNE	SPEED_MODE
.A3_5C	Pointsb	2
	pb	45,12,-10	;14
	pb	0,-28,-10	;15
	PointsXb	1
	pb	-10,-8,-10	;16
	Pointsb	2
	pb	0,-28,-10	;18
	pb	0,-8,-10	;19
	PointsXb	1
	pb	-10,12,-10	;20
	Pointsb	4
	pb	0,-8,-10	;22
	pb	-45,-28,-10	;23
	pb	45,-8,-10	;24
	pb	45,-28,-10	;25
	jump	.EB2
	ENDC
.A4C	Pointsb	2
	pb	45,10,-10	;14
	pb	0,-30,-10	;15
	PointsXb	1
	pb	-10,-10,-10	;16
	Pointsb	2
	pb	0,-30,-10	;18
	pb	0,-10,-10	;19
	PointsXb	1
	pb	-10,10,-10	;20
	Pointsb	4
	pb	0,-10,-10	;22
	pb	-45,-30,-10	;23
	pb	45,-10,-10	;24
	pb	45,-30,-10	;25
	jump	.EB2
	IFNE	SPEED_MODE
.A4_5C	Pointsb	2
	pb	45,7,-10	;14
	pb	-1,-30,-10	;15
	PointsXb	1
	pb	-10,-13,-10	;16
	Pointsb	2
	pb	1,-30,-10	;18
	pb	0,-13,-10	;19
	PointsXb	1
	pb	-10,7,-10	;20
	Pointsb	4
	pb	0,-13,-10	;22
	pb	-45,-30,-10	;23
	pb	45,-13,-10	;24
	pb	45,-30,-10	;25
	jump	.EB2
	ENDC
.A5C	Pointsb	2
	pb	45,5,-10	;14
	pb	-2,-30,-10	;15
	PointsXb	1
	pb	-10,-15,-10	;16
	Pointsb	2
	pb	2,-30,-10	;18
	pb	0,-15,-10	;19
	PointsXb	1
	pb	-10,5,-10	;20
	Pointsb	4
	pb	0,-15,-10	;22
	pb	-45,-30,-10	;23
	pb	45,-15,-10	;24
	pb	45,-30,-10	;25
	jump	.EB2
	IFNE	SPEED_MODE
.A5_5C	Pointsb	2
	pb	45,2,-10	;14
	pb	-4,-30,-10	;15
	PointsXb	1
	pb	-10,-18,-10	;16
	Pointsb	2
	pb	3,-30,-10	;18
	pb	0,-18,-10	;19
	PointsXb	1
	pb	-10,2,-10	;20
	Pointsb	4
	pb	0,-18,-10	;22
	pb	-45,-30,-10	;23
	pb	45,-18,-10	;24
	pb	45,-30,-10	;25
	jump	.EB2
	ENDC
.A6C	Pointsb	2
	pb	45,0,-10	;14
	pb	-5,-30,-10	;15
	PointsXb	1
	pb	-10,-20,-10	;16
	Pointsb	2
	pb	5,-30,-10	;18
	pb	0,-20,-10	;19
	PointsXb	1
	pb	-10,0,-10	;20
	Pointsb	4
	pb	0,-20,-10	;22
	pb	-45,-30,-10	;23
	pb	45,-20,-10	;24
	pb	45,-30,-10	;25
	jump	.EB2
	IFNE	SPEED_MODE
.A6_5C	Pointsb	2
	pb	45,-3,-10	;14
	pb	-6,-30,-10	;15
	PointsXb	1
	pb	-10,-23,-10	;16
	Pointsb	2
	pb	6,-30,-10	;18
	pb	0,-23,-10	;19
	PointsXb	1
	pb	-10,-3,-10	;20
	Pointsb	4
	pb	0,-23,-10	;22
	pb	-45,-30,-10	;23
	pb	45,-23,-10	;24
	pb	45,-30,-10	;25
	jump	.EB2
	ENDC
.A7C	Pointsb	2
	pb	45,-5,-10	;14
	pb	-7,-30,-10	;15
	PointsXb	1
	pb	-10,-25,-10	;16
	Pointsb	2
	pb	7,-30,-10	;18
	pb	0,-25,-10	;19
	PointsXb	1
	pb	-10,-5,-10	;20
	Pointsb	4
	pb	0,-25,-10	;22
	pb	-45,-30,-10	;23
	pb	45,-25,-10	;24
	pb	45,-30,-10	;25
	jump	.EB2
	IFNE	SPEED_MODE
.A7_5C	Pointsb	2
	pb	45,-8,-10	;14
	pb	-9,-30,-10	;15
	PointsXb	1
	pb	-10,-28,-10	;16
	Pointsb	2
	pb	8,-30,-10	;18
	pb	0,-28,-10	;19
	PointsXb	1
	pb	-10,-8,-10	;20
	Pointsb	4
	pb	0,-28,-10	;22
	pb	-45,-30,-10	;23
	pb	45,-28,-10	;24
	pb	45,-30,-10	;25
	jump	.EB2
	ENDC
.A8C	Pointsb	2
	pb	45,-10,-10	;14
	pb	-10,-30,-10	;15
	PointsXb	1
	pb	-10,-30,-10	;16
	Pointsb	2
	pb	10,-30,-10	;18
	pb	0,-30,-10	;19
	PointsXb	1
	pb	-10,-10,-10	;20
	Pointsb	4
	pb	0,-30,-10	;22
	pb	-45,-30,-10	;23
	pb	45,-30,-10	;24
	pb	45,-30,-10	;25
	jump	.EB2
	IFNE	SPEED_MODE
.A8_5C	Pointsb	2
	pb	45,-13,-10	;14
	pb	-10,-30,-10	;15
	PointsXb	1
	pb	-10,-30,-10	;16
	Pointsb	2
	pb	10,-30,-10	;18
	pb	-2,-30,-10	;19
	PointsXb	1
	pb	-10,-13,-10	;20
	Pointsb	4
	pb	1,-30,-10	;22
	pb	-45,-30,-10	;23
	pb	45,-30,-10	;24
	pb	45,-30,-10	;25
	jump	.EB2
	ENDC
.A9C	Pointsb	2
	pb	45,-15,-10	;14
	pb	-10,-30,-10	;15
	PointsXb	1
	pb	-10,-30,-10	;16
	Pointsb	2
	pb	10,-30,-10	;18
	pb	-3,-30,-10	;19
	PointsXb	1
	pb	-10,-15,-10	;20
	Pointsb	4
	pb	3,-30,-10	;22
	pb	-45,-30,-10	;23
	pb	45,-30,-10	;24
	pb	45,-30,-10	;25
.EB2

	EndPoints
up_door_F
	Vizis	17
	Viz	25,3,17,0,0,-127	;133
	Viz	5,16,4,0,0,-127	;134
	Viz	4,10,1,0,0,-127	;135
	Viz	5,8,20,0,0,-127	;136
	Viz	25,0,13,0,0,-127	;137
	Viz	17,21,14,0,0,-127	;138
	Viz	16,20,19,0,0,-127	;139
	Viz	22,21,17,0,0,-127	;140
	Viz	19,20,21,0,0,-127	;141
	Viz	4,16,15,0,0,-127	;142
	Viz	18,17,3,0,0,-127	;143
	Viz	15,16,17,0,0,-127	;144
	Viz	2,3,13,0,0,-127	;145
	Viz	10,4,9,0,0,-127	;146
	Viz	9,4,3,0,0,-127	;147
	Viz	14,8,7,0,-127,0	;148
	Viz	12,11,6,0,-127,0	;149

up_door_f1	Faces
	Face4	16,0,0,0,-127,25,3,17,24
	Face4	16,1,0,0,-127,5,16,4,23
	Face4	18,2,0,0,-127,4,10,1,23
	Face4	18,3,0,0,-127,5,8,20,16
	Face4	18,4,0,0,-127,25,0,13,3
	Face4	18,5,0,0,-127,17,21,14,24
	Face3	10,6,0,0,-127,16,20,19
	Face3	10,7,0,0,-127,22,21,17
	Face4	43,8,0,0,-127,19,20,21,22
	Face3	10,9,0,0,-127,4,16,15
	Face3	10,10,0,0,-127,18,17,3
	Face4	43,11,0,0,-127,15,16,17,18
	Face3	10,12,0,0,-127,2,3,13
	Face3	10,13,0,0,-127,10,4,9
	Face4	43,14,0,0,-127,9,4,3,2
	Face4	14,15,0,-127,0,14,8,7,6
	Face4	44,16,0,-127,0,12,11,6,7
	Fend
	EndShape

	endc

;--Shape file ----- C:\SHED\SHAPES\WALKER_0.TXT ----
	ifne	DO_HDR
walker_0
	ShapeHdr	walker_0_P,0,walker_0_F,0,0,0,0,2,walker_col1,32,98,34,40,id_0_c,0,0,0,0,<walker_0>
	elseif

walker_0_P	datahdr
	IFEQ	SPEED_MODE
	Frames	18
	jumptab	.A0A
	jumptab	.A2A
	jumptab	.A4A
	jumptab	.A6A
	jumptab	.A8A
	jumptab	.A10A
	jumptab	.A12A
	jumptab	.A14A
	jumptab	.A16A
	jumptab	.A18A
	jumptab	.A20A
	jumptab	.A22A
	jumptab	.A24A
	jumptab	.A26A
	jumptab	.A28A
	jumptab	.A30A
	jumptab	.A32A
	jumptab	.A34A
	ELSEIF
	Frames	35
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
	jumptab	.A14A
	jumptab	.A15A
	jumptab	.A16A
	jumptab	.A17A
	jumptab	.A18A
	jumptab	.A19A
	jumptab	.A20A
	jumptab	.A21A
	jumptab	.A22A
	jumptab	.A23A
	jumptab	.A24A
	jumptab	.A25A
	jumptab	.A26A
	jumptab	.A27A
	jumptab	.A28A
	jumptab	.A29A
	jumptab	.A30A
	jumptab	.A31A
	jumptab	.A32A
	jumptab	.A33A
	jumptab	.A34A
	ENDC
.A0A	Pointsb	16
	pb	20,0,5	;0
	pb	-17,-90,-19	;1
	pb	0,-77,-20	;2
	pb	21,-90,-25	;3
	pb	30,-50,-6	;4
	pb	-1,-57,0	;5
	pb	15,-69,0	;6
	pb	-14,-74,0	;7
	pb	2,-86,0	;8
	pb	-32,-54,0	;9
	pb	-1,-62,20	;10
	pb	10,-70,20	;11
	pb	-9,-73,20	;12
	pb	1,-81,20	;13
	pb	-29,-5,10	;14
	pb	0,-50,30	;15
	jump	.EB0
.A1A	Pointsb	16
	pb	20,0,-4	;0
	pb	-18,-88,-20	;1
	pb	0,-76,-20	;2
	pb	21,-92,-22	;3
	pb	30,-51,-8	;4
	pb	-1,-56,0	;5
	pb	15,-70,0	;6
	pb	-14,-74,0	;7
	pb	2,-86,0	;8
	pb	-32,-53,2	;9
	pb	0,-62,20	;10
	pb	10,-70,20	;11
	pb	-9,-72,20	;12
	pb	1,-81,20	;13
	pb	-28,-6,16	;14
	pb	0,-50,30	;15
	jump	.EB0
.A2A	Pointsb	16
	pb	20,-1,-13	;0
	pb	-18,-85,-21	;1
	pb	0,-76,-20	;2
	pb	21,-95,-18	;3
	pb	30,-52,-10	;4
	pb	-1,-56,0	;5
	pb	15,-70,0	;6
	pb	-14,-73,0	;7
	pb	1,-86,0	;8
	pb	-32,-52,3	;9
	pb	0,-61,20	;10
	pb	10,-70,20	;11
	pb	-9,-72,20	;12
	pb	1,-81,20	;13
	pb	-26,-6,21	;14
	pb	0,-50,30	;15
	jump	.EB0
.A3A	Pointsb	16
	pb	18,-2,-18	;0
	pb	-18,-83,-22	;1
	pb	0,-76,-20	;2
	pb	22,-95,-16	;3
	pb	29,-52,-11	;4
	pb	-1,-56,0	;5
	pb	14,-69,0	;6
	pb	-14,-72,0	;7
	pb	1,-86,0	;8
	pb	-32,-52,4	;9
	pb	0,-60,20	;10
	pb	10,-69,20	;11
	pb	-9,-71,20	;12
	pb	0,-80,20	;13
	pb	-25,-6,24	;14
	pb	0,-50,30	;15
	jump	.EB0
.A4A	Pointsb	16
	pb	16,-2,-24	;0
	pb	-19,-81,-22	;1
	pb	0,-75,-20	;2
	pb	22,-95,-13	;3
	pb	28,-51,-12	;4
	pb	-1,-55,0	;5
	pb	14,-68,0	;6
	pb	-14,-72,0	;7
	pb	1,-85,0	;8
	pb	-31,-51,5	;9
	pb	0,-60,20	;10
	pb	9,-68,20	;11
	pb	-9,-70,20	;12
	pb	0,-80,20	;13
	pb	-24,-6,27	;14
	pb	-1,-49,30	;15
	jump	.EB0
.A5A	Pointsb	16
	pb	15,-2,-27	;0
	pb	-19,-80,-22	;1
	pb	0,-74,-20	;2
	pb	22,-94,-12	;3
	pb	28,-51,-12	;4
	pb	-1,-54,0	;5
	pb	14,-68,0	;6
	pb	-14,-71,0	;7
	pb	1,-84,0	;8
	pb	-30,-50,6	;9
	pb	0,-59,20	;10
	pb	9,-68,20	;11
	pb	-9,-70,20	;12
	pb	0,-79,20	;13
	pb	-23,-6,28	;14
	pb	-1,-48,30	;15
	jump	.EB0
.A6A	Pointsb	16
	pb	14,-3,-30	;0
	pb	-19,-78,-22	;1
	pb	0,-73,-20	;2
	pb	23,-94,-10	;3
	pb	28,-51,-13	;4
	pb	-1,-53,0	;5
	pb	14,-67,0	;6
	pb	-13,-70,0	;7
	pb	1,-83,0	;8
	pb	-30,-49,6	;9
	pb	0,-58,20	;10
	pb	9,-67,20	;11
	pb	-9,-69,20	;12
	pb	0,-78,20	;13
	pb	-22,-6,30	;14
	pb	-1,-48,30	;15
	jump	.EB0
.A7A	Pointsb	16
	pb	14,-4,-32	;0
	pb	-20,-77,-22	;1
	pb	0,-73,-20	;2
	pb	22,-94,-9	;3
	pb	28,-51,-13	;4
	pb	-1,-53,0	;5
	pb	14,-67,0	;6
	pb	-14,-70,0	;7
	pb	1,-83,0	;8
	pb	-30,-48,6	;9
	pb	0,-58,20	;10
	pb	10,-68,20	;11
	pb	-9,-69,20	;12
	pb	0,-78,20	;13
	pb	-21,-6,30	;14
	pb	-1,-48,30	;15
	jump	.EB0
.A8A	Pointsb	16
	pb	15,-4,-33	;0
	pb	-20,-76,-22	;1
	pb	0,-73,-20	;2
	pb	22,-95,-8	;3
	pb	28,-51,-13	;4
	pb	-1,-53,0	;5
	pb	14,-67,0	;6
	pb	-14,-69,0	;7
	pb	1,-83,0	;8
	pb	-30,-48,6	;9
	pb	0,-58,20	;10
	pb	10,-68,20	;11
	pb	-9,-69,20	;12
	pb	0,-78,20	;13
	pb	-20,-5,31	;14
	pb	-1,-48,30	;15
	jump	.EB0
.A9A	Pointsb	16
	pb	18,-6,-34	;0
	pb	-20,-75,-22	;1
	pb	0,-74,-20	;2
	pb	22,-96,-8	;3
	pb	29,-53,-13	;4
	pb	0,-54,0	;5
	pb	14,-68,0	;6
	pb	-14,-68,0	;7
	pb	0,-84,0	;8
	pb	-29,-46,6	;9
	pb	0,-58,20	;10
	pb	10,-68,20	;11
	pb	-10,-68,20	;12
	pb	0,-78,20	;13
	pb	-18,-4,30	;14
	pb	0,-48,30	;15
	jump	.EB0
.A10A	Pointsb	16
	pb	20,-7,-34	;0
	pb	-20,-74,-21	;1
	pb	0,-74,-20	;2
	pb	21,-98,-7	;3
	pb	30,-55,-13	;4
	pb	0,-54,0	;5
	pb	14,-69,0	;6
	pb	-15,-68,0	;7
	pb	0,-84,0	;8
	pb	-28,-44,5	;9
	pb	0,-59,20	;10
	pb	9,-69,20	;11
	pb	-10,-68,20	;12
	pb	0,-79,20	;13
	pb	-16,-2,29	;14
	pb	1,-49,30	;15
	jump	.EB0
.A11A	Pointsb	16
	pb	20,-6,-33	;0
	pb	-20,-76,-20	;1
	pb	0,-74,-20	;2
	pb	21,-98,-7	;3
	pb	30,-54,-12	;4
	pb	0,-54,0	;5
	pb	14,-70,0	;6
	pb	-15,-69,0	;7
	pb	0,-84,0	;8
	pb	-29,-45,4	;9
	pb	0,-60,20	;10
	pb	10,-70,20	;11
	pb	-10,-69,20	;12
	pb	0,-80,20	;13
	pb	-18,-2,27	;14
	pb	0,-50,30	;15
	jump	.EB0
.A12A	Pointsb	16
	pb	20,-6,-32	;0
	pb	-20,-77,-20	;1
	pb	0,-75,-20	;2
	pb	21,-97,-7	;3
	pb	30,-54,-12	;4
	pb	0,-55,0	;5
	pb	15,-70,0	;6
	pb	-15,-70,0	;7
	pb	0,-85,0	;8
	pb	-30,-46,3	;9
	pb	0,-60,20	;10
	pb	10,-70,20	;11
	pb	-10,-70,20	;12
	pb	0,-80,20	;13
	pb	-20,-2,25	;14
	pb	0,-50,30	;15
	jump	.EB0
.A13A	Pointsb	16
	pb	21,-6,-30	;0
	pb	-20,-78,-20	;1
	pb	0,-75,-20	;2
	pb	20,-97,-8	;3
	pb	30,-54,-12	;4
	pb	0,-55,0	;5
	pb	14,-70,0	;6
	pb	-14,-70,0	;7
	pb	0,-85,0	;8
	pb	-30,-46,2	;9
	pb	0,-60,20	;10
	pb	10,-70,20	;11
	pb	-9,-70,20	;12
	pb	0,-80,20	;13
	pb	-21,-2,21	;14
	pb	0,-50,30	;15
	jump	.EB0
.A14A	Pointsb	16
	pb	22,-5,-28	;0
	pb	-19,-80,-19	;1
	pb	0,-75,-20	;2
	pb	20,-97,-8	;3
	pb	30,-54,-11	;4
	pb	0,-55,0	;5
	pb	14,-69,0	;6
	pb	-14,-71,0	;7
	pb	0,-85,0	;8
	pb	-30,-46,0	;9
	pb	0,-60,20	;10
	pb	10,-70,20	;11
	pb	-8,-70,20	;12
	pb	0,-80,20	;13
	pb	-22,-1,17	;14
	pb	0,-50,30	;15
	jump	.EB0
.A15A	Pointsb	16
	pb	23,-4,-24	;0
	pb	-19,-85,-22	;1
	pb	0,-76,-20	;2
	pb	20,-96,-9	;3
	pb	30,-54,-10	;4
	pb	0,-56,0	;5
	pb	14,-70,0	;6
	pb	-14,-70,0	;7
	pb	0,-86,0	;8
	pb	-30,-48,-3	;9
	pb	0,-60,20	;10
	pb	10,-70,20	;11
	pb	-8,-70,20	;12
	pb	0,-80,20	;13
	pb	-22,0,11	;14
	pb	0,-50,30	;15
	jump	.EB0
.A16A	Pointsb	16
	pb	24,-3,-21	;0
	pb	-19,-90,-25	;1
	pb	0,-76,-20	;2
	pb	19,-96,-10	;3
	pb	31,-54,-9	;4
	pb	1,-56,0	;5
	pb	14,-72,0	;6
	pb	-14,-70,0	;7
	pb	-1,-86,0	;8
	pb	-30,-50,-6	;9
	pb	0,-61,20	;10
	pb	9,-71,20	;11
	pb	-9,-70,20	;12
	pb	0,-81,20	;13
	pb	-21,0,5	;14
	pb	1,-51,30	;15
	jump	.EB0
.A17A	Pointsb	16
	pb	26,-3,-14	;0
	pb	-20,-92,-22	;1
	pb	0,-76,-20	;2
	pb	18,-95,-12	;3
	pb	31,-54,-7	;4
	pb	1,-56,0	;5
	pb	14,-72,0	;6
	pb	-14,-70,0	;7
	pb	-1,-86,0	;8
	pb	-30,-51,-8	;9
	pb	0,-61,20	;10
	pb	9,-72,20	;11
	pb	-10,-70,20	;12
	pb	0,-81,20	;13
	pb	-20,0,-4	;14
	pb	2,-51,30	;15
	jump	.EB0
.A18A	Pointsb	16
	pb	27,-3,-8	;0
	pb	-20,-95,-18	;1
	pb	0,-76,-20	;2
	pb	18,-94,-14	;3
	pb	31,-53,-5	;4
	pb	1,-56,0	;5
	pb	14,-73,0	;6
	pb	-15,-70,0	;7
	pb	-1,-86,0	;8
	pb	-30,-52,-10	;9
	pb	0,-61,20	;10
	pb	9,-72,20	;11
	pb	-10,-70,20	;12
	pb	-1,-81,20	;13
	pb	-20,-1,-13	;14
	pb	2,-51,30	;15
	jump	.EB0
.A19A	Pointsb	16
	pb	28,-4,1	;0
	pb	-20,-94,-16	;1
	pb	0,-75,-20	;2
	pb	18,-92,-16	;3
	pb	32,-54,-2	;4
	pb	2,-56,0	;5
	pb	14,-74,0	;6
	pb	-14,-68,0	;7
	pb	-2,-85,0	;8
	pb	-29,-51,-11	;9
	pb	0,-60,20	;10
	pb	9,-72,20	;11
	pb	-10,-69,20	;12
	pb	-1,-80,20	;13
	pb	-18,-1,-18	;14
	pb	2,-52,30	;15
	jump	.EB0
.A20A	Pointsb	16
	pb	29,-5,10	;0
	pb	-21,-94,-13	;1
	pb	0,-74,-20	;2
	pb	18,-90,-19	;3
	pb	32,-54,0	;4
	pb	2,-55,0	;5
	pb	14,-74,0	;6
	pb	-13,-67,0	;7
	pb	-3,-84,0	;8
	pb	-28,-50,-12	;9
	pb	1,-60,20	;10
	pb	9,-72,20	;11
	pb	-9,-68,20	;12
	pb	-1,-79,20	;13
	pb	-15,-1,-24	;14
	pb	2,-52,30	;15
	jump	.EB0
.A21A	Pointsb	16
	pb	28,-5,16	;0
	pb	-22,-94,-12	;1
	pb	0,-74,-20	;2
	pb	18,-88,-20	;3
	pb	32,-53,2	;4
	pb	2,-54,0	;5
	pb	14,-72,0	;6
	pb	-14,-66,0	;7
	pb	-2,-84,0	;8
	pb	-28,-50,-12	;9
	pb	1,-60,20	;10
	pb	8,-72,20	;11
	pb	-9,-68,20	;12
	pb	-2,-79,20	;13
	pb	-14,-2,-27	;14
	pb	2,-52,30	;15
	jump	.EB0
.A22A	Pointsb	16
	pb	26,-5,21	;0
	pb	-22,-94,-10	;1
	pb	0,-74,-20	;2
	pb	19,-85,-21	;3
	pb	31,-52,3	;4
	pb	2,-54,0	;5
	pb	13,-71,0	;6
	pb	-14,-65,0	;7
	pb	-2,-84,0	;8
	pb	-28,-50,-13	;9
	pb	1,-59,20	;10
	pb	8,-71,20	;11
	pb	-9,-67,20	;12
	pb	-2,-79,20	;13
	pb	-13,-2,-30	;14
	pb	1,-51,30	;15
	jump	.EB0
.A23A	Pointsb	16
	pb	25,-6,24	;0
	pb	-22,-94,-9	;1
	pb	0,-74,-20	;2
	pb	19,-83,-22	;3
	pb	31,-52,4	;4
	pb	2,-54,0	;5
	pb	13,-70,0	;6
	pb	-14,-65,0	;7
	pb	-2,-84,0	;8
	pb	-28,-50,-13	;9
	pb	1,-59,20	;10
	pb	8,-70,20	;11
	pb	-9,-66,20	;12
	pb	-2,-78,20	;13
	pb	-12,-2,-32	;14
	pb	1,-51,30	;15
	jump	.EB0
.A24A	Pointsb	16
	pb	24,-6,27	;0
	pb	-23,-93,-8	;1
	pb	0,-73,-20	;2
	pb	19,-81,-22	;3
	pb	31,-51,5	;4
	pb	1,-54,0	;5
	pb	13,-70,0	;6
	pb	-14,-65,0	;7
	pb	-2,-83,0	;8
	pb	-27,-49,-13	;9
	pb	1,-59,20	;10
	pb	8,-70,20	;11
	pb	-9,-66,20	;12
	pb	-1,-78,20	;13
	pb	-12,-3,-33	;14
	pb	1,-51,30	;15
	jump	.EB0
.A25A	Pointsb	16
	pb	23,-6,28	;0
	pb	-22,-96,-8	;1
	pb	0,-74,-20	;2
	pb	20,-80,-22	;3
	pb	30,-50,6	;4
	pb	0,-54,0	;5
	pb	14,-70,0	;6
	pb	-14,-68,0	;7
	pb	-1,-84,0	;8
	pb	-28,-52,-13	;9
	pb	0,-60,20	;10
	pb	8,-70,20	;11
	pb	-10,-68,20	;12
	pb	0,-79,20	;13
	pb	-16,-5,-34	;14
	pb	0,-50,30	;15
	jump	.EB0
.A26A	Pointsb	16
	pb	22,-6,30	;0
	pb	-20,-98,-7	;1
	pb	0,-75,-20	;2
	pb	20,-78,-22	;3
	pb	30,-49,6	;4
	pb	0,-55,0	;5
	pb	14,-71,0	;6
	pb	-15,-70,0	;7
	pb	0,-85,0	;8
	pb	-30,-55,-13	;9
	pb	0,-60,20	;10
	pb	9,-70,20	;11
	pb	-10,-70,20	;12
	pb	0,-80,20	;13
	pb	-20,-7,-34	;14
	pb	0,-50,30	;15
	jump	.EB0
.A27A	Pointsb	16
	pb	21,-6,30	;0
	pb	-20,-98,-7	;1
	pb	0,-75,-20	;2
	pb	20,-77,-22	;3
	pb	30,-48,6	;4
	pb	0,-55,0	;5
	pb	14,-70,0	;6
	pb	-15,-70,0	;7
	pb	0,-85,0	;8
	pb	-30,-54,-12	;9
	pb	0,-60,20	;10
	pb	10,-70,20	;11
	pb	-10,-70,20	;12
	pb	0,-80,20	;13
	pb	-20,-6,-33	;14
	pb	0,-50,30	;15
	jump	.EB0
.A28A	Pointsb	16
	pb	20,-5,31	;0
	pb	-20,-97,-7	;1
	pb	0,-75,-20	;2
	pb	21,-76,-22	;3
	pb	30,-48,6	;4
	pb	0,-55,0	;5
	pb	15,-70,0	;6
	pb	-15,-70,0	;7
	pb	0,-85,0	;8
	pb	-30,-54,-12	;9
	pb	0,-60,20	;10
	pb	10,-70,20	;11
	pb	-10,-70,20	;12
	pb	0,-80,20	;13
	pb	-20,-6,-32	;14
	pb	0,-50,30	;15
	jump	.EB0
.A29A	Pointsb	16
	pb	18,-3,30	;0
	pb	-20,-97,-8	;1
	pb	0,-74,-20	;2
	pb	21,-74,-22	;3
	pb	29,-46,6	;4
	pb	0,-54,0	;5
	pb	14,-68,0	;6
	pb	-14,-70,0	;7
	pb	0,-84,0	;8
	pb	-30,-54,-12	;9
	pb	0,-60,20	;10
	pb	10,-69,20	;11
	pb	-10,-70,20	;12
	pb	0,-80,20	;13
	pb	-21,-6,-30	;14
	pb	0,-50,30	;15
	jump	.EB0
.A30A	Pointsb	16
	pb	15,-1,29	;0
	pb	-19,-97,-8	;1
	pb	0,-74,-20	;2
	pb	21,-73,-21	;3
	pb	28,-43,5	;4
	pb	-1,-54,0	;5
	pb	14,-66,0	;6
	pb	-14,-71,0	;7
	pb	0,-83,0	;8
	pb	-30,-54,-11	;9
	pb	0,-59,20	;10
	pb	9,-68,20	;11
	pb	-9,-69,20	;12
	pb	0,-79,20	;13
	pb	-22,-5,-28	;14
	pb	-1,-49,30	;15
	jump	.EB0
.A31A	Pointsb	16
	pb	16,-1,27	;0
	pb	-18,-96,-9	;1
	pb	0,-74,-20	;2
	pb	21,-74,-20	;3
	pb	28,-44,4	;4
	pb	-1,-54,0	;5
	pb	14,-68,0	;6
	pb	-14,-72,0	;7
	pb	0,-84,0	;8
	pb	-30,-54,-10	;9
	pb	0,-60,20	;10
	pb	9,-68,20	;11
	pb	-9,-70,20	;12
	pb	0,-80,20	;13
	pb	-23,-4,-24	;14
	pb	0,-49,30	;15
	jump	.EB0
.A32A	Pointsb	16
	pb	18,-1,25	;0
	pb	-18,-96,-10	;1
	pb	0,-75,-20	;2
	pb	21,-76,-20	;3
	pb	29,-45,3	;4
	pb	-1,-55,0	;5
	pb	14,-69,0	;6
	pb	-14,-72,0	;7
	pb	1,-85,0	;8
	pb	-31,-54,-9	;9
	pb	0,-60,20	;10
	pb	9,-69,20	;11
	pb	-9,-70,20	;12
	pb	0,-80,20	;13
	pb	-24,-3,-21	;14
	pb	0,-49,30	;15
	jump	.EB0
.A33A	Pointsb	16
	pb	20,0,21	;0
	pb	-18,-95,-12	;1
	pb	0,-76,-20	;2
	pb	20,-78,-20	;3
	pb	30,-45,2	;4
	pb	0,-56,0	;5
	pb	14,-69,0	;6
	pb	-14,-72,0	;7
	pb	0,-86,0	;8
	pb	-31,-54,-7	;9
	pb	0,-60,20	;10
	pb	10,-70,20	;11
	pb	-8,-71,20	;12
	pb	0,-80,20	;13
	pb	-26,-3,-14	;14
	pb	0,-50,30	;15
	jump	.EB0
.A34A	Pointsb	16
	pb	21,0,17	;0
	pb	-17,-94,-14	;1
	pb	0,-76,-20	;2
	pb	20,-79,-19	;3
	pb	30,-45,0	;4
	pb	0,-56,0	;5
	pb	15,-69,0	;6
	pb	-14,-73,0	;7
	pb	0,-86,0	;8
	pb	-31,-53,-5	;9
	pb	0,-61,20	;10
	pb	10,-70,20	;11
	pb	-8,-72,20	;12
	pb	0,-81,20	;13
	pb	-27,-3,-8	;14
	pb	0,-50,30	;15
.EB0

	EndPoints


walker_0_F
	Vizis	17
	Viz	4,0,6,-48,-39,111	;1
	Viz	4,3,0,-73,8,-104	;2
	Viz	0,3,6,118,13,-46	;3
	Viz	6,3,4,-92,14,87	;4
	Viz	14,1,9,68,-55,-92	;5
	Viz	7,1,14,-116,-34,-40	;6
	Viz	9,1,7,84,80,52	;7
	Viz	7,14,9,29,51,113	;8
	Viz	6,8,2,-95,73,-41	;9
	Viz	5,6,2,-67,-78,-74	;10
	Viz	2,8,7,79,91,-41	;11
	Viz	2,7,5,85,-65,-69	;12
	Viz	13,8,6,-99,76,24	;13
	Viz	10,11,6,-83,-94,21	;14
	Viz	12,7,8,81,93,30	;15
	Viz	5,7,12,100,-76,17	;16
	Viz	13,11,10,0,0,127	;17
	BSPInit	walker_0_EBSP
	BSP	9,walker_0_f1,.bsp2
	BSP	11,walker_0_f3,.bsp4
	BSPE	walker_0_f5
.bsp4	BSPE	walker_0_f6
.bsp2	BSPE	walker_0_f7

walker_0_f1	Faces
	Face3	14,9,-67,-78,-74,5,6,2
	FendQ
walker_0_f3	Faces
	Face3	12,11,85,-65,-69,2,7,5
	FendQ
walker_0_f5	Faces
	Face4	16,13,-83,-94,21,10,11,6,5
	Face4	14,15,100,-76,17,5,7,12,10
	Face4	44,16,0,0,127,13,11,10,12
	Face2	42,-1,0,0,0,5,15
	Face3	25,8,-95,73,-41,6,8,2
	Face3	21,10,79,91,-41,2,8,7
	Face4	27,12,-99,76,24,13,8,6,11
	Face4	23,14,81,93,30,12,7,8,13
	FendQ
walker_0_f6	Faces
	Face3	12,4,68,-55,-92,14,1,9
	Face3	14,5,-116,-34,-40,7,1,14
	Face3	18,6,84,80,52,9,1,7
	Face3	16,7,29,51,113,7,14,9
	FendQ
walker_0_f7	Faces
	Face3	18,0,-48,-39,111,4,0,6
	Face3	16,1,-73,8,-104,4,3,0
	Face3	14,2,118,13,-46,0,3,6
	Face3	20,3,-92,14,87,6,3,4
	FendQ
walker_0_EBSP
	EndShape

	endc

;--Shape file ----- C:\SHED\NSHAPES\R_BU_0.ANM ----
	ifne	DO_HDR

R_BU_0
	ShapeHdr	R_BU_0_P,0,R_BU_0_F,0,0,0,0,1,0,63,60,90,107,id_0_c,0,0,0,0,<R_BU_0>
	elseif
R_BU_0_P
	PointsXb	4
	pb	20,0,-20	;0
	pb	-15,-20,-15	;2
	pb	15,-20,15	;4
	pb	20,0,20	;6
	IFEQ	SPEED_MODE
	Frames	12
	jumptab	.A0A
	jumptab	.A2A
	jumptab	.A4A
	jumptab	.A6A
	jumptab	.A8A
	jumptab	.A10A
	jumptab	.A12A
	jumptab	.A14A
	jumptab	.A16A
	jumptab	.A18A
	jumptab	.A20A
	jumptab	.A22A
	ELSEIF
	Frames	23
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
	jumptab	.A14A
	jumptab	.A15A
	jumptab	.A16A
	jumptab	.A17A
	jumptab	.A18A
	jumptab	.A19A
	jumptab	.A20A
	jumptab	.A21A
	jumptab	.A22A
	ENDC
.A0A	Pointsb	14
	pb	-10,-40,10	;8
	pb	-50,-40,10	;9
	pb	-45,-20,15	;10
	pb	-15,-20,45	;11
	pb	-45,-20,45	;12
	pb	-10,-40,50	;13
	pb	30,-40,50	;14
	pb	-50,-40,50	;15
	pb	-5,-60,55	;16
	pb	25,-60,55	;17
	pb	-5,-60,85	;18
	pb	25,-60,85	;19
	pb	-10,-40,90	;20
	pb	30,-40,90	;21
	jump	.EB0
.A1A	Pointsb	14
	pb	-9,-40,12	;8
	pb	-46,-40,2	;9
	pb	-43,-20,8	;10
	pb	-22,-20,43	;11
	pb	-50,-20,36	;12
	pb	-19,-40,49	;13
	pb	21,-40,49	;14
	pb	-56,-40,39	;15
	pb	-14,-60,54	;16
	pb	16,-60,54	;17
	pb	-14,-60,84	;18
	pb	16,-60,84	;19
	pb	-19,-40,89	;20
	pb	20,-40,89	;21
	jump	.EB0
.A2A	Pointsb	14
	pb	-8,-40,13	;8
	pb	-43,-40,-7	;9
	pb	-41,-20,0	;10
	pb	-30,-20,41	;11
	pb	-56,-20,26	;12
	pb	-28,-40,48	;13
	pb	12,-40,48	;14
	pb	-63,-40,28	;15
	pb	-23,-60,53	;16
	pb	7,-60,53	;17
	pb	-23,-60,83	;18
	pb	7,-60,83	;19
	pb	-28,-40,88	;20
	pb	11,-40,88	;21
	jump	.EB0
.A3A	Pointsb	14
	pb	-8,-40,15	;8
	pb	-36,-40,-12	;9
	pb	-36,-20,-6	;10
	pb	-36,-20,36	;11
	pb	-56,-20,15	;12
	pb	-36,-40,42	;13
	pb	4,-40,42	;14
	pb	-63,-40,15	;15
	pb	-30,-60,48	;16
	pb	0,-60,48	;17
	pb	-30,-60,78	;18
	pb	0,-60,78	;19
	pb	-36,-40,82	;20
	pb	4,-40,82	;21
	jump	.EB0
.A4A	Pointsb	14
	pb	-8,-40,17	;8
	pb	-28,-40,-18	;9
	pb	-30,-20,-11	;10
	pb	-41,-20,30	;11
	pb	-56,-20,4	;12
	pb	-43,-40,37	;13
	pb	-3,-40,37	;14
	pb	-63,-40,2	;15
	pb	-38,-60,42	;16
	pb	-8,-60,42	;17
	pb	-38,-60,72	;18
	pb	-8,-60,72	;19
	pb	-43,-40,77	;20
	pb	-3,-40,77	;21
	jump	.EB0
.A5A	Pointsb	14
	pb	-9,-40,18	;8
	pb	-19,-40,-19	;9
	pb	-22,-20,-13	;10
	pb	-43,-20,22	;11
	pb	-50,-20,-6	;12
	pb	-46,-40,28	;13
	pb	-6,-40,28	;14
	pb	-56,-40,-9	;15
	pb	-42,-60,34	;16
	pb	-12,-60,34	;17
	pb	-42,-60,64	;18
	pb	-12,-60,64	;19
	pb	-46,-40,68	;20
	pb	-6,-40,68	;21
	jump	.EB0
.A6A	Pointsb	14
	pb	-10,-40,20	;8
	pb	-10,-40,-20	;9
	pb	-15,-20,-15	;10
	pb	-45,-20,15	;11
	pb	-45,-20,-15	;12
	pb	-50,-40,20	;13
	pb	-10,-40,20	;14
	pb	-50,-40,-20	;15
	pb	-45,-60,25	;16
	pb	-15,-60,25	;17
	pb	-45,-60,55	;18
	pb	-15,-60,55	;19
	pb	-50,-40,60	;20
	pb	-10,-40,60	;21
	jump	.EB0
.A7A	Pointsb	14
	pb	-12,-40,21	;8
	pb	-2,-40,-16	;9
	pb	-8,-20,-13	;10
	pb	-43,-20,8	;11
	pb	-36,-20,-20	;12
	pb	-49,-40,11	;13
	pb	-9,-40,11	;14
	pb	-39,-40,-26	;15
	pb	-44,-60,16	;16
	pb	-14,-60,16	;17
	pb	-44,-60,46	;18
	pb	-14,-60,46	;19
	pb	-49,-40,51	;20
	pb	-10,-40,51	;21
	jump	.EB0
.A8A	Pointsb	14
	pb	-13,-40,22	;8
	pb	7,-40,-13	;9
	pb	0,-20,-11	;10
	pb	-41,-20,0	;11
	pb	-26,-20,-26	;12
	pb	-48,-40,2	;13
	pb	-8,-40,2	;14
	pb	-28,-40,-33	;15
	pb	-43,-60,7	;16
	pb	-13,-60,7	;17
	pb	-43,-60,37	;18
	pb	-13,-60,37	;19
	pb	-48,-40,42	;20
	pb	-9,-40,42	;21
	jump	.EB0
.A9A	Pointsb	14
	pb	-15,-40,22	;8
	pb	12,-40,-6	;9
	pb	6,-20,-6	;10
	pb	-36,-20,-6	;11
	pb	-15,-20,-26	;12
	pb	-42,-40,-6	;13
	pb	-2,-40,-6	;14
	pb	-15,-40,-33	;15
	pb	-37,-60,0	;16
	pb	-8,-60,0	;17
	pb	-38,-60,30	;18
	pb	-8,-60,30	;19
	pb	-42,-40,34	;20
	pb	-2,-40,34	;21
	jump	.EB0
.A10A	Pointsb	14
	pb	-17,-40,22	;8
	pb	18,-40,2	;9
	pb	11,-20,0	;10
	pb	-30,-20,-11	;11
	pb	-4,-20,-26	;12
	pb	-37,-40,-13	;13
	pb	3,-40,-13	;14
	pb	-2,-40,-33	;15
	pb	-31,-60,-8	;16
	pb	-2,-60,-8	;17
	pb	-32,-60,22	;18
	pb	-2,-60,22	;19
	pb	-37,-40,27	;20
	pb	4,-40,27	;21
	jump	.EB0
.A11A	Pointsb	14
	pb	-18,-40,21	;8
	pb	19,-40,11	;9
	pb	13,-20,8	;10
	pb	-22,-20,-13	;11
	pb	6,-20,-20	;12
	pb	-28,-40,-16	;13
	pb	12,-40,-16	;14
	pb	9,-40,-26	;15
	pb	-23,-60,-12	;16
	pb	6,-60,-12	;17
	pb	-24,-60,18	;18
	pb	6,-60,18	;19
	pb	-28,-40,24	;20
	pb	12,-40,24	;21
	jump	.EB0
.A12A	Pointsb	14
	pb	-20,-40,20	;8
	pb	20,-40,20	;9
	pb	15,-20,15	;10
	pb	-15,-20,-15	;11
	pb	15,-20,-15	;12
	pb	-20,-40,-20	;13
	pb	20,-40,-20	;14
	pb	20,-40,-20	;15
	pb	-15,-60,-15	;16
	pb	15,-60,-15	;17
	pb	-15,-60,15	;18
	pb	15,-60,15	;19
	pb	-20,-40,20	;20
	pb	20,-40,20	;21
	jump	.EB0
.A13A	Pointsb	14
	pb	-21,-40,18	;8
	pb	16,-40,28	;9
	pb	13,-20,22	;10
	pb	-8,-20,-13	;11
	pb	20,-20,-6	;12
	pb	-11,-40,-19	;13
	pb	29,-40,-18	;14
	pb	26,-40,-9	;15
	pb	-6,-60,-14	;16
	pb	24,-60,-14	;17
	pb	-6,-60,16	;18
	pb	24,-60,16	;19
	pb	-11,-40,22	;20
	pb	28,-40,21	;21
	jump	.EB0
.A14A	Pointsb	14
	pb	-22,-40,17	;8
	pb	13,-40,37	;9
	pb	11,-20,30	;10
	pb	0,-20,-11	;11
	pb	26,-20,4	;12
	pb	-2,-40,-18	;13
	pb	38,-40,-17	;14
	pb	33,-40,2	;15
	pb	3,-60,-12	;16
	pb	33,-60,-12	;17
	pb	3,-60,17	;18
	pb	33,-60,18	;19
	pb	-2,-40,23	;20
	pb	37,-40,22	;21
	jump	.EB0
.A15A	Pointsb	14
	pb	-22,-40,15	;8
	pb	6,-40,42	;9
	pb	6,-20,35	;10
	pb	5,-20,-6	;11
	pb	26,-20,15	;12
	pb	5,-40,-13	;13
	pb	45,-40,-12	;14
	pb	33,-40,15	;15
	pb	10,-60,-7	;16
	pb	40,-60,-7	;17
	pb	10,-60,22	;18
	pb	40,-60,23	;19
	pb	5,-40,28	;20
	pb	45,-40,27	;21
	jump	.EB0
.A16A	Pointsb	14
	pb	-22,-40,13	;8
	pb	-2,-40,48	;9
	pb	0,-20,41	;10
	pb	11,-20,0	;11
	pb	26,-20,26	;12
	pb	13,-40,-7	;13
	pb	53,-40,-7	;14
	pb	33,-40,28	;15
	pb	18,-60,-2	;16
	pb	48,-60,-2	;17
	pb	18,-60,28	;18
	pb	48,-60,28	;19
	pb	13,-40,33	;20
	pb	53,-40,33	;21
	jump	.EB0
.A17A	Pointsb	14
	pb	-21,-40,12	;8
	pb	-11,-40,49	;9
	pb	-8,-20,43	;10
	pb	13,-20,8	;11
	pb	20,-20,36	;12
	pb	16,-40,2	;13
	pb	56,-40,2	;14
	pb	26,-40,39	;15
	pb	22,-60,6	;16
	pb	52,-60,6	;17
	pb	22,-60,36	;18
	pb	52,-60,36	;19
	pb	16,-40,42	;20
	pb	56,-40,42	;21
	jump	.EB0
.A18A	Pointsb	14
	pb	-20,-40,10	;8
	pb	-20,-40,50	;9
	pb	-15,-20,45	;10
	pb	15,-20,15	;11
	pb	15,-20,45	;12
	pb	20,-40,10	;13
	pb	60,-40,10	;14
	pb	20,-40,50	;15
	pb	25,-60,15	;16
	pb	55,-60,15	;17
	pb	25,-60,45	;18
	pb	55,-60,45	;19
	pb	20,-40,50	;20
	pb	60,-40,50	;21
	jump	.EB0
.A19A	Pointsb	14
	pb	-18,-40,9	;8
	pb	-28,-40,46	;9
	pb	-22,-20,43	;10
	pb	13,-20,22	;11
	pb	6,-20,50	;12
	pb	19,-40,19	;13
	pb	59,-40,19	;14
	pb	9,-40,56	;15
	pb	24,-60,24	;16
	pb	54,-60,24	;17
	pb	24,-60,54	;18
	pb	54,-60,54	;19
	pb	18,-40,59	;20
	pb	58,-40,59	;21
	jump	.EB0
.A20A	Pointsb	14
	pb	-17,-40,8	;8
	pb	-37,-40,43	;9
	pb	-30,-20,41	;10
	pb	11,-20,30	;11
	pb	-4,-20,56	;12
	pb	18,-40,28	;13
	pb	58,-40,28	;14
	pb	-2,-40,63	;15
	pb	23,-60,33	;16
	pb	53,-60,33	;17
	pb	23,-60,63	;18
	pb	53,-60,63	;19
	pb	17,-40,68	;20
	pb	57,-40,68	;21
	jump	.EB0
.A21A	Pointsb	14
	pb	-15,-40,8	;8
	pb	-42,-40,36	;9
	pb	-36,-20,36	;10
	pb	6,-20,36	;11
	pb	-15,-20,56	;12
	pb	12,-40,36	;13
	pb	52,-40,36	;14
	pb	-15,-40,63	;15
	pb	18,-60,40	;16
	pb	48,-60,40	;17
	pb	18,-60,70	;18
	pb	48,-60,70	;19
	pb	12,-40,76	;20
	pb	52,-40,76	;21
	jump	.EB0
.A22A	Pointsb	14
	pb	-13,-40,8	;8
	pb	-48,-40,28	;9
	pb	-41,-20,30	;10
	pb	0,-20,41	;11
	pb	-26,-20,56	;12
	pb	7,-40,43	;13
	pb	47,-40,43	;14
	pb	-28,-40,63	;15
	pb	12,-60,48	;16
	pb	42,-60,48	;17
	pb	12,-60,78	;18
	pb	42,-60,78	;19
	pb	7,-40,83	;20
	pb	47,-40,83	;21
.EB0

	EndPoints


R_BU_0_F
	Vizis	17
	Viz	8,13,15,0,127,0	;0
	Viz	21,14,13,0,-127,0	;1
	Viz	18,19,21,0,31,123	;2
	Viz	20,13,16,123,31,0	;3
	Viz	13,14,17,0,31,-123	;4
	Viz	19,17,14,-123,31,0	;5
	Viz	19,18,16,0,127,0	;6
	Viz	12,10,9,123,-31,0	;7
	Viz	15,13,11,0,-31,123	;8
	Viz	10,5,8,0,-31,-123	;9
	Viz	13,8,5,-123,-31,0	;10
	Viz	5,10,12,0,-127,0	;11
	Viz	4,3,0,-123,31,0	;12
	Viz	7,1,2,123,31,0	;13
	Viz	5,4,6,0,31,123	;14
	Viz	1,0,3,0,31,-123	;15
	Viz	4,5,2,0,127,0	;16
	BSPInit	R_BU_0_EBSP
	BSP	0,R_BU_0_f1,.bsp2
	BSPE	R_BU_0_f3
.bsp2	BSPE	R_BU_0_f4

R_BU_0_f1	Faces
	Face4	20,0,0,127,0,8,13,15,9
	FendQ
R_BU_0_f3	Faces
	Face4	18,9,0,-31,-123,10,5,8,9
	Face4	16,10,-123,-31,0,13,8,5,11
	Face4	12,11,0,-127,0,5,10,12,11
	Face4	23,13,123,31,0,7,1,2,5
	Face4	21,14,0,31,123,5,4,6,7
	Face4	27,16,0,127,0,4,5,2,3
	Face4	16,7,123,-31,0,12,10,9,15
	Face4	14,8,0,-31,123,15,13,11,12
	Face4	23,12,-123,31,0,4,3,0,6
	Face4	25,15,0,31,-123,1,0,3,2
	FendQ
R_BU_0_f4	Faces
	Face4	12,1,0,-127,0,21,14,13,20
	Face4	14,2,0,31,123,18,19,21,20
	Face4	16,3,123,31,0,20,13,16,18
	Face4	18,4,0,31,-123,13,14,17,16
	Face4	16,5,-123,31,0,19,17,14,21
	Face4	20,6,0,127,0,19,18,16,17
	FendQ
R_BU_0_EBSP
	EndShape

	endc

;--Shape file ----- C:\SHED\NSHAPES\s_wark_0.anm ----
	ifne	DO_HDR

s_wark_0
	ShapeHdr	s_wark_0_P,0,s_wark_0_F,0,0,0,0,1,0,25,52,24,58,id_0_c,0,0,0,0,<s_wark_0>
	elseif
s_wark_0_P
	IFEQ	SPEED_MODE
	Frames	12
	jumptab	.A0A
	jumptab	.A2A
	jumptab	.A4A
	jumptab	.A6A
	jumptab	.A8A
	jumptab	.A10A
	jumptab	.A12A
	jumptab	.A14A
	jumptab	.A16A
	jumptab	.A18A
	jumptab	.A20A
	jumptab	.A22A
	ELSEIF
	Frames	23
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
	jumptab	.A14A
	jumptab	.A15A
	jumptab	.A16A
	jumptab	.A17A
	jumptab	.A18A
	jumptab	.A19A
	jumptab	.A20A
	jumptab	.A21A
	jumptab	.A22A
	ENDC
.A0A	Pointsb	8
	pb	25,-33,-15	;0
	pb	-25,-33,-15	;1
	pb	0,-45,-10	;2
	pb	-20,0,-2	;3
	pb	20,0,-2	;4
	pb	0,-33,6	;5
	pb	0,-40,6	;6
	pb	0,-20,10	;7
	PointsXb	3
	pb	20,-50,-20	;8
	pb	15,-25,-10	;10
	pb	5,-38,-10	;12
	jump	.EB0
.A1A	Pointsb	8
	pb	25,-32,-16	;0
	pb	-25,-34,-14	;1
	pb	0,-46,-10	;2
	pb	-20,0,-6	;3
	pb	20,-2,2	;4
	pb	0,-34,6	;5
	pb	0,-40,6	;6
	pb	0,-20,10	;7
	PointsXb	3
	pb	20,-50,-21	;8
	pb	15,-26,-10	;10
	pb	5,-38,-10	;12
	jump	.EB0
.A2A	Pointsb	8
	pb	25,-32,-17	;0
	pb	-25,-35,-12	;1
	pb	0,-46,-10	;2
	pb	-20,0,-11	;3
	pb	20,-5,6	;4
	pb	0,-34,6	;5
	pb	0,-41,6	;6
	pb	0,-21,10	;7
	PointsXb	3
	pb	20,-49,-22	;8
	pb	15,-26,-10	;10
	pb	5,-39,-10	;12
	jump	.EB0
.A3A	Pointsb	8
	pb	25,-30,-18	;0
	pb	-25,-34,-10	;1
	pb	0,-45,-10	;2
	pb	-20,0,-16	;3
	pb	20,-8,9	;4
	pb	0,-33,6	;5
	pb	0,-40,6	;6
	pb	0,-20,10	;7
	PointsXb	3
	pb	20,-49,-21	;8
	pb	15,-25,-10	;10
	pb	5,-38,-10	;12
	jump	.EB0
.A4A	Pointsb	8
	pb	25,-27,-19	;0
	pb	-25,-33,-9	;1
	pb	0,-44,-10	;2
	pb	-20,0,-20	;3
	pb	20,-10,12	;4
	pb	0,-32,6	;5
	pb	0,-39,6	;6
	pb	0,-19,10	;7
	PointsXb	3
	pb	20,-49,-20	;8
	pb	15,-24,-10	;10
	pb	5,-37,-10	;12
	jump	.EB0
.A5A	Pointsb	8
	pb	25,-24,-19	;0
	pb	-25,-32,-8	;1
	pb	0,-43,-10	;2
	pb	-20,0,-22	;3
	pb	20,-13,14	;4
	pb	0,-31,6	;5
	pb	0,-38,6	;6
	pb	0,-18,10	;7
	PointsXb	3
	pb	20,-50,-18	;8
	pb	15,-23,-10	;10
	pb	5,-36,-10	;12
	jump	.EB0
.A6A	Pointsb	8
	pb	25,-22,-19	;0
	pb	-25,-31,-7	;1
	pb	0,-42,-10	;2
	pb	-20,0,-24	;3
	pb	20,-16,16	;4
	pb	0,-30,6	;5
	pb	0,-37,6	;6
	pb	0,-17,10	;7
	PointsXb	3
	pb	20,-50,-15	;8
	pb	15,-22,-10	;10
	pb	5,-35,-10	;12
	jump	.EB0
.A7A	Pointsb	8
	pb	25,-24,-19	;0
	pb	-25,-32,-8	;1
	pb	0,-43,-10	;2
	pb	-20,0,-22	;3
	pb	20,-13,14	;4
	pb	0,-31,6	;5
	pb	0,-38,6	;6
	pb	0,-18,10	;7
	PointsXb	3
	pb	20,-50,-18	;8
	pb	15,-23,-10	;10
	pb	5,-36,-10	;12
	jump	.EB0
.A8A	Pointsb	8
	pb	25,-27,-19	;0
	pb	-25,-33,-9	;1
	pb	0,-44,-10	;2
	pb	-20,0,-20	;3
	pb	20,-10,12	;4
	pb	0,-32,6	;5
	pb	0,-39,6	;6
	pb	0,-19,10	;7
	PointsXb	3
	pb	20,-49,-20	;8
	pb	15,-24,-10	;10
	pb	5,-37,-10	;12
	jump	.EB0
.A9A	Pointsb	8
	pb	25,-30,-18	;0
	pb	-25,-34,-10	;1
	pb	0,-45,-10	;2
	pb	-20,0,-16	;3
	pb	20,-8,9	;4
	pb	0,-33,6	;5
	pb	0,-40,6	;6
	pb	0,-20,10	;7
	PointsXb	3
	pb	20,-48,-22	;8
	pb	15,-25,-10	;10
	pb	5,-38,-10	;12
	jump	.EB0
.A10A	Pointsb	8
	pb	25,-32,-17	;0
	pb	-25,-35,-12	;1
	pb	0,-46,-10	;2
	pb	-20,0,-11	;3
	pb	20,-5,6	;4
	pb	0,-34,6	;5
	pb	0,-41,6	;6
	pb	0,-21,10	;7
	PointsXb	3
	pb	20,-47,-23	;8
	pb	15,-26,-10	;10
	pb	5,-39,-10	;12
	jump	.EB0
.A11A	Pointsb	8
	pb	25,-32,-16	;0
	pb	-25,-34,-14	;1
	pb	0,-46,-10	;2
	pb	-20,0,-6	;3
	pb	20,-2,2	;4
	pb	0,-34,6	;5
	pb	0,-40,6	;6
	pb	0,-20,10	;7
	PointsXb	3
	pb	20,-48,-22	;8
	pb	15,-26,-10	;10
	pb	5,-38,-10	;12
	jump	.EB0
.A12A	Pointsb	8
	pb	25,-33,-15	;0
	pb	-25,-33,-15	;1
	pb	0,-45,-10	;2
	pb	-20,0,-2	;3
	pb	20,0,-2	;4
	pb	0,-33,6	;5
	pb	0,-40,6	;6
	pb	0,-20,10	;7
	PointsXb	3
	pb	20,-50,-20	;8
	pb	15,-25,-10	;10
	pb	5,-38,-10	;12
	jump	.EB0
.A13A	Pointsb	8
	pb	25,-34,-14	;0
	pb	-25,-32,-16	;1
	pb	0,-46,-10	;2
	pb	-20,-2,2	;3
	pb	20,0,-6	;4
	pb	0,-34,6	;5
	pb	0,-40,6	;6
	pb	0,-20,10	;7
	PointsXb	3
	pb	20,-50,-20	;8
	pb	15,-26,-10	;10
	pb	5,-38,-10	;12
	jump	.EB0
.A14A	Pointsb	8
	pb	25,-35,-12	;0
	pb	-25,-32,-17	;1
	pb	0,-46,-10	;2
	pb	-20,-5,6	;3
	pb	20,0,-11	;4
	pb	0,-34,6	;5
	pb	0,-41,6	;6
	pb	0,-21,10	;7
	PointsXb	3
	pb	20,-51,-20	;8
	pb	15,-26,-10	;10
	pb	5,-39,-10	;12
	jump	.EB0
.A15A	Pointsb	8
	pb	25,-34,-11	;0
	pb	-25,-30,-18	;1
	pb	0,-45,-10	;2
	pb	-20,-7,9	;3
	pb	20,0,-15	;4
	pb	0,-33,6	;5
	pb	0,-40,6	;6
	pb	0,-20,10	;7
	PointsXb	3
	pb	20,-52,-18	;8
	pb	15,-25,-10	;10
	pb	5,-38,-10	;12
	jump	.EB0
.A16A	Pointsb	8
	pb	25,-33,-9	;0
	pb	-25,-27,-19	;1
	pb	0,-44,-10	;2
	pb	-20,-10,12	;3
	pb	20,0,-20	;4
	pb	0,-32,6	;5
	pb	0,-39,6	;6
	pb	0,-19,10	;7
	PointsXb	3
	pb	20,-52,-15	;8
	pb	15,-24,-10	;10
	pb	5,-37,-10	;12
	jump	.EB0
.A17A	Pointsb	8
	pb	25,-32,-8	;0
	pb	-25,-24,-19	;1
	pb	0,-43,-10	;2
	pb	-20,-13,14	;3
	pb	20,0,-22	;4
	pb	0,-31,6	;5
	pb	0,-38,6	;6
	pb	0,-18,10	;7
	PointsXb	3
	pb	20,-51,-14	;8
	pb	15,-23,-10	;10
	pb	5,-36,-10	;12
	jump	.EB0
.A18A	Pointsb	8
	pb	25,-31,-7	;0
	pb	-25,-22,-19	;1
	pb	0,-42,-10	;2
	pb	-20,-16,16	;3
	pb	20,0,-24	;4
	pb	0,-30,6	;5
	pb	0,-37,6	;6
	pb	0,-17,10	;7
	PointsXb	3
	pb	20,-50,-13	;8
	pb	15,-22,-10	;10
	pb	5,-35,-10	;12
	jump	.EB0
.A19A	Pointsb	8
	pb	25,-32,-8	;0
	pb	-25,-24,-19	;1
	pb	0,-43,-10	;2
	pb	-20,-13,14	;3
	pb	20,0,-22	;4
	pb	0,-31,6	;5
	pb	0,-38,6	;6
	pb	0,-18,10	;7
	PointsXb	3
	pb	20,-50,-15	;8
	pb	15,-23,-10	;10
	pb	5,-36,-10	;12
	jump	.EB0
.A20A	Pointsb	8
	pb	25,-33,-9	;0
	pb	-25,-27,-19	;1
	pb	0,-44,-10	;2
	pb	-20,-10,12	;3
	pb	20,0,-20	;4
	pb	0,-32,6	;5
	pb	0,-39,6	;6
	pb	0,-19,10	;7
	PointsXb	3
	pb	20,-51,-17	;8
	pb	15,-24,-10	;10
	pb	5,-37,-10	;12
	jump	.EB0
.A21A	Pointsb	8
	pb	25,-34,-10	;0
	pb	-25,-30,-18	;1
	pb	0,-45,-10	;2
	pb	-20,-8,9	;3
	pb	20,0,-16	;4
	pb	0,-33,6	;5
	pb	0,-40,6	;6
	pb	0,-20,10	;7
	PointsXb	3
	pb	20,-51,-18	;8
	pb	15,-25,-10	;10
	pb	5,-38,-10	;12
	jump	.EB0
.A22A	Pointsb	8
	pb	25,-35,-12	;0
	pb	-25,-32,-17	;1
	pb	0,-46,-10	;2
	pb	-20,-5,6	;3
	pb	20,0,-11	;4
	pb	0,-34,6	;5
	pb	0,-41,6	;6
	pb	0,-21,10	;7
	PointsXb	3
	pb	20,-51,-20	;8
	pb	15,-26,-10	;10
	pb	5,-39,-10	;12
.EB0

	EndPoints


s_wark_0_F
	Vizis	11
	Viz	6,13,2,102,73,23	;2
	Viz	2,12,6,-102,73,23	;3
	Viz	5,13,6,121,0,38	;4
	Viz	6,12,5,-121,0,38	;5
	Viz	7,13,5,119,13,41	;6
	Viz	10,0,4,-25,42,117	;7
	Viz	3,1,11,25,42,117	;9
	Viz	5,12,7,-119,13,41	;11
	Viz	13,7,11,81,62,76	;12
	Viz	10,7,12,-81,62,76	;13
	Viz	10,11,7,0,-123,-31	;14

s_wark_0_f1	Faces
	Face3	32,0,102,73,23,6,13,2
	Face3	34,1,-102,73,23,2,12,6
	Face3	43,2,121,0,38,5,13,6
	Face3	43,3,-121,0,38,6,12,5
	Face3	30,4,119,13,41,7,13,5
	Face3	6,5,-25,42,117,10,0,4
	Face3	6,6,25,42,117,3,1,11
	Face3	34,7,-119,13,41,5,12,7
	Face3	28,8,81,62,76,13,7,11
	Face3	32,9,-81,62,76,10,7,12
	Face3	28,10,0,-123,-31,10,11,7
	Face2	44,-1,0,0,0,13,9
	Face2	44,-1,0,0,0,8,12
	Face2	25,-1,0,0,0,13,1
	Face2	25,-1,0,0,0,0,12
	Fend
	EndShape

	endc

;--Shape file ----- C:\SHED\NSHAPES\warker_3.anm ----
	ifne	DO_HDR

Bwarker_3
	ShapeHdr	warker_3_P,0,warker_3_F,0,0,0,0,1,0,32,42,25,44,id_0_c,0,0,0,0,<warker_3>
warker_3
	ShapeHdr	warker_3_P,0,warker_3_F,0,0,0,0,0,0,32,42,25,44,id_0_c,0,0,0,0,<warker_3>
	elseif
warker_3_P
	IFEQ	SPEED_MODE
	Frames	12
	jumptab	.A0A
	jumptab	.A2A
	jumptab	.A4A
	jumptab	.A6A
	jumptab	.A8A
	jumptab	.A10A
	jumptab	.A12A
	jumptab	.A14A
	jumptab	.A16A
	jumptab	.A18A
	jumptab	.A20A
	jumptab	.A22A
	ELSEIF
	Frames	23
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
	jumptab	.A14A
	jumptab	.A15A
	jumptab	.A16A
	jumptab	.A17A
	jumptab	.A18A
	jumptab	.A19A
	jumptab	.A20A
	jumptab	.A21A
	jumptab	.A22A
	ENDC
.A0A	Pointsb	9
	pb	-20,0,-2	;0
	pb	25,-28,-12	;1
	pb	-15,-23,-10	;2
	pb	15,-23,-10	;3
	pb	-5,-38,-10	;4
	pb	5,-38,-10	;5
	pb	-25,-28,-12	;6
	pb	0,-29,10	;7
	pb	20,0,-2	;8
	jump	.EB0
.A1A	Pointsb	9
	pb	-20,-4,2	;0
	pb	26,-28,-11	;1
	pb	-14,-25,-10	;2
	pb	16,-24,-10	;3
	pb	-4,-40,-10	;4
	pb	6,-39,-10	;5
	pb	-24,-30,-13	;6
	pb	2,-30,10	;7
	pb	20,0,-6	;8
	jump	.EB0
.A2A	Pointsb	9
	pb	-21,-9,5	;0
	pb	27,-28,-10	;1
	pb	-13,-27,-10	;2
	pb	17,-24,-10	;3
	pb	-2,-41,-10	;4
	pb	8,-40,-10	;5
	pb	-22,-33,-14	;6
	pb	3,-32,10	;7
	pb	20,0,-10	;8
	jump	.EB0
.A3A	Pointsb	9
	pb	-20,-13,8	;0
	pb	28,-27,-9	;1
	pb	-12,-28,-10	;2
	pb	18,-24,-10	;3
	pb	0,-41,-10	;4
	pb	10,-40,-10	;5
	pb	-20,-33,-14	;6
	pb	4,-32,10	;7
	pb	20,0,-14	;8
	jump	.EB0
.A4A	Pointsb	9
	pb	-20,-17,11	;0
	pb	30,-26,-8	;1
	pb	-11,-28,-10	;2
	pb	19,-23,-10	;3
	pb	2,-41,-10	;4
	pb	12,-39,-10	;5
	pb	-19,-33,-15	;6
	pb	5,-31,10	;7
	pb	20,0,-18	;8
	jump	.EB0
.A5A	Pointsb	9
	pb	-19,-19,12	;0
	pb	30,-23,-7	;1
	pb	-10,-27,-10	;2
	pb	20,-21,-10	;3
	pb	3,-40,-10	;4
	pb	13,-38,-10	;5
	pb	-18,-32,-15	;6
	pb	6,-30,10	;7
	pb	20,0,-22	;8
	jump	.EB0
.A6A	Pointsb	9
	pb	-18,-21,13	;0
	pb	30,-20,-6	;1
	pb	-9,-26,-10	;2
	pb	20,-19,-10	;3
	pb	4,-38,-10	;4
	pb	14,-36,-10	;5
	pb	-18,-32,-15	;6
	pb	7,-28,10	;7
	pb	20,0,-25	;8
	jump	.EB0
.A7A	Pointsb	9
	pb	-19,-19,12	;0
	pb	30,-23,-7	;1
	pb	-10,-27,-10	;2
	pb	20,-21,-10	;3
	pb	3,-40,-10	;4
	pb	13,-38,-10	;5
	pb	-18,-32,-15	;6
	pb	6,-30,10	;7
	pb	20,0,-22	;8
	jump	.EB0
.A8A	Pointsb	9
	pb	-20,-17,11	;0
	pb	30,-26,-8	;1
	pb	-11,-28,-10	;2
	pb	19,-23,-10	;3
	pb	2,-41,-10	;4
	pb	12,-39,-10	;5
	pb	-19,-33,-15	;6
	pb	5,-31,10	;7
	pb	20,0,-18	;8
	jump	.EB0
.A9A	Pointsb	9
	pb	-21,-12,8	;0
	pb	28,-26,-9	;1
	pb	-12,-27,-10	;2
	pb	18,-23,-10	;3
	pb	0,-40,-10	;4
	pb	10,-39,-10	;5
	pb	-21,-32,-14	;6
	pb	4,-31,10	;7
	pb	20,0,-14	;8
	jump	.EB0
.A10A	Pointsb	9
	pb	-22,-8,5	;0
	pb	27,-27,-10	;1
	pb	-13,-26,-10	;2
	pb	17,-23,-10	;3
	pb	-2,-40,-10	;4
	pb	8,-39,-10	;5
	pb	-23,-32,-14	;6
	pb	3,-31,10	;7
	pb	20,0,-10	;8
	jump	.EB0
.A11A	Pointsb	9
	pb	-21,-4,2	;0
	pb	26,-28,-11	;1
	pb	-14,-24,-10	;2
	pb	16,-23,-10	;3
	pb	-4,-39,-10	;4
	pb	6,-38,-10	;5
	pb	-24,-30,-13	;6
	pb	2,-30,10	;7
	pb	20,0,-6	;8
	jump	.EB0
.A12A	Pointsb	9
	pb	-20,0,-2	;0
	pb	25,-28,-12	;1
	pb	-15,-23,-10	;2
	pb	15,-23,-10	;3
	pb	-5,-38,-10	;4
	pb	5,-38,-10	;5
	pb	-25,-28,-12	;6
	pb	0,-29,10	;7
	pb	20,0,-2	;8
	jump	.EB0
.A13A	Pointsb	9
	pb	-20,0,-6	;0
	pb	24,-30,-13	;1
	pb	-16,-24,-10	;2
	pb	14,-25,-10	;3
	pb	-6,-39,-10	;4
	pb	4,-40,-10	;5
	pb	-26,-28,-11	;6
	pb	-2,-30,10	;7
	pb	20,-4,2	;8
	jump	.EB0
.A14A	Pointsb	9
	pb	-20,0,-10	;0
	pb	22,-33,-14	;1
	pb	-17,-24,-10	;2
	pb	13,-27,-10	;3
	pb	-8,-40,-10	;4
	pb	2,-41,-10	;5
	pb	-27,-28,-10	;6
	pb	-3,-32,10	;7
	pb	21,-9,5	;8
	jump	.EB0
.A15A	Pointsb	9
	pb	-20,0,-14	;0
	pb	20,-33,-14	;1
	pb	-18,-24,-10	;2
	pb	12,-28,-10	;3
	pb	-10,-40,-10	;4
	pb	0,-41,-10	;5
	pb	-28,-27,-9	;6
	pb	-4,-32,10	;7
	pb	20,-13,8	;8
	jump	.EB0
.A16A	Pointsb	9
	pb	-20,0,-18	;0
	pb	19,-33,-15	;1
	pb	-19,-23,-10	;2
	pb	11,-28,-10	;3
	pb	-12,-39,-10	;4
	pb	-2,-41,-10	;5
	pb	-30,-26,-8	;6
	pb	-5,-31,10	;7
	pb	20,-17,11	;8
	jump	.EB0
.A17A	Pointsb	9
	pb	-20,-1,-20	;0
	pb	18,-34,-15	;1
	pb	-20,-23,-10	;2
	pb	10,-29,-10	;3
	pb	-14,-40,-10	;4
	pb	-4,-42,-10	;5
	pb	-31,-26,-8	;6
	pb	-6,-32,10	;7
	pb	18,-21,12	;8
	jump	.EB0
.A18A	Pointsb	9
	pb	-21,-2,-22	;0
	pb	16,-36,-15	;1
	pb	-21,-23,-10	;2
	pb	8,-30,-10	;3
	pb	-15,-40,-10	;4
	pb	-5,-42,-10	;5
	pb	-32,-25,-7	;6
	pb	-8,-32,10	;7
	pb	17,-25,13	;8
	jump	.EB0
.A19A	Pointsb	9
	pb	-20,-1,-20	;0
	pb	18,-34,-15	;1
	pb	-20,-23,-10	;2
	pb	10,-29,-10	;3
	pb	-14,-40,-10	;4
	pb	-4,-42,-10	;5
	pb	-31,-26,-8	;6
	pb	-6,-32,10	;7
	pb	18,-21,12	;8
	jump	.EB0
.A20A	Pointsb	9
	pb	-20,0,-18	;0
	pb	19,-33,-15	;1
	pb	-19,-23,-10	;2
	pb	11,-28,-10	;3
	pb	-12,-39,-10	;4
	pb	-2,-41,-10	;5
	pb	-30,-26,-8	;6
	pb	-5,-31,10	;7
	pb	20,-17,11	;8
	jump	.EB0
.A21A	Pointsb	9
	pb	-20,0,-14	;0
	pb	21,-32,-14	;1
	pb	-18,-23,-10	;2
	pb	12,-27,-10	;3
	pb	-10,-39,-10	;4
	pb	0,-40,-10	;5
	pb	-28,-26,-9	;6
	pb	-4,-31,10	;7
	pb	20,-12,8	;8
	jump	.EB0
.A22A	Pointsb	9
	pb	-20,0,-10	;0
	pb	23,-32,-14	;1
	pb	-17,-23,-10	;2
	pb	13,-26,-10	;3
	pb	-8,-39,-10	;4
	pb	2,-40,-10	;5
	pb	-27,-27,-10	;6
	pb	-3,-31,10	;7
	pb	21,-8,5	;8
.EB0

	EndPoints


warker_3_F
	Vizis	6
	Viz	3,1,8,25,106,66	;0
	Viz	0,6,2,-10,-42,119	;2
	Viz	5,7,4,23,113,53	;4
	Viz	4,7,2,105,46,55	;5
	Viz	3,7,5,-82,82,53	;6
	Viz	3,2,7,-20,-121,34	;7
	BSPInit	warker_3_EBSP
	BSP	4,warker_3_f1,.bsp2
	BSPE	warker_3_f3
.bsp2	BSPE	warker_3_f4

warker_3_f1	Faces
	Face3	14,4,-82,82,53,3,7,5
	FendQ
warker_3_f3	Faces
	Face3	6,1,-10,-42,119,0,6,2
	Face3	20,3,105,46,55,4,7,2
	Face3	12,5,-20,-121,34,3,2,7
	Face2	25,-1,0,0,0,4,6
	FendQ
warker_3_f4	Faces
	Face3	6,0,25,106,66,3,1,8
	Face2	25,-1,0,0,0,1,5
	Face3	44,2,23,113,53,5,7,4
	FendQ
warker_3_EBSP
	EndShape

	endc

;--Shape file ----- C:\SHED\SHAPES6\MY_BIRD.ANM ----
	ifne	DO_HDR

my_bird
	ShapeHdr	my_bird_P,0,my_bird_F,0,0,0,0,1,0,85,67,64,86,id_0_c,0,0,0,0,<my_bird>
	elseif
my_bird_P
	Pointsb	4
	pb	0,-8,-32	;0
	pb	0,9,16	;1
	pb	0,-16,16	;2
	pb	0,0,64	;3
	PointsXb	2
	pb	-4,0,0	;4
	pb	-16,0,16	;6
	IFEQ	SPEED_MODE
	Frames	17
	jumptab	.A0A
	jumptab	.A2A
	jumptab	.A4A
	jumptab	.A6A
	jumptab	.A8A
	jumptab	.A10A
	jumptab	.A12A
	jumptab	.A14A
	jumptab	.A16A
	jumptab	.A18A
	jumptab	.A20A
	jumptab	.A22A
	jumptab	.A24A
	jumptab	.A26A
	jumptab	.A28A
	jumptab	.A30A
	jumptab	.A32A
	ELSEIF
	Frames	33
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
	jumptab	.A14A
	jumptab	.A15A
	jumptab	.A16A
	jumptab	.A17A
	jumptab	.A18A
	jumptab	.A19A
	jumptab	.A20A
	jumptab	.A21A
	jumptab	.A22A
	jumptab	.A23A
	jumptab	.A24A
	jumptab	.A25A
	jumptab	.A26A
	jumptab	.A27A
	jumptab	.A28A
	jumptab	.A29A
	jumptab	.A30A
	jumptab	.A31A
	jumptab	.A32A
	ENDC
.A0A	Pointsb	6
	pb	46,4,-8	;8
	pb	-47,4,-8	;9
	pb	-81,-23,0	;10
	pb	81,-24,0	;11
	pb	40,0,16	;12
	pb	-40,0,16	;13
	PointsXb	2
	pb	-4,-14,-48	;14
	pb	-8,-8,-40	;16
	jump	.EB0
.A1A	Pointsb	6
	pb	44,9,-8	;8
	pb	-46,9,-8	;9
	pb	-82,-16,0	;10
	pb	82,-16,0	;11
	pb	39,4,16	;12
	pb	-40,4,16	;13
	PointsXb	2
	pb	-4,-12,-49	;14
	pb	-8,-8,-40	;16
	jump	.EB0
.A2A	Pointsb	6
	pb	43,14,-8	;8
	pb	-44,14,-8	;9
	pb	-83,-8,0	;10
	pb	83,-9,0	;11
	pb	38,8,16	;12
	pb	-39,8,16	;13
	PointsXb	2
	pb	-4,-10,-50	;14
	pb	-8,-7,-40	;16
	jump	.EB0
.A3A	Pointsb	6
	pb	40,17,-8	;8
	pb	-42,18,-8	;9
	pb	-82,1,0	;10
	pb	83,0,0	;11
	pb	37,11,16	;12
	pb	-38,11,16	;13
	PointsXb	2
	pb	-4,-8,-50	;14
	pb	-8,-6,-40	;16
	jump	.EB0
.A4A	Pointsb	6
	pb	38,20,-8	;8
	pb	-39,21,-8	;9
	pb	-82,10,0	;10
	pb	83,10,0	;11
	pb	36,14,16	;12
	pb	-36,14,16	;13
	PointsXb	2
	pb	-4,-6,-49	;14
	pb	-8,-5,-39	;16
	jump	.EB0
.A5A	Pointsb	6
	pb	35,23,-8	;8
	pb	-36,24,-8	;9
	pb	-78,22,0	;10
	pb	80,22,0	;11
	pb	34,16,16	;12
	pb	-34,16,16	;13
	PointsXb	2
	pb	-4,-4,-49	;14
	pb	-8,-4,-39	;16
	jump	.EB0
.A6A	Pointsb	6
	pb	32,26,-8	;8
	pb	-33,26,-8	;9
	pb	-75,34,0	;10
	pb	76,34,0	;11
	pb	31,18,16	;12
	pb	-31,18,16	;13
	PointsXb	2
	pb	-4,-1,-49	;14
	pb	-8,-4,-39	;16
	jump	.EB0
.A7A	Pointsb	6
	pb	29,28,-8	;8
	pb	-29,28,-8	;9
	pb	-66,44,0	;10
	pb	68,44,0	;11
	pb	28,20,16	;12
	pb	-28,20,16	;13
	PointsXb	2
	pb	-4,2,-48	;14
	pb	-8,-4,-38	;16
	jump	.EB0
.A8A	Pointsb	6
	pb	26,29,-8	;8
	pb	-25,30,-8	;9
	pb	-58,55,0	;10
	pb	60,55,0	;11
	pb	26,22,16	;12
	pb	-26,22,16	;13
	PointsXb	2
	pb	-4,4,-46	;14
	pb	-8,-3,-38	;16
	jump	.EB0
.A9A	Pointsb	6
	pb	24,30,-8	;8
	pb	-24,30,-8	;9
	pb	-49,60,0	;10
	pb	50,61,0	;11
	pb	25,22,16	;12
	pb	-25,22,16	;13
	PointsXb	2
	pb	-4,3,-46	;14
	pb	-8,-4,-38	;16
	jump	.EB0
.A10A	Pointsb	6
	pb	22,30,-8	;8
	pb	-22,31,-8	;9
	pb	-40,66,0	;10
	pb	40,67,0	;11
	pb	24,23,16	;12
	pb	-24,23,16	;13
	PointsXb	2
	pb	-4,2,-47	;14
	pb	-8,-4,-39	;16
	jump	.EB0
.A11A	Pointsb	6
	pb	24,30,-8	;8
	pb	-24,30,-8	;9
	pb	-40,66,0	;10
	pb	41,66,0	;11
	pb	25,22,16	;12
	pb	-25,22,16	;13
	PointsXb	2
	pb	-4,2,-47	;14
	pb	-8,-4,-39	;16
	jump	.EB0
.A12A	Pointsb	6
	pb	26,29,-8	;8
	pb	-25,30,-8	;9
	pb	-41,65,0	;10
	pb	42,66,0	;11
	pb	26,22,16	;12
	pb	-26,22,16	;13
	PointsXb	2
	pb	-4,1,-47	;14
	pb	-8,-5,-39	;16
	jump	.EB0
.A13A	Pointsb	6
	pb	28,28,-8	;8
	pb	-28,28,-8	;9
	pb	-45,64,0	;10
	pb	46,64,0	;11
	pb	28,20,16	;12
	pb	-28,20,16	;13
	PointsXb	2
	pb	-4,0,-48	;14
	pb	-8,-6,-40	;16
	jump	.EB0
.A14A	Pointsb	6
	pb	30,27,-8	;8
	pb	-31,27,-8	;9
	pb	-49,62,0	;10
	pb	50,63,0	;11
	pb	29,19,16	;12
	pb	-29,19,16	;13
	PointsXb	2
	pb	-4,0,-48	;14
	pb	-8,-7,-40	;16
	jump	.EB0
.A15A	Pointsb	6
	pb	34,24,-8	;8
	pb	-35,24,-8	;9
	pb	-56,56,0	;10
	pb	56,58,0	;11
	pb	32,16,16	;12
	pb	-32,16,16	;13
	PointsXb	2
	pb	-4,-1,-48	;14
	pb	-8,-8,-40	;16
	jump	.EB0
.A16A	Pointsb	6
	pb	38,20,-8	;8
	pb	-39,21,-8	;9
	pb	-63,51,0	;10
	pb	63,53,0	;11
	pb	36,14,16	;12
	pb	-36,14,16	;13
	PointsXb	2
	pb	-4,-2,-48	;14
	pb	-8,-8,-40	;16
	jump	.EB0
.A17A	Pointsb	6
	pb	40,17,-8	;8
	pb	-42,18,-8	;9
	pb	-66,48,0	;10
	pb	66,48,0	;11
	pb	37,11,16	;12
	pb	-38,11,16	;13
	PointsXb	2
	pb	-4,-4,-49	;14
	pb	-8,-8,-40	;16
	jump	.EB0
.A18A	Pointsb	6
	pb	43,14,-8	;8
	pb	-44,14,-8	;9
	pb	-69,44,0	;10
	pb	69,44,0	;11
	pb	38,8,16	;12
	pb	-39,8,16	;13
	PointsXb	2
	pb	-4,-6,-50	;14
	pb	-8,-9,-40	;16
	jump	.EB0
.A19A	Pointsb	6
	pb	44,12,-8	;8
	pb	-45,12,-8	;9
	pb	-70,42,0	;10
	pb	70,42,0	;11
	pb	39,6,16	;12
	pb	-40,6,16	;13
	PointsXb	2
	pb	-4,-8,-50	;14
	pb	-8,-10,-40	;16
	jump	.EB0
.A20A	Pointsb	6
	pb	45,9,-8	;8
	pb	-46,9,-8	;9
	pb	-70,40,0	;10
	pb	71,40,0	;11
	pb	40,4,16	;12
	pb	-40,4,16	;13
	PointsXb	2
	pb	-4,-10,-49	;14
	pb	-8,-11,-39	;16
	jump	.EB0
.A21A	Pointsb	6
	pb	46,6,-8	;8
	pb	-46,6,-8	;9
	pb	-73,35,0	;10
	pb	74,36,0	;11
	pb	40,2,16	;12
	pb	-40,2,16	;13
	PointsXb	2
	pb	-4,-12,-49	;14
	pb	-8,-12,-39	;16
	jump	.EB0
.A22A	Pointsb	6
	pb	46,4,-8	;8
	pb	-47,4,-8	;9
	pb	-76,30,0	;10
	pb	77,31,0	;11
	pb	40,0,16	;12
	pb	-40,0,16	;13
	PointsXb	2
	pb	-4,-15,-49	;14
	pb	-8,-12,-39	;16
	jump	.EB0
.A23A	Pointsb	6
	pb	46,0,-8	;8
	pb	-47,0,-8	;9
	pb	-80,18,0	;10
	pb	81,18,0	;11
	pb	40,-3,16	;12
	pb	-40,-3,16	;13
	PointsXb	2
	pb	-4,-18,-48	;14
	pb	-8,-12,-38	;16
	jump	.EB0
.A24A	Pointsb	6
	pb	46,-4,-8	;8
	pb	-47,-4,-8	;9
	pb	-85,7,0	;10
	pb	85,6,0	;11
	pb	39,-6,16	;12
	pb	-39,-6,16	;13
	PointsXb	2
	pb	-4,-20,-46	;14
	pb	-8,-13,-38	;16
	jump	.EB0
.A25A	Pointsb	6
	pb	46,-6,-8	;8
	pb	-46,-6,-8	;9
	pb	-84,-4,0	;10
	pb	85,-4,0	;11
	pb	38,-8,16	;12
	pb	-38,-8,16	;13
	PointsXb	2
	pb	-4,-19,-46	;14
	pb	-8,-12,-38	;16
	jump	.EB0
.A26A	Pointsb	6
	pb	45,-9,-8	;8
	pb	-46,-9,-8	;9
	pb	-84,-14,0	;10
	pb	85,-14,0	;11
	pb	38,-10,16	;12
	pb	-38,-10,16	;13
	PointsXb	2
	pb	-4,-18,-47	;14
	pb	-8,-12,-39	;16
	jump	.EB0
.A27A	Pointsb	6
	pb	44,-10,-8	;8
	pb	-46,-10,-8	;9
	pb	-82,-21,0	;10
	pb	83,-22,0	;11
	pb	38,-11,16	;12
	pb	-38,-11,16	;13
	PointsXb	2
	pb	-4,-18,-47	;14
	pb	-8,-12,-39	;16
	jump	.EB0
.A28A	Pointsb	6
	pb	44,-12,-8	;8
	pb	-45,-12,-8	;9
	pb	-80,-28,0	;10
	pb	81,-29,0	;11
	pb	37,-12,16	;12
	pb	-37,-12,16	;13
	PointsXb	2
	pb	-4,-17,-47	;14
	pb	-8,-11,-39	;16
	jump	.EB0
.A29A	Pointsb	6
	pb	44,-10,-8	;8
	pb	-46,-10,-8	;9
	pb	-78,-32,0	;10
	pb	79,-33,0	;11
	pb	38,-11,16	;12
	pb	-38,-11,16	;13
	PointsXb	2
	pb	-4,-16,-48	;14
	pb	-8,-10,-40	;16
	jump	.EB0
.A30A	Pointsb	6
	pb	45,-9,-8	;8
	pb	-46,-9,-8	;9
	pb	-76,-37,0	;10
	pb	77,-37,0	;11
	pb	38,-10,16	;12
	pb	-38,-10,16	;13
	PointsXb	2
	pb	-4,-16,-48	;14
	pb	-8,-9,-40	;16
	jump	.EB0
.A31A	Pointsb	6
	pb	46,-6,-8	;8
	pb	-46,-6,-8	;9
	pb	-77,-35,0	;10
	pb	78,-36,0	;11
	pb	38,-8,16	;12
	pb	-38,-8,16	;13
	PointsXb	2
	pb	-4,-16,-48	;14
	pb	-8,-9,-40	;16
	jump	.EB0
.A32A	Pointsb	6
	pb	46,-4,-8	;8
	pb	-47,-4,-8	;9
	pb	-78,-33,0	;10
	pb	78,-34,0	;11
	pb	39,-6,16	;12
	pb	-39,-6,16	;13
	PointsXb	2
	pb	-4,-15,-48	;14
	pb	-8,-9,-40	;16
.EB0

	EndPoints


my_bird_F
	Vizis	28
	Viz	15,14,16,0,-102,-76	;0
	Viz	17,16,14,0,102,76	;1
	Viz	17,16,0,0,-127,0	;2
	Viz	3,7,1,-61,-109,20	;3
	Viz	1,6,3,61,-109,20	;4
	Viz	2,7,3,-87,87,29	;5
	Viz	0,16,17,0,127,0	;6
	Viz	1,7,5,-58,-104,-44	;7
	Viz	12,8,11,71,99,-34	;8
	Viz	11,8,12,-71,-99,34	;9
	Viz	4,6,1,58,-104,-44	;10
	Viz	7,2,5,-79,79,-60	;11
	Viz	4,2,6,79,79,-60	;12
	Viz	8,12,5,-8,125,-19	;13
	Viz	5,12,8,8,-125,19	;14
	Viz	4,0,2,122,36,-6	;15
	Viz	2,0,5,-122,36,-6	;16
	Viz	3,6,2,87,87,29	;17
	Viz	4,5,0,0,-123,-31	;18
	Viz	7,5,12,0,127,0	;19
	Viz	12,5,7,0,-127,0	;20
	Viz	10,9,13,-70,99,-37	;21
	Viz	13,9,10,70,-99,37	;22
	Viz	4,13,9,8,125,-18	;23
	Viz	9,13,4,-8,-125,18	;24
	Viz	13,4,6,0,127,0	;25
	Viz	6,4,13,0,-127,0	;26
	Viz	5,4,1,0,-111,-62	;27
	BSPInit	my_bird_EBSP
	BSP	7,my_bird_f1,.bsp2
	BSP	10,my_bird_f3,.bsp4
	BSPE	my_bird_f5
.bsp4	BSPE	my_bird_f6
.bsp2	BSP	13,my_bird_f7,.bsp8
	BSPEND
.bsp8	BSP	14,my_bird_f9,.bsp10
	BSPE	my_bird_f11
.bsp10	BSPE	my_bird_f12

my_bird_f1	Faces
	Face3	14,7,-58,-104,-44,1,7,5
	FendQ
my_bird_f3	Faces
	Face3	16,10,58,-104,-44,4,6,1
	FendQ
my_bird_f5	Faces
	Face3	16,11,-79,79,-60,7,2,5
	Face3	20,12,79,79,-60,4,2,6
	Face3	34,15,122,36,-6,4,0,2
	Face3	32,16,-122,36,-6,2,0,5
	Face3	12,3,-61,-109,20,3,7,1
	Face3	14,4,61,-109,20,1,6,3
	Face3	14,5,-87,87,29,2,7,3
	Face3	18,17,87,87,29,3,6,2
	FendQ
my_bird_f6	Faces
	Face3	20,21,-70,99,-37,10,9,13
	Face3	18,23,8,125,-18,4,13,9
	Face3	30,25,0,127,0,13,4,6
	Face3	14,22,70,-99,37,13,9,10
	Face3	12,24,-8,-125,18,9,13,4
	Face3	28,26,0,-127,0,6,4,13
	FendQ
my_bird_f7	Faces
	Face3	20,13,-8,125,-19,8,12,5
	FendQ
my_bird_f9	Faces
	Face3	12,14,8,-125,19,5,12,8
	FendQ
my_bird_f11	Faces
	Face4	32,1,0,102,76,17,16,14,15
	Face3	18,8,71,99,-34,12,8,11
	Face3	28,2,0,-127,0,17,16,0
	Face3	30,6,0,127,0,0,16,17
	Face4	30,0,0,-102,-76,15,14,16,17
	Face3	14,9,-71,-99,34,11,8,12
	FendQ
my_bird_f12	Faces
	Face3	30,19,0,127,0,7,5,12
	Face3	28,20,0,-127,0,12,5,7
	Face3	43,18,0,-123,-31,4,5,0
	Face3	10,27,0,-111,-62,5,4,1
	FendQ
my_bird_EBSP
	EndShape

	endc

;--Shape file ----- C:\SHED\NSHAPES\f_fish.anm ----
	ifne	DO_HDR

f_fish
	ShapeHdr	f_fish_P,0,f_fish_F,0,0,0,0,0,0,55,40,60,63,id_0_c,0,0,0,0,<f_fish>
	elseif
f_fish_P
	Pointsb	8
	pb	0,20,-60	;0
	pb	0,-20,-60	;1
	pb	0,0,-45	;2
	pb	0,0,-30	;3
	pb	0,-20,10	;4
	pb	0,-30,10	;5
	pb	0,10,20	;6
	pb	0,0,40	;7
	PointsXb	1
	pb	-10,0,20	;8
	IFEQ	SPEED_MODE
	Frames	27
	ELSEIF
	Frames	28
	ENDC
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
	jumptab	.A14A
	jumptab	.A15A
	jumptab	.A16A
	jumptab	.A17A
	jumptab	.A18A
	jumptab	.A19A
	jumptab	.A20A
	jumptab	.A21A
	jumptab	.A22A
	jumptab	.A23A
	jumptab	.A24A
	jumptab	.A25A
	jumptab	.A26A
	IFNE	SPEED_MODE
	jumptab	.A1A
	ENDC
.A0A	Pointsb	2
	pb	-30,-40,-20	;10
	pb	30,-40,-20	;11
	PointsXb	1
	pb	-35,-30,-40	;12
	jump	.EB0
.A1A	Pointsb	2
	pb	-34,-38,-20	;10
	pb	34,-38,-20	;11
	PointsXb	1
	pb	-38,-28,-40	;12
	jump	.EB0
.A2A	Pointsb	2
	pb	-37,-36,-20	;10
	pb	37,-36,-20	;11
	PointsXb	1
	pb	-40,-25,-40	;12
	jump	.EB0
.A3A	Pointsb	2
	pb	-40,-34,-20	;10
	pb	40,-34,-20	;11
	PointsXb	1
	pb	-42,-22,-40	;12
	jump	.EB0
.A4A	Pointsb	2
	pb	-42,-31,-20	;10
	pb	42,-31,-20	;11
	PointsXb	1
	pb	-44,-20,-40	;12
	jump	.EB0
.A5A	Pointsb	2
	pb	-46,-24,-20	;10
	pb	46,-24,-20	;11
	PointsXb	1
	pb	-46,-14,-40	;12
	jump	.EB0
.A6A	Pointsb	2
	pb	-51,-18,-20	;10
	pb	51,-18,-20	;11
	PointsXb	1
	pb	-48,-7,-40	;12
	jump	.EB0
.A7A	Pointsb	2
	pb	-52,-10,-20	;10
	pb	53,-10,-20	;11
	PointsXb	1
	pb	-48,0,-40	;12
	jump	.EB0
.A8A	Pointsb	2
	pb	-54,-3,-20	;10
	pb	55,-3,-20	;11
	PointsXb	1
	pb	-48,7,-40	;12
	jump	.EB0
.A9A	Pointsb	2
	pb	-54,5,-20	;10
	pb	54,5,-20	;11
	PointsXb	1
	pb	-46,13,-40	;12
	jump	.EB0
.A10A	Pointsb	2
	pb	-53,13,-20	;10
	pb	53,13,-20	;11
	PointsXb	1
	pb	-44,19,-40	;12
	jump	.EB0
.A11A	Pointsb	2
	pb	-50,20,-20	;10
	pb	50,20,-20	;11
	PointsXb	1
	pb	-40,24,-40	;12
	jump	.EB0
.A12A	Pointsb	2
	pb	-46,27,-20	;10
	pb	46,27,-20	;11
	PointsXb	1
	pb	-35,30,-40	;12
	jump	.EB0
.A13A	Pointsb	2
	pb	-44,30,-20	;10
	pb	44,30,-20	;11
	PointsXb	1
	pb	-32,32,-40	;12
	jump	.EB0
.A14A	Pointsb	2
	pb	-41,32,-20	;10
	pb	41,32,-20	;11
	PointsXb	1
	pb	-30,34,-40	;12
	jump	.EB0
.A15A	Pointsb	2
	pb	-43,30,-20	;10
	pb	43,30,-20	;11
	PointsXb	1
	pb	-32,32,-40	;12
	jump	.EB0
.A16A	Pointsb	2
	pb	-46,27,-20	;10
	pb	46,27,-20	;11
	PointsXb	1
	pb	-35,30,-40	;12
	jump	.EB0
.A17A	Pointsb	2
	pb	-50,20,-20	;10
	pb	50,20,-20	;11
	PointsXb	1
	pb	-40,24,-40	;12
	jump	.EB0
.A18A	Pointsb	2
	pb	-53,13,-20	;10
	pb	53,13,-20	;11
	PointsXb	1
	pb	-44,19,-40	;12
	jump	.EB0
.A19A	Pointsb	2
	pb	-54,5,-20	;10
	pb	54,5,-20	;11
	PointsXb	1
	pb	-46,13,-40	;12
	jump	.EB0
.A20A	Pointsb	2
	pb	-54,-3,-20	;10
	pb	55,-3,-20	;11
	PointsXb	1
	pb	-48,7,-40	;12
	jump	.EB0
.A21A	Pointsb	2
	pb	-52,-10,-20	;10
	pb	53,-10,-20	;11
	PointsXb	1
	pb	-48,0,-40	;12
	jump	.EB0
.A22A	Pointsb	2
	pb	-51,-18,-20	;10
	pb	51,-18,-20	;11
	PointsXb	1
	pb	-48,-7,-40	;12
	jump	.EB0
.A23A	Pointsb	2
	pb	-46,-24,-20	;10
	pb	46,-24,-20	;11
	PointsXb	1
	pb	-46,-14,-40	;12
	jump	.EB0
.A24A	Pointsb	2
	pb	-42,-31,-20	;10
	pb	42,-31,-20	;11
	PointsXb	1
	pb	-44,-20,-40	;12
	jump	.EB0
.A25A	Pointsb	2
	pb	-40,-34,-20	;10
	pb	40,-34,-20	;11
	PointsXb	1
	pb	-42,-22,-40	;12
	jump	.EB0
.A26A	Pointsb	2
	pb	-37,-36,-20	;10
	pb	37,-36,-20	;11
	PointsXb	1
	pb	-40,-25,-40	;12
.EB0

	EndPoints


f_fish_F
	Vizis	18
	Viz	0,2,3,127,0,0	;0
	Viz	3,2,1,127,0,0	;1
	Viz	3,2,0,-127,0,0	;2
	Viz	1,2,3,-127,0,0	;3
	Viz	9,13,11,119,20,-40	;4
	Viz	11,13,9,-119,-20,40	;5
	Viz	10,12,8,-119,20,-40	;6
	Viz	8,12,10,119,-20,40	;7
	Viz	5,4,3,127,0,0	;8
	Viz	3,4,5,-127,0,0	;9
	Viz	9,4,3,-116,46,-23	;10
	Viz	3,4,8,116,46,-23	;11
	Viz	3,6,9,-89,-89,-18	;12
	Viz	8,6,3,89,-89,-18	;13
	Viz	7,9,6,-85,-85,42	;14
	Viz	6,8,7,85,-85,42	;15
	Viz	4,9,7,-94,71,47	;16
	Viz	7,8,4,94,71,47	;17
	BSPInit	f_fish_EBSP
	BSP	0,f_fish_f1,.bsp2
	BSPE	f_fish_f3
.bsp2	BSP	1,f_fish_f4,.bsp5
	BSPEND
.bsp5	BSP	2,f_fish_f6,.bsp7
	BSPE	f_fish_f8
.bsp7	BSP	3,f_fish_f9,.bsp10
	BSPEND
.bsp10	BSP	8,f_fish_f11,.bsp12
	BSPEND
.bsp12	BSP	9,f_fish_f13,.bsp14
	BSPEND
.bsp14	BSPE	f_fish_f15

f_fish_f1	Faces
	Face3	0,0,127,0,0,0,2,3
	FendQ
f_fish_f3	Faces
	Face3	0,4,119,20,-40,9,13,11
	Face3	0,5,-119,-20,40,11,13,9
	FendQ
f_fish_f4	Faces
	Face3	0,1,127,0,0,3,2,1
	FendQ
f_fish_f6	Faces
	Face3	0,2,-127,0,0,3,2,0
	FendQ
f_fish_f8	Faces
	Face3	0,6,-119,20,-40,10,12,8
	Face3	0,7,119,-20,40,8,12,10
	FendQ
f_fish_f9	Faces
	Face3	0,3,-127,0,0,1,2,3
	FendQ
f_fish_f11	Faces
	Face3	32,8,127,0,0,5,4,3
	FendQ
f_fish_f13	Faces
	Face3	34,9,-127,0,0,3,4,5
	FendQ
f_fish_f15	Faces
	Face3	32,10,-116,46,-23,9,4,3
	Face3	30,11,116,46,-23,3,4,8
	Face3	30,12,-89,-89,-18,3,6,9
	Face3	28,13,89,-89,-18,8,6,3
	Face3	14,14,-85,-85,42,7,9,6
	Face3	12,15,85,-85,42,6,8,7
	Face3	20,16,-94,71,47,4,9,7
	Face3	16,17,94,71,47,7,8,4
	FendQ
f_fish_EBSP
	EndShape

	endc

;--Shape file ----- C:\SHED\NSHAPES\f_dragon.anm ----
	ifne	DO_HDR

f_dragon
	ShapeHdr	f_dragon_P,0,f_dragon_F,0,0,0,0,2,0,68,25,54,85,id_0_c,0,0,0,0,<f_dragon>
	elseif
f_dragon_P
	Pointsb	4
	pb	0,10,-40	;0
	pb	0,2,-30	;1
	pb	0,0,10	;2
	pb	0,-10,20	;3
	PointsXb	5
	pb	-5,7,-29	;4
	pb	-13,3,32	;6
	pb	-5,0,35	;8
	pb	-10,-3,35	;10
	pb	-7,3,38	;12
	IFEQ	SPEED_MODE
	Frames	8
	jumptab	.A0A
	jumptab	.A2A
	jumptab	.A4A
	jumptab	.A6A
	jumptab	.A8A
	jumptab	.A10A
	jumptab	.A12A
	jumptab	.A14A
	ELSEIF
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
	jumptab	.A13A
	jumptab	.A14A
	jumptab	.A1A
	ENDC
.A0A	Pointsb	4
	pb	-33,18,3	;14
	pb	33,18,3	;15
	pb	-35,-39,27	;16
	pb	35,-39,27	;17
	PointsXb	4
	pb	-52,34,10	;18
	pb	-52,34,20	;20
	pb	-49,-51,45	;22
	pb	-45,-48,54	;24
	jump	.EB0
.A1A	Pointsb	4
	pb	-36,12,3	;14
	pb	36,12,3	;15
	pb	-39,-32,27	;16
	pb	39,-32,27	;17
	PointsXb	4
	pb	-58,24,10	;18
	pb	-58,24,20	;20
	pb	-54,-42,45	;22
	pb	-50,-39,54	;24
	jump	.EB0
.A2A	Pointsb	4
	pb	-40,5,3	;14
	pb	40,5,3	;15
	pb	-43,-25,27	;16
	pb	43,-25,27	;17
	PointsXb	4
	pb	-64,14,10	;18
	pb	-64,14,20	;20
	pb	-60,-32,45	;22
	pb	-55,-30,54	;24
	jump	.EB0
.A3A	Pointsb	4
	pb	-42,-2,3	;14
	pb	42,-2,3	;15
	pb	-44,-18,27	;16
	pb	44,-18,27	;17
	PointsXb	4
	pb	-66,2,10	;18
	pb	-66,2,20	;20
	pb	-62,-21,45	;22
	pb	-57,-20,54	;24
	jump	.EB0
.A4A	Pointsb	4
	pb	-43,-10,3	;14
	pb	43,-10,3	;15
	pb	-45,-10,27	;16
	pb	45,-10,27	;17
	PointsXb	4
	pb	-68,-10,10	;18
	pb	-68,-10,20	;20
	pb	-64,-10,45	;22
	pb	-59,-10,54	;24
	jump	.EB0
.A5A	Pointsb	4
	pb	-42,-17,3	;14
	pb	42,-18,3	;15
	pb	-44,-2,27	;16
	pb	44,-2,27	;17
	PointsXb	4
	pb	-66,-22,10	;18
	pb	-66,-22,20	;20
	pb	-62,1,45	;22
	pb	-57,0,54	;24
	jump	.EB0
.A6A	Pointsb	4
	pb	-41,-24,3	;14
	pb	41,-25,3	;15
	pb	-42,6,27	;16
	pb	43,6,27	;17
	PointsXb	4
	pb	-64,-33,10	;18
	pb	-64,-33,20	;20
	pb	-60,12,45	;22
	pb	-55,10,54	;24
	jump	.EB0
.A7A	Pointsb	4
	pb	-37,-31,3	;14
	pb	37,-32,3	;15
	pb	-38,12,27	;16
	pb	39,12,27	;17
	PointsXb	4
	pb	-58,-44,10	;18
	pb	-58,-44,20	;20
	pb	-54,22,45	;22
	pb	-50,19,54	;24
	jump	.EB0
.A8A	Pointsb	4
	pb	-33,-38,3	;14
	pb	33,-38,3	;15
	pb	-35,19,27	;16
	pb	35,19,27	;17
	PointsXb	4
	pb	-52,-54,10	;18
	pb	-52,-54,20	;20
	pb	-49,31,45	;22
	pb	-45,28,54	;24
	jump	.EB0
.A9A	Pointsb	4
	pb	-37,-31,3	;14
	pb	37,-32,3	;15
	pb	-38,12,27	;16
	pb	39,12,27	;17
	PointsXb	4
	pb	-58,-44,10	;18
	pb	-58,-44,20	;20
	pb	-54,22,45	;22
	pb	-50,19,54	;24
	jump	.EB0
.A10A	Pointsb	4
	pb	-41,-24,3	;14
	pb	41,-25,3	;15
	pb	-42,6,27	;16
	pb	43,6,27	;17
	PointsXb	4
	pb	-64,-33,10	;18
	pb	-64,-33,20	;20
	pb	-60,12,45	;22
	pb	-55,10,54	;24
	jump	.EB0
.A11A	Pointsb	4
	pb	-42,-17,3	;14
	pb	42,-18,3	;15
	pb	-44,-2,27	;16
	pb	44,-2,27	;17
	PointsXb	4
	pb	-66,-22,10	;18
	pb	-66,-22,20	;20
	pb	-62,1,45	;22
	pb	-57,0,54	;24
	jump	.EB0
.A12A	Pointsb	4
	pb	-43,-10,3	;14
	pb	43,-10,3	;15
	pb	-45,-10,27	;16
	pb	45,-10,27	;17
	PointsXb	4
	pb	-68,-10,10	;18
	pb	-68,-10,20	;20
	pb	-64,-10,45	;22
	pb	-59,-10,54	;24
	jump	.EB0
.A13A	Pointsb	4
	pb	-42,-2,3	;14
	pb	42,-2,3	;15
	pb	-44,-18,27	;16
	pb	44,-18,27	;17
	PointsXb	4
	pb	-66,2,10	;18
	pb	-66,2,20	;20
	pb	-62,-21,45	;22
	pb	-57,-20,54	;24
	jump	.EB0
.A14A	Pointsb	4
	pb	-40,5,3	;14
	pb	40,5,3	;15
	pb	-43,-25,27	;16
	pb	43,-25,27	;17
	PointsXb	4
	pb	-64,14,10	;18
	pb	-64,14,20	;20
	pb	-60,-32,45	;22
	pb	-55,-30,54	;24
.EB0

	EndPoints


f_dragon_F
	Vizis	34
	Viz	19,15,21,82,-97,0	;0
	Viz	21,15,19,-82,97,0	;1
	Viz	15,21,3,-82,97,-0	;2
	Viz	3,21,15,82,-97,0	;3
	Viz	23,17,25,-80,-98,3	;4
	Viz	25,17,23,80,98,-3	;5
	Viz	17,25,3,81,98,-3	;6
	Viz	3,25,17,-81,-98,3	;7
	Viz	20,14,18,-82,-97,0	;8
	Viz	18,14,20,82,97,0	;9
	Viz	3,20,14,82,97,-0	;10
	Viz	14,20,3,-82,-97,0	;11
	Viz	24,16,22,80,-98,3	;12
	Viz	22,16,24,-80,98,-3	;13
	Viz	3,24,16,-81,98,-3	;14
	Viz	16,24,3,81,-98,3	;15
	Viz	7,13,11,-90,0,90	;16
	Viz	9,13,7,58,-97,-58	;17
	Viz	7,11,9,27,45,-116	;18
	Viz	11,13,9,42,70,98	;19
	Viz	10,12,6,90,0,90	;20
	Viz	6,12,8,-58,-97,-58	;21
	Viz	8,10,6,-27,45,-116	;22
	Viz	8,12,10,-42,70,98	;23
	Viz	0,4,5,0,-123,33	;24
	Viz	0,5,1,-85,74,-59	;25
	Viz	1,4,0,85,74,-59	;26
	Viz	5,4,2,0,-125,22	;27
	Viz	1,5,2,-90,89,-4	;28
	Viz	2,4,1,90,89,-4	;29
	Viz	8,9,2,0,-127,0	;30
	Viz	2,9,3,-122,24,-24	;31
	Viz	3,8,2,122,24,-24	;32
	Viz	3,9,8,0,106,70	;33
	BSPInit	f_dragon_EBSP
	BSP	0,f_dragon_f1,.bsp2
	BSPE	f_dragon_f3
.bsp2	BSP	8,f_dragon_f4,.bsp5
	BSPE	f_dragon_f6
.bsp5	BSP	19,f_dragon_f7,.bsp8
	BSP	31,f_dragon_f9,.bsp10
	BSPE	f_dragon_f11
.bsp10	BSP	32,f_dragon_f12,.bsp13
	BSPE	f_dragon_f14
.bsp13	BSPE	f_dragon_f15
.bsp8	BSP	18,f_dragon_f16,.bsp17
	BSPEND
.bsp17	BSPE	f_dragon_f18

f_dragon_f1	Faces
	Face3	6,0,82,-97,0,19,15,21
	FendQ
f_dragon_f3	Faces
	Face3	6,4,-80,-98,3,23,17,25
	Face3	6,5,80,98,-3,25,17,23
	Face3	0,6,81,98,-3,17,25,3
	Face3	0,7,-81,-98,3,3,25,17
	FendQ
f_dragon_f4	Faces
	Face3	6,8,-82,-97,0,20,14,18
	FendQ
f_dragon_f6	Faces
	Face3	6,12,80,-98,3,24,16,22
	Face3	6,13,-80,98,-3,22,16,24
	Face3	0,14,-81,98,-3,3,24,16
	Face3	0,15,81,-98,3,16,24,3
	FendQ
f_dragon_f7	Faces
	Face3	14,19,42,70,98,11,13,9
	FendQ
f_dragon_f9	Faces
	Face3	27,31,-122,24,-24,2,9,3
	FendQ
f_dragon_f11	Faces
	Face3	6,9,82,97,0,18,14,20
	Face3	0,10,82,97,-0,3,20,14
	Face3	0,11,-82,-97,0,14,20,3
	FendQ
f_dragon_f12	Faces
	Face3	23,32,122,24,-24,3,8,2
	FendQ
f_dragon_f14	Faces
	Face3	6,1,-82,97,0,21,15,19
	Face3	0,2,-82,97,-0,15,21,3
	Face3	0,3,82,-97,0,3,21,15
	FendQ
f_dragon_f15	Faces
	Face3	21,30,0,-127,0,8,9,2
	Face3	0,24,0,-123,33,0,4,5
	Face3	21,27,0,-125,22,5,4,2
	Face3	0,25,-85,74,-59,0,5,1
	Face3	0,26,85,74,-59,1,4,0
	Face3	25,28,-90,89,-4,1,5,2
	Face3	23,29,90,89,-4,2,4,1
	FendQ
f_dragon_f16	Faces
	Face3	18,18,27,45,-116,7,11,9
	FendQ
f_dragon_f18	Faces
	Face3	12,17,58,-97,-58,9,13,7
	Face3	14,21,-58,-97,-58,6,12,8
	Face3	16,22,-27,45,-116,8,10,6
	Face3	18,23,-42,70,98,8,12,10
	Face3	44,16,-90,0,90,7,13,11
	Face3	44,20,90,0,90,10,12,6
	Face3	25,33,0,106,70,3,9,8
	FendQ
f_dragon_EBSP
	EndShape

	endc

;--Shape file ----- C:\SHED\NSHAPES\tadpole.anm ----
	ifne	DO_HDR

tadpole
	ShapeHdr	tadpole_P,0,tadpole_F,0,0,0,0,1+1,0,30/2,40/2,120/2,127/2,id_0_c,0,0,0,0,<tadpole>
	elseif
tadpole_P
	Pointsb	2
	pbd2	0,-10,0	;0
	pbd2	0,5,10	;1
	PointsXb	7
	pbd2	-30,-15,15	;2
	pbd2	-20,-10,20	;4
	pbd2	-5,-20,20	;6
	pbd2	-23,5,35	;8
	pbd2	-27,10,40	;10
	pbd2	-5,-5,40	;12
	pbd2	-2,-10,45	;14
	IFEQ	SPEED_MODE
	Frames	12
	jumptab	.A0A
	jumptab	.A2A
	jumptab	.A4A
	jumptab	.A6A
	jumptab	.A8A
	jumptab	.A10A
	jumptab	.A12A
	jumptab	.A14A
	jumptab	.A16A
	jumptab	.A18A
	jumptab	.A20A
	jumptab	.A22A
	ELSEIF
	Frames	23
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
	jumptab	.A14A
	jumptab	.A15A
	jumptab	.A16A
	jumptab	.A17A
	jumptab	.A18A
	jumptab	.A19A
	jumptab	.A20A
	jumptab	.A21A
	jumptab	.A22A
	ENDC
.A0A	Pointsb	8
	pbd2	15,40,-116	;16
	pbd2	10,28,-96	;17
	pbd2	0,40,-80	;18
	pbd2	0,38,-80	;19
	pbd2	-15,30,-46	;20
	pbd2	-15,23,-46	;21
	pbd2	0,20,-20	;22
	pbd2	0,10,-20	;23
	jump	.EB0
.A1A	Pointsb	8
	pbd2	12,40,-117	;16
	pbd2	8,28,-97	;17
	pbd2	-2,40,-80	;18
	pbd2	-2,38,-80	;19
	pbd2	-12,30,-47	;20
	pbd2	-12,23,-47	;21
	pbd2	2,20,-20	;22
	pbd2	2,10,-20	;23
	jump	.EB0
.A2A	Pointsb	8
	pbd2	10,40,-118	;16
	pbd2	5,28,-98	;17
	pbd2	-5,40,-80	;18
	pbd2	-5,38,-80	;19
	pbd2	-10,30,-48	;20
	pbd2	-10,23,-48	;21
	pbd2	5,20,-20	;22
	pbd2	5,10,-20	;23
	jump	.EB0
.A3A	Pointsb	8
	pbd2	8,40,-119	;16
	pbd2	2,28,-98	;17
	pbd2	-8,40,-79	;18
	pbd2	-8,38,-79	;19
	pbd2	-8,30,-49	;20
	pbd2	-8,23,-49	;21
	pbd2	8,20,-19	;22
	pbd2	8,10,-19	;23
	jump	.EB0
.A4A	Pointsb	8
	pbd2	5,40,-120	;16
	pbd2	0,28,-98	;17
	pbd2	-10,40,-78	;18
	pbd2	-10,38,-78	;19
	pbd2	-5,30,-50	;20
	pbd2	-5,23,-50	;21
	pbd2	10,20,-18	;22
	pbd2	10,10,-18	;23
	jump	.EB0
.A5A	Pointsb	8
	pbd2	2,40,-120	;16
	pbd2	-2,28,-98	;17
	pbd2	-12,40,-77	;18
	pbd2	-12,38,-77	;19
	pbd2	-2,30,-50	;20
	pbd2	-2,23,-50	;21
	pbd2	12,20,-17	;22
	pbd2	12,10,-17	;23
	jump	.EB0
.A6A	Pointsb	8
	pbd2	0,40,-120	;16
	pbd2	-5,28,-98	;17
	pbd2	-15,40,-76	;18
	pbd2	-15,38,-76	;19
	pbd2	0,30,-50	;20
	pbd2	0,23,-50	;21
	pbd2	15,20,-16	;22
	pbd2	15,10,-16	;23
	jump	.EB0
.A7A	Pointsb	8
	pbd2	-2,40,-120	;16
	pbd2	-8,28,-97	;17
	pbd2	-12,40,-77	;18
	pbd2	-12,38,-77	;19
	pbd2	2,30,-50	;20
	pbd2	2,23,-50	;21
	pbd2	12,20,-17	;22
	pbd2	12,10,-17	;23
	jump	.EB0
.A8A	Pointsb	8
	pbd2	-5,40,-120	;16
	pbd2	-10,28,-96	;17
	pbd2	-10,40,-78	;18
	pbd2	-10,38,-78	;19
	pbd2	5,30,-50	;20
	pbd2	5,23,-50	;21
	pbd2	10,20,-18	;22
	pbd2	10,10,-18	;23
	jump	.EB0
.A9A	Pointsb	8
	pbd2	-8,40,-119	;16
	pbd2	-12,28,-95	;17
	pbd2	-8,40,-79	;18
	pbd2	-8,38,-79	;19
	pbd2	8,30,-49	;20
	pbd2	8,23,-49	;21
	pbd2	8,20,-19	;22
	pbd2	8,10,-19	;23
	jump	.EB0
.A10A	Pointsb	8
	pbd2	-10,40,-118	;16
	pbd2	-14,28,-94	;17
	pbd2	-5,40,-80	;18
	pbd2	-5,38,-80	;19
	pbd2	10,30,-48	;20
	pbd2	10,23,-48	;21
	pbd2	5,20,-20	;22
	pbd2	5,10,-20	;23
	jump	.EB0
.A11A	Pointsb	8
	pbd2	-12,40,-117	;16
	pbd2	-12,28,-95	;17
	pbd2	-2,40,-80	;18
	pbd2	-2,38,-80	;19
	pbd2	12,30,-47	;20
	pbd2	12,23,-47	;21
	pbd2	2,20,-20	;22
	pbd2	2,10,-20	;23
	jump	.EB0
.A12A	Pointsb	8
	pbd2	-15,40,-116	;16
	pbd2	-10,28,-96	;17
	pbd2	0,40,-80	;18
	pbd2	0,38,-80	;19
	pbd2	15,30,-46	;20
	pbd2	15,23,-46	;21
	pbd2	0,20,-20	;22
	pbd2	0,10,-20	;23
	jump	.EB0
.A13A	Pointsb	8
	pbd2	-12,40,-117	;16
	pbd2	-8,28,-97	;17
	pbd2	2,40,-80	;18
	pbd2	2,38,-80	;19
	pbd2	12,30,-47	;20
	pbd2	12,23,-47	;21
	pbd2	-2,20,-20	;22
	pbd2	-2,10,-20	;23
	jump	.EB0
.A14A	Pointsb	8
	pbd2	-10,40,-118	;16
	pbd2	-5,28,-98	;17
	pbd2	5,40,-80	;18
	pbd2	5,38,-80	;19
	pbd2	10,30,-48	;20
	pbd2	10,23,-48	;21
	pbd2	-5,20,-20	;22
	pbd2	-5,10,-20	;23
	jump	.EB0
.A15A	Pointsb	8
	pbd2	-8,40,-119	;16
	pbd2	-3,28,-98	;17
	pbd2	7,40,-79	;18
	pbd2	7,38,-79	;19
	pbd2	8,30,-49	;20
	pbd2	8,23,-49	;21
	pbd2	-7,20,-19	;22
	pbd2	-7,10,-19	;23
	jump	.EB0
.A16A	Pointsb	8
	pbd2	-5,40,-120	;16
	pbd2	0,28,-98	;17
	pbd2	10,40,-78	;18
	pbd2	10,38,-78	;19
	pbd2	5,30,-50	;20
	pbd2	5,23,-50	;21
	pbd2	-10,20,-18	;22
	pbd2	-10,10,-18	;23
	jump	.EB0
.A17A	Pointsb	8
	pbd2	-2,40,-120	;16
	pbd2	2,28,-98	;17
	pbd2	12,40,-77	;18
	pbd2	12,38,-77	;19
	pbd2	2,30,-50	;20
	pbd2	2,23,-50	;21
	pbd2	-12,20,-17	;22
	pbd2	-12,10,-17	;23
	jump	.EB0
.A18A	Pointsb	8
	pbd2	0,40,-120	;16
	pbd2	5,28,-98	;17
	pbd2	15,40,-76	;18
	pbd2	15,38,-76	;19
	pbd2	0,30,-50	;20
	pbd2	0,23,-50	;21
	pbd2	-15,20,-16	;22
	pbd2	-15,10,-16	;23
	jump	.EB0
.A19A	Pointsb	8
	pbd2	2,40,-120	;16
	pbd2	8,28,-97	;17
	pbd2	12,40,-77	;18
	pbd2	12,38,-77	;19
	pbd2	-2,30,-50	;20
	pbd2	-2,23,-50	;21
	pbd2	-12,20,-17	;22
	pbd2	-12,10,-17	;23
	jump	.EB0
.A20A	Pointsb	8
	pbd2	5,40,-120	;16
	pbd2	10,28,-96	;17
	pbd2	10,40,-78	;18
	pbd2	10,38,-78	;19
	pbd2	-5,30,-50	;20
	pbd2	-5,23,-50	;21
	pbd2	-10,20,-18	;22
	pbd2	-10,10,-18	;23
	jump	.EB0
.A21A	Pointsb	8
	pbd2	8,40,-119	;16
	pbd2	12,28,-95	;17
	pbd2	8,40,-79	;18
	pbd2	8,38,-79	;19
	pbd2	-8,30,-49	;20
	pbd2	-8,23,-49	;21
	pbd2	-8,20,-19	;22
	pbd2	-8,10,-19	;23
	jump	.EB0
.A22A	Pointsb	8
	pbd2	10,40,-118	;16
	pbd2	14,28,-94	;17
	pbd2	5,40,-80	;18
	pbd2	5,38,-80	;19
	pbd2	-10,30,-48	;20
	pbd2	-10,23,-48	;21
	pbd2	-5,20,-20	;22
	pbd2	-5,10,-20	;23
.EB0

	EndPoints


tadpole_F
	Vizis	26
	Viz	9,11,3,0,-90,-90	;0
	Viz	5,3,11,0,90,90	;1
	Viz	4,2,10,0,-90,-90	;2
	Viz	8,10,2,0,90,90	;3
	Viz	13,1,12,0,-120,40	;4
	Viz	21,20,18,116,0,-51	;7
	Viz	19,18,20,-116,0,51	;8
	Viz	22,23,21,-110,0,-63	;9
	Viz	20,21,23,110,0,63	;10
	Viz	1,0,23,-127,0,0	;11
	Viz	23,0,1,127,0,0	;12
	Viz	23,22,1,-127,0,0	;13
	Viz	1,22,23,127,0,0	;14
	Viz	0,1,7,-124,-15,-23	;15
	Viz	6,1,0,124,-15,-23	;16
	Viz	0,7,6,0,114,-57	;17
	Viz	14,15,13,0,-90,90	;18
	Viz	6,7,15,0,118,47	;19
	Viz	15,7,13,-117,40,30	;20
	Viz	12,6,14,117,40,30	;21
	Viz	13,5,1,-67,-105,24	;22
	Viz	5,7,1,-28,41,-117	;23
	Viz	13,7,5,-60,90,67	;24
	Viz	1,4,12,67,-105,24	;25
	Viz	1,6,4,28,41,-117	;26
	Viz	4,6,12,60,90,67	;27
	BSPInit	tadpole_EBSP
	BSP	9,tadpole_f1,.bsp2
	BSP	7,tadpole_f3,.bsp4
	BSPE	tadpole_f5
.bsp4	BSPE	tadpole_f6
.bsp2	BSP	11,tadpole_f7,.bsp8
	BSPEND
.bsp8	BSP	14,tadpole_f9,.bsp10
	BSP	20,tadpole_f11,.bsp12
	BSPE	tadpole_f13
.bsp12	BSPE	tadpole_f14
.bsp10	BSPE	tadpole_f15

tadpole_f1	Faces
	Face3	20,9,-127,0,0,1,0,23
	FendQ
tadpole_f3	Faces
	Face4	18,7,-110,0,-63,22,23,21,20
	FendQ
tadpole_f5	Faces
	Face3	21,23,67,-105,24,1,4,12
	Face4	0,2,0,-90,-90,4,2,10,8
	Face4	0,3,0,90,90,8,10,2,4
	Face3	23,24,28,41,-117,1,6,4
	Face3	25,25,60,90,67,4,6,12
	FendQ
tadpole_f6	Faces
	Face4	25,6,-116,0,51,19,18,20,21
	Face4	21,5,116,0,-51,21,20,18,19
	Face4	12,8,110,0,63,20,21,23,22
	FendQ
tadpole_f7	Faces
	Face3	25,11,-127,0,0,23,22,1
	FendQ
tadpole_f9	Faces
	Face3	12,14,124,-15,-23,6,1,0
	FendQ
tadpole_f11	Faces
	Face3	23,20,-67,-105,24,13,5,1
	FendQ
tadpole_f13	Faces
	Face4	18,17,0,118,47,6,7,15,14
	Face3	20,18,-117,40,30,15,7,13
	FendQ
tadpole_f14	Faces
	Face4	0,0,0,-90,-90,9,11,3,5
	Face4	0,1,0,90,90,5,3,11,9
	Face4	44,16,0,-90,90,14,15,13,12
	Face3	25,21,-28,41,-117,5,7,1
	Face3	27,22,-60,90,67,13,7,5
	FendQ
tadpole_f15	Faces
	Face3	18,13,-124,-15,-23,0,1,7
	Face3	16,15,0,114,-57,0,7,6
	Face2	43,-1,0,0,0,16,18
	Face2	43,-1,0,0,0,17,19
	Face3	12,4,0,-120,40,13,1,12
	Face3	14,10,127,0,0,23,0,1
	Face3	21,12,127,0,0,1,22,23
	Face3	14,19,117,40,30,12,6,14
	FendQ
tadpole_EBSP
	EndShape

	endc

;--Shape file ----- C:\SHED\SHAPES5\BARRIER.ANM ----
	ifne	DO_HDR

barrier
	ShapeHdr	barrier_P,0,barrier_F,0,0,0,0,0,barrier_col,38,117,36,128,id_0_c,0,0,0,0,<barrier>
	elseif
barrier_P
	datahdr
	Pointsw	1
	pw	0,-14,0	;0
	PointsXw	6
	pw	10,0,-18	;1
	pw	5,-6,-9	;3
	pw	-20,0,0	;5
	pw	-10,-6,0	;7
	pw	-5,-6,9	;9
	pw	-10,0,18	;11
	IFEQ	SPEED_MODE
	Frames	16
	jumptab	.A0A
	jumptab	.A2A
	jumptab	.A4A
	jumptab	.A6A
	jumptab	.A8A
	jumptab	.A10A
	jumptab	.A12A
	jumptab	.A14A
	jumptab	.A16A
	jumptab	.A18A
	jumptab	.A20A
	jumptab	.A22A
	jumptab	.A24A
	jumptab	.A26A
	jumptab	.A28A
	jumptab	.A30A
	ELSEIF
	Frames	31
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
	jumptab	.A14A
	jumptab	.A15A
	jumptab	.A16A
	jumptab	.A17A
	jumptab	.A18A
	jumptab	.A19A
	jumptab	.A20A
	jumptab	.A21A
	jumptab	.A22A
	jumptab	.A23A
	jumptab	.A24A
	jumptab	.A25A
	jumptab	.A26A
	jumptab	.A27A
	jumptab	.A28A
	jumptab	.A29A
	jumptab	.A30A
	ENDC
.A0A	Pointsw	16
	pw	5,-5,-5	;13
	pw	-5,-5,-5	;14
	pw	5,-4,-5	;15
	pw	-5,-4,-5	;16
	pw	5,-3,-5	;17
	pw	-5,-3,-5	;18
	pw	5,-2,-5	;19
	pw	-5,-2,-5	;20
	pw	5,-2,5	;21
	pw	-5,-2,5	;22
	pw	5,-3,5	;23
	pw	-5,-3,5	;24
	pw	5,-4,5	;25
	pw	-5,-4,5	;26
	pw	5,-5,5	;27
	pw	-5,-5,5	;28
	PointsXw	2
	pw	5,-1,-5	;29
	pw	5,-1,5	;31
	jump	.EB0
.A1A	Pointsw	16
	pw	3,-4,-3	;13
	pw	-3,-4,-3	;14
	pw	4,-4,-4	;15
	pw	-4,-4,-4	;16
	pw	2,-3,-2	;17
	pw	-3,-3,-2	;18
	pw	2,-2,-3	;19
	pw	-3,-2,-3	;20
	pw	2,-2,2	;21
	pw	-3,-2,2	;22
	pw	2,-3,3	;23
	pw	-3,-3,3	;24
	pw	4,-4,4	;25
	pw	-4,-4,4	;26
	pw	3,-4,3	;27
	pw	-3,-4,3	;28
	PointsXw	2
	pw	8,-12,-7	;29
	pw	8,-9,7	;31
	jump	.EB0
.A2A	Pointsw	16
	pw	1,-4,-1	;13
	pw	-1,-4,-1	;14
	pw	2,-4,-2	;15
	pw	-2,-4,-2	;16
	pw	0,-3,0	;17
	pw	-1,-3,0	;18
	pw	0,-2,-1	;19
	pw	-1,-2,-1	;20
	pw	0,-2,0	;21
	pw	-1,-2,0	;22
	pw	0,-3,1	;23
	pw	-1,-3,1	;24
	pw	2,-4,2	;25
	pw	-2,-4,2	;26
	pw	1,-4,1	;27
	pw	-1,-4,1	;28
	PointsXw	2
	pw	10,-23,-9	;29
	pw	10,-17,9	;31
	jump	.EB0
.A3A	Pointsw	16
	pw	0,-4,0	;13
	pw	0,-4,-2	;14
	pw	1,-4,-2	;15
	pw	-2,-4,-2	;16
	pw	0,-4,0	;17
	pw	-2,-4,0	;18
	pw	0,-4,-2	;19
	pw	-2,-4,-2	;20
	pw	0,-4,2	;21
	pw	-2,-4,2	;22
	pw	0,-4,1	;23
	pw	-2,-4,1	;24
	pw	1,-4,1	;25
	pw	-2,-4,1	;26
	pw	0,-4,1	;27
	pw	0,-4,0	;28
	PointsXw	2
	pw	11,-26,-10	;29
	pw	11,-20,10	;31
	jump	.EB0
.A4A	Pointsw	16
	pw	0,-4,0	;13
	pw	0,-4,-3	;14
	pw	0,-5,-1	;15
	pw	-2,-5,-1	;16
	pw	0,-6,0	;17
	pw	-2,-6,0	;18
	pw	1,-6,-2	;19
	pw	-3,-6,-2	;20
	pw	1,-5,3	;21
	pw	-3,-5,3	;22
	pw	0,-6,1	;23
	pw	-2,-6,1	;24
	pw	0,-5,0	;25
	pw	-2,-5,0	;26
	pw	0,-4,1	;27
	pw	0,-4,-2	;28
	PointsXw	2
	pw	12,-30,-11	;29
	pw	12,-22,11	;31
	jump	.EB0
.A5A	Pointsw	16
	pw	2,-5,-1	;13
	pw	-1,-5,-2	;14
	pw	1,-5,0	;15
	pw	-2,-5,0	;16
	pw	0,-6,0	;17
	pw	-2,-6,0	;18
	pw	1,-6,-2	;19
	pw	-2,-6,-2	;20
	pw	1,-6,2	;21
	pw	-2,-6,2	;22
	pw	0,-6,0	;23
	pw	-2,-6,0	;24
	pw	1,-6,0	;25
	pw	-2,-6,0	;26
	pw	2,-5,2	;27
	pw	-1,-5,0	;28
	PointsXw	2
	pw	13,-34,-12	;29
	pw	13,-24,12	;31
	jump	.EB0
.A6A	Pointsw	16
	pw	3,-6,-2	;13
	pw	-2,-6,-2	;14
	pw	2,-5,0	;15
	pw	-1,-5,0	;16
	pw	0,-7,-1	;17
	pw	-1,-7,-1	;18
	pw	1,-6,-1	;19
	pw	0,-6,-1	;20
	pw	1,-6,0	;21
	pw	0,-6,0	;22
	pw	0,-7,0	;23
	pw	-1,-7,0	;24
	pw	2,-6,1	;25
	pw	-1,-6,1	;26
	pw	3,-6,2	;27
	pw	-2,-6,2	;28
	PointsXw	2
	pw	14,-37,-13	;29
	pw	14,-27,13	;31
	jump	.EB0
.A7A	Pointsw	16
	pw	3,-4,-1	;13
	pw	-2,-4,-1	;14
	pw	2,-4,-1	;15
	pw	-1,-4,-1	;16
	pw	0,-5,-1	;17
	pw	0,-5,-1	;18
	pw	8,-24,-8	;19
	pw	-8,-24,-8	;20
	pw	8,-20,8	;21
	pw	-8,-20,8	;22
	pw	0,-5,0	;23
	pw	0,-5,0	;24
	pw	2,-4,1	;25
	pw	-1,-4,1	;26
	pw	3,-5,1	;27
	pw	-2,-5,1	;28
	PointsXw	2
	pw	12,-30,-11	;29
	pw	12,-22,11	;31
	jump	.EB0
.A8A	Pointsw	16
	pw	3,-2,0	;13
	pw	-2,-2,0	;14
	pw	2,-3,-2	;15
	pw	-1,-3,-2	;16
	pw	1,-3,-1	;17
	pw	0,-3,-1	;18
	pw	16,-43,-15	;19
	pw	-16,-43,-15	;20
	pw	16,-33,15	;21
	pw	-16,-33,15	;22
	pw	1,-3,0	;23
	pw	0,-3,0	;24
	pw	2,-3,1	;25
	pw	-1,-3,1	;26
	pw	3,-4,0	;27
	pw	-2,-4,0	;28
	PointsXw	2
	pw	10,-23,-9	;29
	pw	10,-17,9	;31
	jump	.EB0
.A9A	Pointsw	16
	pw	2,-3,0	;13
	pw	-2,-3,0	;14
	pw	2,-4,-2	;15
	pw	-2,-4,-2	;16
	pw	0,-4,0	;17
	pw	0,-4,0	;18
	pw	17,-46,-16	;19
	pw	-17,-46,-16	;20
	pw	17,-36,16	;21
	pw	-17,-36,16	;22
	pw	0,-4,0	;23
	pw	0,-4,0	;24
	pw	2,-4,2	;25
	pw	-2,-4,2	;26
	pw	2,-5,0	;27
	pw	-2,-5,0	;28
	PointsXw	2
	pw	11,-26,-10	;29
	pw	11,-20,10	;31
	jump	.EB0
.A10A	Pointsw	16
	pw	0,-4,0	;13
	pw	-3,-4,0	;14
	pw	1,-5,-1	;15
	pw	-2,-5,-1	;16
	pw	0,-5,0	;17
	pw	-1,-5,0	;18
	pw	18,-50,-17	;19
	pw	-18,-50,-17	;20
	pw	18,-38,17	;21
	pw	-18,-38,17	;22
	pw	0,-5,1	;23
	pw	-1,-5,1	;24
	pw	1,-5,2	;25
	pw	-2,-5,2	;26
	pw	0,-6,0	;27
	pw	-3,-6,0	;28
	PointsXw	2
	pw	12,-30,-11	;29
	pw	12,-22,11	;31
	jump	.EB0
.A11A	Pointsw	16
	pw	0,-4,0	;13
	pw	-2,-4,0	;14
	pw	2,-4,-2	;15
	pw	-2,-4,-2	;16
	pw	0,-4,0	;17
	pw	0,-4,0	;18
	pw	19,-54,-18	;19
	pw	-19,-54,-18	;20
	pw	19,-40,18	;21
	pw	-19,-40,18	;22
	pw	0,-4,0	;23
	pw	0,-4,0	;24
	pw	2,-4,2	;25
	pw	-2,-4,2	;26
	pw	0,-6,0	;27
	pw	-2,-6,0	;28
	PointsXw	2
	pw	13,-34,-12	;29
	pw	13,-24,12	;31
	jump	.EB0
.A12A	Pointsw	16
	pw	1,-3,0	;13
	pw	0,-3,0	;14
	pw	2,-4,-2	;15
	pw	-1,-4,-2	;16
	pw	1,-4,-1	;17
	pw	0,-4,-1	;18
	pw	20,-57,-19	;19
	pw	-20,-57,-19	;20
	pw	20,-43,19	;21
	pw	-20,-43,19	;22
	pw	1,-4,0	;23
	pw	0,-4,0	;24
	pw	2,-4,1	;25
	pw	-1,-4,1	;26
	pw	1,-5,0	;27
	pw	0,-5,0	;28
	PointsXw	2
	pw	14,-37,-13	;29
	pw	14,-27,13	;31
	jump	.EB0
.A13A	Pointsw	16
	pw	1,-3,0	;13
	pw	0,-3,0	;14
	pw	2,-4,-2	;15
	pw	0,-4,-2	;16
	pw	12,-34,-11	;17
	pw	-11,-34,-11	;18
	pw	18,-50,-17	;19
	pw	-18,-50,-17	;20
	pw	18,-38,17	;21
	pw	-18,-38,17	;22
	pw	12,-26,10	;23
	pw	-11,-26,10	;24
	pw	2,-4,0	;25
	pw	0,-4,0	;26
	pw	1,-5,0	;27
	pw	0,-5,0	;28
	PointsXw	2
	pw	12,-30,-11	;29
	pw	12,-22,11	;31
	jump	.EB0
.A14A	Pointsw	16
	pw	1,-3,0	;13
	pw	0,-3,0	;14
	pw	1,-4,-1	;15
	pw	0,-4,-1	;16
	pw	22,-63,-21	;17
	pw	-22,-63,-21	;18
	pw	16,-43,-15	;19
	pw	-16,-43,-15	;20
	pw	16,-33,15	;21
	pw	-16,-33,15	;22
	pw	22,-49,21	;23
	pw	-22,-49,21	;24
	pw	1,-4,0	;25
	pw	0,-4,0	;26
	pw	1,-5,0	;27
	pw	0,-5,0	;28
	PointsXw	2
	pw	10,-23,-9	;29
	pw	10,-17,9	;31
	jump	.EB0
.A15A	Pointsw	16
	pw	2,-3,0	;13
	pw	0,-3,0	;14
	pw	1,-4,-1	;15
	pw	0,-4,-1	;16
	pw	23,-66,-22	;17
	pw	-23,-66,-22	;18
	pw	17,-46,-16	;19
	pw	-17,-46,-16	;20
	pw	17,-36,16	;21
	pw	-17,-36,16	;22
	pw	23,-52,22	;23
	pw	-23,-52,22	;24
	pw	1,-4,0	;25
	pw	0,-4,0	;26
	pw	2,-5,0	;27
	pw	0,-5,0	;28
	PointsXw	2
	pw	11,-26,-10	;29
	pw	11,-20,10	;31
	jump	.EB0
.A16A	Pointsw	16
	pw	2,-3,0	;13
	pw	1,-3,0	;14
	pw	1,-4,-1	;15
	pw	0,-4,-1	;16
	pw	24,-70,-23	;17
	pw	-24,-70,-23	;18
	pw	18,-50,-17	;19
	pw	-18,-50,-17	;20
	pw	18,-38,17	;21
	pw	-18,-38,17	;22
	pw	24,-54,22	;23
	pw	-24,-54,22	;24
	pw	1,-4,0	;25
	pw	0,-4,0	;26
	pw	2,-5,0	;27
	pw	1,-5,0	;28
	PointsXw	2
	pw	12,-30,-11	;29
	pw	12,-22,11	;31
	jump	.EB0
.A17A	Pointsw	16
	pw	2,-3,0	;13
	pw	0,-3,0	;14
	pw	1,-4,-1	;15
	pw	0,-4,-1	;16
	pw	25,-74,-24	;17
	pw	-25,-74,-24	;18
	pw	19,-54,-18	;19
	pw	-19,-54,-18	;20
	pw	19,-40,18	;21
	pw	-19,-40,18	;22
	pw	25,-56,23	;23
	pw	-25,-56,23	;24
	pw	1,-4,0	;25
	pw	0,-4,0	;26
	pw	2,-5,0	;27
	pw	0,-5,0	;28
	PointsXw	2
	pw	13,-34,-12	;29
	pw	13,-24,12	;31
	jump	.EB0
.A18A	Pointsw	16
	pw	2,-3,0	;13
	pw	0,-3,0	;14
	pw	1,-4,-1	;15
	pw	0,-4,-1	;16
	pw	26,-77,-24	;17
	pw	-26,-77,-24	;18
	pw	20,-57,-19	;19
	pw	-20,-57,-19	;20
	pw	20,-43,19	;21
	pw	-20,-43,19	;22
	pw	26,-59,24	;23
	pw	-26,-59,24	;24
	pw	1,-4,0	;25
	pw	0,-4,0	;26
	pw	2,-5,0	;27
	pw	0,-5,0	;28
	PointsXw	2
	pw	14,-37,-13	;29
	pw	14,-27,13	;31
	jump	.EB0
.A19A	Pointsw	16
	pw	1,-4,0	;13
	pw	-1,-4,0	;14
	pw	14,-44,-14	;15
	pw	-14,-44,-14	;16
	pw	24,-70,-22	;17
	pw	-24,-70,-22	;18
	pw	18,-50,-17	;19
	pw	-18,-50,-17	;20
	pw	18,-38,17	;21
	pw	-18,-38,17	;22
	pw	24,-54,22	;23
	pw	-24,-54,22	;24
	pw	14,-34,13	;25
	pw	-14,-34,13	;26
	pw	1,-5,0	;27
	pw	-1,-5,0	;28
	PointsXw	2
	pw	12,-30,-11	;29
	pw	12,-22,11	;31
	jump	.EB0
.A20A	Pointsw	16
	pw	0,-5,-1	;13
	pw	-2,-5,-1	;14
	pw	28,-84,-26	;15
	pw	-28,-84,-26	;16
	pw	22,-63,-21	;17
	pw	-22,-63,-21	;18
	pw	16,-43,-15	;19
	pw	-16,-43,-15	;20
	pw	16,-33,15	;21
	pw	-16,-33,15	;22
	pw	22,-49,21	;23
	pw	-22,-49,21	;24
	pw	28,-64,26	;25
	pw	-28,-64,26	;26
	pw	0,-5,0	;27
	pw	-2,-5,0	;28
	PointsXw	2
	pw	10,-23,-9	;29
	pw	10,-17,9	;31
	jump	.EB0
.A21A	Pointsw	16
	pw	0,-4,0	;13
	pw	-2,-4,0	;14
	pw	29,-87,-27	;15
	pw	-29,-87,-27	;16
	pw	23,-66,-22	;17
	pw	-23,-66,-22	;18
	pw	17,-46,-16	;19
	pw	-17,-46,-16	;20
	pw	17,-36,16	;21
	pw	-17,-36,16	;22
	pw	23,-52,22	;23
	pw	-23,-52,22	;24
	pw	29,-67,27	;25
	pw	-29,-67,27	;26
	pw	0,-4,0	;27
	pw	-2,-4,0	;28
	PointsXw	2
	pw	11,-26,-10	;29
	pw	11,-20,10	;31
	jump	.EB0
.A22A	Pointsw	16
	pw	0,-3,0	;13
	pw	-1,-3,0	;14
	pw	30,-90,-28	;15
	pw	-30,-90,-28	;16
	pw	24,-70,-23	;17
	pw	-24,-70,-23	;18
	pw	18,-50,-17	;19
	pw	-18,-50,-17	;20
	pw	18,-38,17	;21
	pw	-18,-38,17	;22
	pw	24,-54,22	;23
	pw	-24,-54,22	;24
	pw	30,-70,28	;25
	pw	-30,-70,28	;26
	pw	0,-4,0	;27
	pw	-1,-4,0	;28
	PointsXw	2
	pw	12,-30,-11	;29
	pw	12,-22,11	;31
	jump	.EB0
.A23A	Pointsw	16
	pw	0,-4,0	;13
	pw	-1,-4,0	;14
	pw	31,-94,-29	;15
	pw	-31,-94,-29	;16
	pw	25,-74,-24	;17
	pw	-25,-74,-24	;18
	pw	19,-54,-18	;19
	pw	-19,-54,-18	;20
	pw	19,-40,18	;21
	pw	-19,-40,18	;22
	pw	25,-56,23	;23
	pw	-25,-56,23	;24
	pw	31,-72,29	;25
	pw	-31,-72,29	;26
	pw	0,-4,0	;27
	pw	-1,-4,0	;28
	PointsXw	2
	pw	13,-34,-12	;29
	pw	13,-24,12	;31
	jump	.EB0
.A24A	Pointsw	16
	pw	0,-5,-1	;13
	pw	-1,-5,-1	;14
	pw	32,-97,-30	;15
	pw	-32,-97,-30	;16
	pw	26,-77,-24	;17
	pw	-26,-77,-24	;18
	pw	20,-57,-19	;19
	pw	-20,-57,-19	;20
	pw	20,-43,19	;21
	pw	-20,-43,19	;22
	pw	26,-59,24	;23
	pw	-26,-59,24	;24
	pw	32,-75,30	;25
	pw	-32,-75,30	;26
	pw	0,-5,0	;27
	pw	-1,-5,0	;28
	PointsXw	2
	pw	14,-37,-13	;29
	pw	14,-27,13	;31
	jump	.EB0
.A25A	Pointsw	16
	pw	17,-54,-16	;13
	pw	-18,-54,-16	;14
	pw	30,-90,-28	;15
	pw	-30,-90,-28	;16
	pw	24,-70,-22	;17
	pw	-24,-70,-22	;18
	pw	18,-50,-17	;19
	pw	-18,-50,-17	;20
	pw	18,-38,17	;21
	pw	-18,-38,17	;22
	pw	24,-54,22	;23
	pw	-24,-54,22	;24
	pw	30,-70,28	;25
	pw	-30,-70,28	;26
	pw	17,-42,16	;27
	pw	-18,-42,16	;28
	PointsXw	2
	pw	12,-30,-11	;29
	pw	12,-22,11	;31
	jump	.EB0
.A26A	Pointsw	16
	pw	34,-104,-32	;13
	pw	-34,-104,-32	;14
	pw	28,-84,-26	;15
	pw	-28,-84,-26	;16
	pw	22,-63,-21	;17
	pw	-22,-63,-21	;18
	pw	16,-43,-15	;19
	pw	-16,-43,-15	;20
	pw	16,-33,15	;21
	pw	-16,-33,15	;22
	pw	22,-49,21	;23
	pw	-22,-49,21	;24
	pw	28,-64,26	;25
	pw	-28,-64,26	;26
	pw	34,-80,32	;27
	pw	-34,-80,32	;28
	PointsXw	2
	pw	10,-23,-9	;29
	pw	10,-17,9	;31
	jump	.EB0
.A27A	Pointsw	16
	pw	35,-107,-33	;13
	pw	-35,-107,-33	;14
	pw	29,-87,-27	;15
	pw	-29,-87,-27	;16
	pw	23,-66,-22	;17
	pw	-23,-66,-22	;18
	pw	17,-46,-16	;19
	pw	-17,-46,-16	;20
	pw	17,-36,16	;21
	pw	-17,-36,16	;22
	pw	23,-52,22	;23
	pw	-23,-52,22	;24
	pw	29,-67,27	;25
	pw	-29,-67,27	;26
	pw	35,-83,33	;27
	pw	-35,-83,33	;28
	PointsXw	2
	pw	11,-26,-10	;29
	pw	11,-20,10	;31
	jump	.EB0
.A28A	Pointsw	16
	pw	36,-110,-34	;13
	pw	-36,-110,-34	;14
	pw	30,-90,-28	;15
	pw	-30,-90,-28	;16
	pw	24,-70,-23	;17
	pw	-24,-70,-23	;18
	pw	18,-50,-17	;19
	pw	-18,-50,-17	;20
	pw	18,-38,17	;21
	pw	-18,-38,17	;22
	pw	24,-54,22	;23
	pw	-24,-54,22	;24
	pw	30,-70,28	;25
	pw	-30,-70,28	;26
	pw	36,-86,34	;27
	pw	-36,-86,34	;28
	PointsXw	2
	pw	12,-30,-11	;29
	pw	12,-22,11	;31
	jump	.EB0
.A29A	Pointsw	16
	pw	37,-114,-35	;13
	pw	-37,-114,-35	;14
	pw	31,-94,-29	;15
	pw	-31,-94,-29	;16
	pw	25,-74,-24	;17
	pw	-25,-74,-24	;18
	pw	19,-54,-18	;19
	pw	-19,-54,-18	;20
	pw	19,-40,18	;21
	pw	-19,-40,18	;22
	pw	25,-56,23	;23
	pw	-25,-56,23	;24
	pw	31,-72,29	;25
	pw	-31,-72,29	;26
	pw	37,-88,35	;27
	pw	-37,-88,35	;28
	PointsXw	2
	pw	13,-34,-12	;29
	pw	13,-24,12	;31
	jump	.EB0
.A30A	Pointsw	16
	pw	38,-117,-36	;13
	pw	-38,-117,-36	;14
	pw	32,-97,-30	;15
	pw	-32,-97,-30	;16
	pw	26,-77,-24	;17
	pw	-26,-77,-24	;18
	pw	20,-57,-19	;19
	pw	-20,-57,-19	;20
	pw	20,-43,19	;21
	pw	-20,-43,19	;22
	pw	26,-59,24	;23
	pw	-26,-59,24	;24
	pw	32,-75,30	;25
	pw	-32,-75,30	;26
	pw	38,-91,36	;27
	pw	-38,-91,36	;28
	PointsXw	2
	pw	14,-37,-13	;29
	pw	14,-27,13	;31
.EB0

	EndPoints


barrier_F
	Vizis	18
	Viz	28,14,13,0,119,43	;0
	Viz	26,16,15,0,119,44	;1
	Viz	24,18,17,0,119,45	;2
	Viz	22,20,19,0,119,44	;3
	Viz	32,30,29,0,119,46	;4
	Viz	1,2,5,0,-127,0	;5
	Viz	0,8,10,-75,94,42	;6
	Viz	9,7,0,75,94,42	;7
	Viz	0,10,9,0,95,84	;8
	Viz	3,8,0,-75,94,-42	;9
	Viz	0,7,4,75,94,-42	;10
	Viz	8,6,12,-63,105,35	;11
	Viz	9,11,5,63,105,35	;12
	Viz	11,9,10,0,106,70	;13
	Viz	3,1,6,-63,105,-35	;14
	Viz	7,5,2,63,105,-35	;15
	Viz	1,3,4,0,106,-70	;16
	Viz	4,3,0,0,95,-84	;17
	BSPInit	barrier_EBSP
	BSP	1,barrier_f1,.bsp2
	BSP	3,barrier_f3,.bsp4
	BSPE	barrier_f5
.bsp4	BSPE	barrier_f6
.bsp2	BSPE	barrier_f7

barrier_f1	Faces
	Face4	63,1,0,119,44,26,16,15,25
	FendQ
barrier_f3	Faces
	Face4	61,3,0,119,44,22,20,19,21
	FendQ
barrier_f5	Faces
	Face3	43,6,-75,94,42,0,8,10
	Face3	43,7,75,94,42,9,7,0
	Face3	20,8,0,95,84,0,10,9
	Face3	16,9,-75,94,-42,3,8,0
	Face3	18,10,75,94,-42,0,7,4
	Face4	12,11,-63,105,35,8,6,12,10
	Face4	12,12,63,105,35,9,11,5,7
	Face4	18,13,0,106,70,11,9,10,12
	Face4	14,14,-63,105,-35,3,1,6,8
	Face4	16,15,63,105,-35,7,5,2,4
	Face4	12,16,0,106,-70,1,3,4,2
	Face3	43,17,0,95,-84,4,3,0
	Face6	0,5,0,-127,0,1,2,5,11,12,6
	Face4	65,4,0,119,46,32,30,29,31
	FendQ
barrier_f6	Faces
	Face4	62,2,0,119,45,24,18,17,23
	FendQ
barrier_f7	Faces
	Face4	64,0,0,119,43,28,14,13,27
	FendQ
barrier_EBSP
	EndShape

	endc

;--Shape file ----- C:\SHED\SHAPES6\SNAKE_0.ANM ----
	ifne	DO_HDR

snake_0
	ShapeHdr	snake_0_P,0,snake_0_F,0,-100,0,0,1,0,38,35,40,48,id_0_c,0,0,0,0,<snake_0>
	elseif
snake_0_P
	Pointsb	9
	pb	-1,-35,-30	;0
	pb	14,0,0	;1
	pb	-16,0,0	;2
	pb	9,-30,5	;3
	pb	-11,-30,5	;4
	pb	7,-10,20	;5
	pb	-9,-10,20	;6
	pb	4,0,40	;7
	pb	-6,0,40	;8
	IFEQ	SPEED_MODE
	Frames	16
	jumptab	.A0A
	jumptab	.A2A
	jumptab	.A4A
	jumptab	.A6A
	jumptab	.A8A
	jumptab	.A10A
	jumptab	.A12A
	jumptab	.A14A
	jumptab	.A16A
	jumptab	.A18A
	jumptab	.A20A
	jumptab	.A22A
	jumptab	.A24A
	jumptab	.A26A
	jumptab	.A28A
	jumptab	.A30A
	ELSEIF
	Frames	31
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
	jumptab	.A14A
	jumptab	.A15A
	jumptab	.A16A
	jumptab	.A17A
	jumptab	.A18A
	jumptab	.A19A
	jumptab	.A20A
	jumptab	.A21A
	jumptab	.A22A
	jumptab	.A23A
	jumptab	.A24A
	jumptab	.A25A
	jumptab	.A26A
	jumptab	.A27A
	jumptab	.A28A
	jumptab	.A29A
	jumptab	.A30A
	ENDC
.A0A	Pointsb	11
	pb	36,-21,-20	;9
	pb	-38,-21,-20	;10
	pb	-1,10,1	;11
	pb	-1,-20,0	;12
	pb	19,-20,0	;13
	pb	-21,-20,0	;14
	pb	-21,11,10	;15
	pb	19,-10,5	;16
	pb	-21,-10,5	;17
	pb	19,11,10	;18
	pb	-1,2,40	;19
	jump	.EB0
.A1A	Pointsb	11
	pb	36,-19,-22	;9
	pb	-38,-22,-18	;10
	pb	-1,10,0	;11
	pb	-1,-20,0	;12
	pb	19,-20,0	;13
	pb	-21,-20,0	;14
	pb	-21,12,9	;15
	pb	19,-10,5	;16
	pb	-21,-10,5	;17
	pb	19,10,11	;18
	pb	-1,4,40	;19
	jump	.EB0
.A2A	Pointsb	11
	pb	36,-17,-23	;9
	pb	-38,-24,-16	;10
	pb	-1,10,0	;11
	pb	-1,-20,0	;12
	pb	19,-20,0	;13
	pb	-21,-20,0	;14
	pb	-21,13,8	;15
	pb	19,-10,5	;16
	pb	-21,-10,5	;17
	pb	19,9,12	;18
	pb	-1,5,40	;19
	jump	.EB0
.A3A	Pointsb	11
	pb	36,-15,-24	;9
	pb	-38,-25,-14	;10
	pb	-1,10,0	;11
	pb	-1,-20,0	;12
	pb	19,-20,0	;13
	pb	-21,-20,0	;14
	pb	-21,14,7	;15
	pb	19,-10,5	;16
	pb	-21,-10,5	;17
	pb	19,8,12	;18
	pb	-1,7,40	;19
	jump	.EB0
.A4A	Pointsb	11
	pb	36,-13,-26	;9
	pb	-38,-26,-12	;10
	pb	-1,10,-1	;11
	pb	-1,-20,0	;12
	pb	19,-20,0	;13
	pb	-21,-20,0	;14
	pb	-21,14,6	;15
	pb	19,-10,5	;16
	pb	-21,-10,5	;17
	pb	19,7,13	;18
	pb	-1,9,39	;19
	jump	.EB0
.A5A	Pointsb	11
	pb	36,-10,-27	;9
	pb	-38,-27,-10	;10
	pb	-1,10,-2	;11
	pb	-1,-20,0	;12
	pb	19,-20,0	;13
	pb	-21,-20,0	;14
	pb	-21,14,4	;15
	pb	19,-10,5	;16
	pb	-21,-10,5	;17
	pb	19,6,14	;18
	pb	-1,10,38	;19
	jump	.EB0
.A6A	Pointsb	11
	pb	36,-8,-28	;9
	pb	-38,-28,-7	;10
	pb	-1,10,-2	;11
	pb	-1,-20,0	;12
	pb	19,-20,0	;13
	pb	-21,-20,0	;14
	pb	-21,14,3	;15
	pb	19,-10,5	;16
	pb	-21,-10,5	;17
	pb	19,4,14	;18
	pb	-1,12,38	;19
	jump	.EB0
.A7A	Pointsb	11
	pb	36,-6,-28	;9
	pb	-38,-28,-4	;10
	pb	-1,10,-2	;11
	pb	-1,-20,0	;12
	pb	19,-20,0	;13
	pb	-21,-20,0	;14
	pb	-21,14,2	;15
	pb	19,-10,5	;16
	pb	-21,-10,5	;17
	pb	19,3,14	;18
	pb	-1,14,38	;19
	jump	.EB0
.A8A	Pointsb	11
	pb	36,-3,-29	;9
	pb	-38,-29,-2	;10
	pb	-1,10,-2	;11
	pb	-1,-20,0	;12
	pb	19,-20,0	;13
	pb	-21,-20,0	;14
	pb	-21,15,1	;15
	pb	19,-10,5	;16
	pb	-21,-10,5	;17
	pb	19,2,15	;18
	pb	-1,15,37	;19
	jump	.EB0
.A9A	Pointsb	11
	pb	36,-6,-28	;9
	pb	-38,-28,-4	;10
	pb	-1,10,-2	;11
	pb	-1,-20,0	;12
	pb	19,-20,0	;13
	pb	-21,-20,0	;14
	pb	-21,14,2	;15
	pb	19,-10,5	;16
	pb	-21,-10,5	;17
	pb	19,3,14	;18
	pb	-1,17,36	;19
	jump	.EB0
.A10A	Pointsb	11
	pb	36,-8,-28	;9
	pb	-38,-28,-7	;10
	pb	-1,9,-3	;11
	pb	-1,-20,0	;12
	pb	19,-20,0	;13
	pb	-21,-20,0	;14
	pb	-21,14,3	;15
	pb	19,-10,5	;16
	pb	-21,-10,5	;17
	pb	19,4,14	;18
	pb	-1,19,35	;19
	jump	.EB0
.A11A	Pointsb	11
	pb	36,-10,-27	;9
	pb	-38,-27,-10	;10
	pb	-1,9,-4	;11
	pb	-1,-20,0	;12
	pb	19,-20,0	;13
	pb	-21,-20,0	;14
	pb	-21,14,4	;15
	pb	19,-10,5	;16
	pb	-21,-10,5	;17
	pb	19,6,14	;18
	pb	-1,20,34	;19
	jump	.EB0
.A12A	Pointsb	11
	pb	36,-13,-26	;9
	pb	-38,-26,-12	;10
	pb	-1,9,-4	;11
	pb	-1,-20,0	;12
	pb	19,-20,0	;13
	pb	-21,-20,0	;14
	pb	-21,14,6	;15
	pb	19,-10,5	;16
	pb	-21,-10,5	;17
	pb	19,7,13	;18
	pb	-1,22,34	;19
	jump	.EB0
.A13A	Pointsb	11
	pb	36,-15,-24	;9
	pb	-38,-25,-14	;10
	pb	-1,9,-4	;11
	pb	-1,-20,0	;12
	pb	19,-20,0	;13
	pb	-21,-20,0	;14
	pb	-21,14,7	;15
	pb	19,-10,5	;16
	pb	-21,-10,5	;17
	pb	19,8,12	;18
	pb	-1,23,33	;19
	jump	.EB0
.A14A	Pointsb	11
	pb	36,-17,-23	;9
	pb	-38,-24,-16	;10
	pb	-1,9,-5	;11
	pb	-1,-20,0	;12
	pb	19,-20,0	;13
	pb	-21,-20,0	;14
	pb	-21,13,8	;15
	pb	19,-10,5	;16
	pb	-21,-10,5	;17
	pb	19,9,12	;18
	pb	-1,24,32	;19
	jump	.EB0
.A15A	Pointsb	11
	pb	36,-19,-22	;9
	pb	-38,-22,-18	;10
	pb	-1,8,-6	;11
	pb	-1,-20,0	;12
	pb	19,-20,0	;13
	pb	-21,-20,0	;14
	pb	-21,12,9	;15
	pb	19,-10,5	;16
	pb	-21,-10,5	;17
	pb	19,10,11	;18
	pb	-1,26,30	;19
	jump	.EB0
.A16A	Pointsb	11
	pb	36,-21,-20	;9
	pb	-38,-21,-20	;10
	pb	-1,8,-6	;11
	pb	-1,-20,0	;12
	pb	19,-20,0	;13
	pb	-21,-20,0	;14
	pb	-21,11,10	;15
	pb	19,-10,5	;16
	pb	-21,-10,5	;17
	pb	19,11,10	;18
	pb	-1,27,29	;19
	jump	.EB0
.A17A	Pointsb	11
	pb	36,-22,-18	;9
	pb	-38,-19,-22	;10
	pb	-1,8,-6	;11
	pb	-1,-19,0	;12
	pb	19,-19,0	;13
	pb	-21,-19,0	;14
	pb	-21,10,11	;15
	pb	19,-11,5	;16
	pb	-21,-11,5	;17
	pb	19,12,9	;18
	pb	-1,26,30	;19
	jump	.EB0
.A18A	Pointsb	11
	pb	36,-24,-16	;9
	pb	-38,-17,-23	;10
	pb	-1,9,-5	;11
	pb	-1,-18,0	;12
	pb	19,-18,0	;13
	pb	-21,-18,0	;14
	pb	-21,9,12	;15
	pb	19,-12,5	;16
	pb	-21,-12,5	;17
	pb	19,13,8	;18
	pb	-1,24,32	;19
	jump	.EB0
.A19A	Pointsb	11
	pb	36,-25,-14	;9
	pb	-38,-15,-24	;10
	pb	-1,9,-4	;11
	pb	-1,-17,0	;12
	pb	19,-17,0	;13
	pb	-21,-17,0	;14
	pb	-21,8,12	;15
	pb	19,-13,5	;16
	pb	-21,-13,5	;17
	pb	19,14,7	;18
	pb	-1,23,33	;19
	jump	.EB0
.A20A	Pointsb	11
	pb	36,-26,-12	;9
	pb	-38,-13,-26	;10
	pb	-1,9,-4	;11
	pb	-1,-16,0	;12
	pb	19,-16,0	;13
	pb	-21,-16,0	;14
	pb	-21,7,13	;15
	pb	19,-14,5	;16
	pb	-21,-14,5	;17
	pb	19,14,6	;18
	pb	-1,22,34	;19
	jump	.EB0
.A21A	Pointsb	11
	pb	36,-27,-10	;9
	pb	-38,-10,-27	;10
	pb	-1,9,-4	;11
	pb	-1,-17,0	;12
	pb	19,-17,0	;13
	pb	-21,-17,0	;14
	pb	-21,6,14	;15
	pb	19,-13,4	;16
	pb	-21,-13,4	;17
	pb	19,14,4	;18
	pb	-1,20,34	;19
	jump	.EB0
.A22A	Pointsb	11
	pb	36,-28,-7	;9
	pb	-38,-8,-28	;10
	pb	-1,9,-3	;11
	pb	-1,-18,0	;12
	pb	19,-18,0	;13
	pb	-21,-18,0	;14
	pb	-21,4,14	;15
	pb	19,-12,4	;16
	pb	-21,-12,4	;17
	pb	19,14,3	;18
	pb	-1,19,35	;19
	jump	.EB0
.A23A	Pointsb	11
	pb	36,-28,-4	;9
	pb	-38,-6,-28	;10
	pb	-1,10,-2	;11
	pb	-1,-19,0	;12
	pb	19,-19,0	;13
	pb	-21,-19,0	;14
	pb	-21,3,14	;15
	pb	19,-11,4	;16
	pb	-21,-11,4	;17
	pb	19,14,2	;18
	pb	-1,17,36	;19
	jump	.EB0
.A24A	Pointsb	11
	pb	36,-29,-2	;9
	pb	-38,-3,-29	;10
	pb	-1,10,-2	;11
	pb	-1,-20,0	;12
	pb	19,-20,0	;13
	pb	-21,-20,0	;14
	pb	-21,2,15	;15
	pb	19,-10,5	;16
	pb	-21,-10,5	;17
	pb	19,15,1	;18
	pb	-1,15,37	;19
	jump	.EB0
.A25A	Pointsb	11
	pb	36,-28,-4	;9
	pb	-38,-6,-28	;10
	pb	-1,10,-2	;11
	pb	-1,-20,0	;12
	pb	19,-20,0	;13
	pb	-21,-20,0	;14
	pb	-21,3,14	;15
	pb	19,-10,5	;16
	pb	-21,-10,5	;17
	pb	19,14,2	;18
	pb	-1,14,38	;19
	jump	.EB0
.A26A	Pointsb	11
	pb	36,-28,-7	;9
	pb	-38,-8,-28	;10
	pb	-1,10,-2	;11
	pb	-1,-20,0	;12
	pb	19,-20,0	;13
	pb	-21,-20,0	;14
	pb	-21,4,14	;15
	pb	19,-10,5	;16
	pb	-21,-10,5	;17
	pb	19,14,3	;18
	pb	-1,12,38	;19
	jump	.EB0
.A27A	Pointsb	11
	pb	36,-27,-10	;9
	pb	-38,-10,-27	;10
	pb	-1,10,-2	;11
	pb	-1,-20,0	;12
	pb	19,-20,0	;13
	pb	-21,-20,0	;14
	pb	-21,6,14	;15
	pb	19,-10,5	;16
	pb	-21,-10,5	;17
	pb	19,14,4	;18
	pb	-1,10,38	;19
	jump	.EB0
.A28A	Pointsb	11
	pb	36,-26,-12	;9
	pb	-38,-13,-26	;10
	pb	-1,10,-1	;11
	pb	-1,-20,0	;12
	pb	19,-20,0	;13
	pb	-21,-20,0	;14
	pb	-21,7,13	;15
	pb	19,-10,5	;16
	pb	-21,-10,5	;17
	pb	19,14,6	;18
	pb	-1,9,39	;19
	jump	.EB0
.A29A	Pointsb	11
	pb	36,-25,-14	;9
	pb	-38,-15,-24	;10
	pb	-1,10,0	;11
	pb	-1,-20,0	;12
	pb	19,-20,0	;13
	pb	-21,-20,0	;14
	pb	-21,8,12	;15
	pb	19,-10,5	;16
	pb	-21,-10,5	;17
	pb	19,14,7	;18
	pb	-1,7,40	;19
	jump	.EB0
.A30A	Pointsb	11
	pb	36,-24,-16	;9
	pb	-38,-17,-23	;10
	pb	-1,10,0	;11
	pb	-1,-20,0	;12
	pb	19,-20,0	;13
	pb	-21,-20,0	;14
	pb	-21,9,12	;15
	pb	19,-10,5	;16
	pb	-21,-10,5	;17
	pb	19,13,8	;18
	pb	-1,5,40	;19
.EB0

	EndPoints


snake_0_F
	Vizis	25
	Viz	8,7,1,0,-127,0	;0
	Viz	19,2,1,0,112,61	;1
	Viz	17,14,6,95,38,76	;2
	Viz	2,17,6,81,-73,65	;3
	Viz	6,14,4,88,49,77	;4
	Viz	0,14,17,90,-40,-80	;5
	Viz	0,17,2,104,-16,-71	;6
	Viz	4,14,0,87,92,-12	;7
	Viz	5,13,16,-95,38,76	;8
	Viz	5,16,1,-81,-73,65	;9
	Viz	3,13,5,-88,49,77	;10
	Viz	16,13,0,-90,-40,-80	;11
	Viz	1,16,0,-104,-16,-71	;12
	Viz	0,13,3,-87,92,-12	;13
	Viz	3,5,12,91,59,66	;14
	Viz	7,8,6,0,114,57	;15
	Viz	6,8,2,121,24,30	;16
	Viz	1,7,5,-121,24,30	;17
	Viz	12,0,3,95,76,38	;18
	Viz	12,6,4,-91,59,66	;19
	Viz	4,0,12,-95,76,38	;20
	Viz	15,10,2,4,28,124	;21
	Viz	2,19,11,68,-104,-27	;22
	Viz	11,19,1,-68,-104,-27	;23
	Viz	1,9,18,0,122,35	;24
	BSPInit	snake_0_EBSP
	BSP	6,snake_0_f1,.bsp2
	BSP	15,snake_0_f3,.bsp4
	BSP	16,snake_0_f5,.bsp6
	BSP	23,snake_0_f7,.bsp8
	BSP	0,snake_0_f9,.bsp10
	BSPE	snake_0_f11
.bsp10	BSPE	snake_0_f12
.bsp8	BSPE	snake_0_f13
.bsp6	BSPE	snake_0_f14
.bsp4	BSPE	snake_0_f15
.bsp2	BSPE	snake_0_f16

snake_0_f1	Faces
	Face3	12,6,104,-16,-71,0,17,2
	FendQ
snake_0_f3	Faces
	Face5	32,15,0,114,57,7,8,6,12,5
	FendQ
snake_0_f5	Faces
	Face3	30,16,121,24,30,6,8,2
	FendQ
snake_0_f7	Faces
	Face3	30,23,-68,-104,-27,11,19,1
	FendQ
snake_0_f9	Faces
	Face4	21,0,0,-127,0,8,7,1,2
	FendQ
snake_0_f11	Faces
	Face3	43,8,-95,38,76,5,13,16
	Face3	20,11,-90,-40,-80,16,13,0
	Face3	34,17,-121,24,30,1,7,5
	Face3	16,9,-81,-73,65,5,16,1
	Face3	14,12,-104,-16,-71,1,16,0
	FendQ
snake_0_f12	Faces
	Face3	23,1,0,112,61,19,2,1
	Face3	28,22,68,-104,-27,2,19,11
	FendQ
snake_0_f13	Faces
	Face3	30,24,0,122,35,1,9,18
	FendQ
snake_0_f14	Faces
	Face3	43,2,95,38,76,17,14,6
	Face3	14,3,81,-73,65,2,17,6
	FendQ
snake_0_f15	Faces
	Face3	14,18,95,76,38,12,0,3
	Face3	18,20,-95,76,38,4,0,12
	Face3	16,14,91,59,66,3,5,12
	Face3	20,19,-91,59,66,12,6,4
	Face3	16,4,88,49,77,6,14,4
	Face3	14,7,87,92,-12,4,14,0
	Face3	20,10,-88,49,77,3,13,5
	Face3	18,13,-87,92,-12,0,13,3
	FendQ
snake_0_f16	Faces
	Face3	18,5,90,-40,-80,0,14,17
	Face3	28,21,4,28,124,15,10,2
	FendQ
snake_0_EBSP
	EndShape

	endc

;--Shape file ----- C:\SHED\SHAPES6\SNAKE_1.ANM ----
	ifne	DO_HDR

snake_1
	ShapeHdr	snake_1_P,0,snake_1_F,0,0,0,0,0,0,15,50,15,50,id_0_c,0,0,0,0,<snake_1>
	elseif
snake_1_P
	IFEQ	SPEED_MODE
	Frames	10
	jumptab	.A0A
	jumptab	.A2A
	jumptab	.A4A
	jumptab	.A6A
	jumptab	.A8A
	jumptab	.A10A
	jumptab	.A12A
	jumptab	.A14A
	jumptab	.A16A
	jumptab	.A18A
	ELSEIF
	Frames	19
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
	jumptab	.A14A
	jumptab	.A15A
	jumptab	.A16A
	jumptab	.A17A
	jumptab	.A18A
	ENDC
.A0A	Pointsb	3
	pb	0,30,0	;0
	pb	0,40,15	;1
	pb	0,40,15	;2
	PointsXb	4
	pb	-5,40,-10	;3
	pb	5,40,-10	;5
	pb	15,40,0	;7
	pb	15,40,0	;9
	jump	.EB0
.A1A	Pointsb	3
	pb	0,25,0	;0
	pb	0,40,15	;1
	pb	0,35,15	;2
	PointsXb	4
	pb	-5,40,-10	;3
	pb	5,35,-10	;5
	pb	15,40,0	;7
	pb	15,35,0	;9
	jump	.EB0
.A2A	Pointsb	3
	pb	0,20,0	;0
	pb	0,40,15	;1
	pb	0,30,15	;2
	PointsXb	4
	pb	-5,40,-10	;3
	pb	5,30,-10	;5
	pb	15,40,0	;7
	pb	15,30,0	;9
	jump	.EB0
.A3A	Pointsb	3
	pb	0,15,0	;0
	pb	0,40,15	;1
	pb	0,25,15	;2
	PointsXb	4
	pb	-5,40,-10	;3
	pb	5,25,-10	;5
	pb	15,40,0	;7
	pb	15,25,0	;9
	jump	.EB0
.A4A	Pointsb	3
	pb	0,10,0	;0
	pb	0,40,15	;1
	pb	0,20,15	;2
	PointsXb	4
	pb	-5,40,-10	;3
	pb	5,20,-10	;5
	pb	15,40,0	;7
	pb	15,20,0	;9
	jump	.EB0
.A5A	Pointsb	3
	pb	0,5,0	;0
	pb	0,40,15	;1
	pb	0,15,15	;2
	PointsXb	4
	pb	-5,40,-10	;3
	pb	5,15,-10	;5
	pb	15,40,0	;7
	pb	15,15,0	;9
	jump	.EB0
.A6A	Pointsb	3
	pb	0,0,0	;0
	pb	0,40,15	;1
	pb	0,10,15	;2
	PointsXb	4
	pb	-5,40,-10	;3
	pb	5,10,-10	;5
	pb	15,40,0	;7
	pb	15,10,0	;9
	jump	.EB0
.A7A	Pointsb	3
	pb	0,-5,0	;0
	pb	0,40,15	;1
	pb	0,5,15	;2
	PointsXb	4
	pb	-5,40,-10	;3
	pb	5,5,-10	;5
	pb	15,40,0	;7
	pb	15,5,0	;9
	jump	.EB0
.A8A	Pointsb	3
	pb	0,-10,0	;0
	pb	0,40,15	;1
	pb	0,0,15	;2
	PointsXb	4
	pb	-5,40,-10	;3
	pb	5,0,-10	;5
	pb	15,40,0	;7
	pb	15,0,0	;9
	jump	.EB0
.A9A	Pointsb	3
	pb	0,-15,0	;0
	pb	0,40,15	;1
	pb	0,-5,15	;2
	PointsXb	4
	pb	-5,40,-10	;3
	pb	5,-5,-10	;5
	pb	15,40,0	;7
	pb	15,-5,0	;9
	jump	.EB0
.A10A	Pointsb	3
	pb	0,-20,0	;0
	pb	0,40,15	;1
	pb	0,-10,15	;2
	PointsXb	4
	pb	-5,40,-10	;3
	pb	5,-10,-10	;5
	pb	15,40,0	;7
	pb	15,-10,0	;9
	jump	.EB0
.A11A	Pointsb	3
	pb	0,-25,0	;0
	pb	0,40,15	;1
	pb	0,-15,15	;2
	PointsXb	4
	pb	-5,40,-10	;3
	pb	5,-15,-10	;5
	pb	15,40,0	;7
	pb	15,-15,0	;9
	jump	.EB0
.A12A	Pointsb	3
	pb	0,-30,0	;0
	pb	0,40,15	;1
	pb	0,-20,15	;2
	PointsXb	4
	pb	-5,40,-10	;3
	pb	5,-20,-10	;5
	pb	15,40,0	;7
	pb	15,-20,0	;9
	jump	.EB0
.A13A	Pointsb	3
	pb	0,-35,0	;0
	pb	0,40,15	;1
	pb	0,-25,15	;2
	PointsXb	4
	pb	-5,40,-10	;3
	pb	5,-25,-10	;5
	pb	15,40,0	;7
	pb	15,-25,0	;9
	jump	.EB0
.A14A	Pointsb	3
	pb	0,-40,0	;0
	pb	0,40,15	;1
	pb	0,-30,15	;2
	PointsXb	4
	pb	-5,40,-10	;3
	pb	5,-30,-10	;5
	pb	15,40,0	;7
	pb	15,-30,0	;9
	jump	.EB0
.A15A	Pointsb	3
	pb	0,-45,0	;0
	pb	0,40,15	;1
	pb	0,-35,15	;2
	PointsXb	4
	pb	-5,40,-10	;3
	pb	5,-35,-10	;5
	pb	15,40,0	;7
	pb	15,-35,0	;9
	jump	.EB0
.A16A	Pointsb	3
	pb	0,-50,0	;0
	pb	0,40,15	;1
	pb	0,-40,15	;2
	PointsXb	4
	pb	-5,40,-10	;3
	pb	5,-40,-10	;5
	pb	15,40,0	;7
	pb	15,-40,0	;9
	jump	.EB0
.A17A	Pointsb	3
	pb	0,-50,0	;0
	pb	0,20,15	;1
	pb	0,-40,15	;2
	PointsXb	4
	pb	-5,20,-10	;3
	pb	5,-40,-10	;5
	pb	15,20,0	;7
	pb	15,-40,0	;9
	jump	.EB0
.A18A	Pointsb	3
	pb	0,-50,0	;0
	pb	0,0,15	;1
	pb	0,-40,15	;2
	PointsXb	4
	pb	-5,0,-10	;3
	pb	5,-40,-10	;5
	pb	15,0,0	;7
	pb	15,-40,0	;9
.EB0

	EndPoints


snake_1_F
	Vizis	11
	Viz	9,7,1,-90,0,90	;0
	Viz	2,1,8,90,0,90	;1
	Viz	0,6,5,0,90,-90	;2
	Viz	2,0,9,-62,92,62	;3
	Viz	5,9,0,-62,92,-62	;4
	Viz	10,0,2,62,92,62	;5
	Viz	0,10,6,62,92,-62	;6
	Viz	1,7,4,0,-127,0	;7
	Viz	10,8,3,90,0,-90	;8
	Viz	5,4,7,-90,0,-90	;9
	Viz	5,6,3,0,0,-127	;10

snake_1_f1	Faces
	Face4	7,0,-90,0,90,9,7,1,2
	Face4	7,1,90,0,90,2,1,8,10
	Face3	0,2,0,90,-90,0,6,5
	Face3	7,3,-62,92,62,2,0,9
	Face3	0,4,-62,92,-62,5,9,0
	Face3	7,5,62,92,62,10,0,2
	Face3	0,6,62,92,-62,0,10,6
	Face5	7,7,0,-127,0,1,7,4,3,8
	Face4	0,8,90,0,-90,10,8,3,6
	Face4	0,9,-90,0,-90,5,4,7,9
	Face4	0,10,0,0,-127,5,6,3,4
	Fend
	EndShape

	endc

;--Shape file ----- C:\SHED\NSHAPES\ika.anm ----
	ifne	DO_HDR

ika
	ShapeHdr	ika_P,0,ika_F,0,0,0,0,0,0,46,61,100,100,id_0_c,0,0,0,0,<ika>
	elseif
ika_P
	Pointsb	5
	pb	0,10,0	;0
	pb	0,-10,0	;1
	pb	0,20,20	;2
	pb	0,-20,20	;3
	pb	0,0,100	;4
	PointsXb	3
	pb	-10,0,0	;5
	pb	-20,0,20	;7
	pb	-10,0,49	;9
	IFEQ	SPEED_MODE
	Frames	23
	jumptab	.A0A
	jumptab	.A2A
	jumptab	.A4A
	jumptab	.A6A
	jumptab	.A8A
	jumptab	.A10A
	jumptab	.A12A
	jumptab	.A14A
	jumptab	.A16A
	jumptab	.A18A
	jumptab	.A20A
	jumptab	.A22A
	jumptab	.A24A
	jumptab	.A26A
	jumptab	.A28A
	jumptab	.A30A
	jumptab	.A32A
	jumptab	.A34A
	jumptab	.A36A
	jumptab	.A38A
	jumptab	.A40A
	jumptab	.A42A
	jumptab	.A44A
	ELSEIF
	Frames	46
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
	jumptab	.A14A
	jumptab	.A15A
	jumptab	.A16A
	jumptab	.A17A
	jumptab	.A18A
	jumptab	.A19A
	jumptab	.A20A
	jumptab	.A21A
	jumptab	.A22A
	jumptab	.A23A
	jumptab	.A24A
	jumptab	.A25A
	jumptab	.A26A
	jumptab	.A27A
	jumptab	.A28A
	jumptab	.A29A
	jumptab	.A30A
	jumptab	.A31A
	jumptab	.A32A
	jumptab	.A33A
	jumptab	.A34A
	jumptab	.A35A
	jumptab	.A36A
	jumptab	.A37A
	jumptab	.A38A
	jumptab	.A39A
	jumptab	.A40A
	jumptab	.A41A
	jumptab	.A42A
	jumptab	.A43A
	jumptab	.A44A
	jumptab	.A45A
	ENDC
.A0A	Pointsb	5
	pb	-10,0,-80	;11
	pb	10,0,-80	;12
	pb	0,-10,-80	;13
	pb	-15,0,70	;14
	pb	15,0,70	;15
	PointsXb	4
	pb	-6,4,-40	;16
	pb	-14,-4,-40	;18
	pb	-5,-10,-40	;20
	pb	-23,8,40	;22
	jump	.EB0
.A1A	Pointsb	5
	pb	-10,0,-80	;11
	pb	10,0,-80	;12
	pb	0,-10,-80	;13
	pb	-15,-2,70	;14
	pb	15,-2,70	;15
	PointsXb	4
	pb	-8,6,-40	;16
	pb	-16,-2,-40	;18
	pb	-5,-14,-40	;20
	pb	-24,6,40	;22
	jump	.EB0
.A2A	Pointsb	5
	pb	-10,0,-79	;11
	pb	10,0,-79	;12
	pb	0,-10,-79	;13
	pb	-15,-3,70	;14
	pb	15,-3,70	;15
	PointsXb	4
	pb	-11,8,-39	;16
	pb	-18,1,-39	;18
	pb	-5,-17,-39	;20
	pb	-25,4,40	;22
	jump	.EB0
.A3A	Pointsb	5
	pb	-10,0,-76	;11
	pb	10,0,-76	;12
	pb	0,-10,-76	;13
	pb	-14,-4,70	;14
	pb	14,-4,70	;15
	PointsXb	4
	pb	-14,10,-38	;16
	pb	-20,4,-38	;18
	pb	-5,-20,-38	;20
	pb	-25,2,40	;22
	jump	.EB0
.A4A	Pointsb	5
	pb	-10,0,-74	;11
	pb	10,0,-74	;12
	pb	0,-10,-74	;13
	pb	-14,-5,70	;14
	pb	14,-5,70	;15
	PointsXb	4
	pb	-16,13,-37	;16
	pb	-23,6,-37	;18
	pb	-5,-24,-37	;20
	pb	-25,0,40	;22
	jump	.EB0
.A5A	Pointsb	5
	pb	-10,0,-72	;11
	pb	10,0,-72	;12
	pb	0,-10,-72	;13
	pb	-14,-6,70	;14
	pb	14,-6,70	;15
	PointsXb	4
	pb	-18,16,-36	;16
	pb	-26,8,-36	;18
	pb	-5,-27,-36	;20
	pb	-25,-2,40	;22
	jump	.EB0
.A6A	Pointsb	5
	pb	-11,1,-69	;11
	pb	11,1,-69	;12
	pb	0,-11,-69	;13
	pb	-13,-7,70	;14
	pb	13,-8,70	;15
	PointsXb	4
	pb	-21,18,-35	;16
	pb	-28,11,-35	;18
	pb	-5,-30,-35	;20
	pb	-25,-4,40	;22
	jump	.EB0
.A7A	Pointsb	5
	pb	-11,1,-65	;11
	pb	11,1,-65	;12
	pb	0,-11,-65	;13
	pb	-14,-6,70	;14
	pb	14,-6,70	;15
	PointsXb	4
	pb	-23,20,-33	;16
	pb	-30,13,-33	;18
	pb	-5,-33,-33	;20
	pb	-24,-6,40	;22
	jump	.EB0
.A8A	Pointsb	5
	pb	-11,1,-61	;11
	pb	11,1,-61	;12
	pb	0,-11,-61	;13
	pb	-14,-5,70	;14
	pb	14,-5,70	;15
	PointsXb	4
	pb	-25,22,-31	;16
	pb	-32,15,-31	;18
	pb	-5,-36,-31	;20
	pb	-23,-8,40	;22
	jump	.EB0
.A9A	Pointsb	5
	pb	-11,1,-56	;11
	pb	11,1,-56	;12
	pb	0,-11,-56	;13
	pb	-14,-4,70	;14
	pb	14,-4,70	;15
	PointsXb	4
	pb	-26,24,-28	;16
	pb	-34,16,-28	;18
	pb	-5,-38,-28	;20
	pb	-23,-10,40	;22
	jump	.EB0
.A10A	Pointsb	5
	pb	-11,1,-51	;11
	pb	11,1,-51	;12
	pb	0,-11,-51	;13
	pb	-15,-3,70	;14
	pb	15,-3,70	;15
	PointsXb	4
	pb	-28,25,-26	;16
	pb	-35,18,-26	;18
	pb	-5,-41,-26	;20
	pb	-23,-11,40	;22
	jump	.EB0
.A11A	Pointsb	5
	pb	-11,1,-45	;11
	pb	11,1,-45	;12
	pb	0,-11,-45	;13
	pb	-15,-2,70	;14
	pb	15,-2,70	;15
	PointsXb	4
	pb	-30,26,-23	;16
	pb	-36,20,-23	;18
	pb	-5,-43,-23	;20
	pb	-23,-10,40	;22
	jump	.EB0
.A12A	Pointsb	5
	pb	-11,1,-39	;11
	pb	11,1,-39	;12
	pb	0,-11,-39	;13
	pb	-15,0,70	;14
	pb	15,0,70	;15
	PointsXb	4
	pb	-31,28,-20	;16
	pb	-38,21,-20	;18
	pb	-5,-45,-20	;20
	pb	-23,-8,40	;22
	jump	.EB0
.A13A	Pointsb	5
	pb	-14,4,-39	;11
	pb	13,3,-40	;12
	pb	0,-14,-39	;13
	pb	-15,2,70	;14
	pb	15,2,70	;15
	PointsXb	4
	pb	-32,29,-17	;16
	pb	-39,22,-17	;18
	pb	-5,-46,-17	;20
	pb	-24,-6,40	;22
	jump	.EB0
.A14A	Pointsb	5
	pb	-16,6,-39	;11
	pb	15,5,-40	;12
	pb	0,-18,-39	;13
	pb	-15,3,70	;14
	pb	15,3,70	;15
	PointsXb	4
	pb	-33,30,-14	;16
	pb	-40,23,-14	;18
	pb	-5,-48,-14	;20
	pb	-25,-4,40	;22
	jump	.EB0
.A15A	Pointsb	5
	pb	-17,7,-38	;11
	pb	17,7,-39	;12
	pb	0,-20,-38	;13
	pb	-14,4,70	;14
	pb	14,4,70	;15
	PointsXb	4
	pb	-34,30,-11	;16
	pb	-40,24,-11	;18
	pb	-5,-48,-11	;20
	pb	-25,-2,40	;22
	jump	.EB0
.A16A	Pointsb	5
	pb	-19,9,-38	;11
	pb	19,9,-38	;12
	pb	0,-23,-38	;13
	pb	-14,5,70	;14
	pb	14,5,70	;15
	PointsXb	4
	pb	-34,31,-7	;16
	pb	-41,24,-7	;18
	pb	-5,-49,-7	;20
	pb	-25,0,40	;22
	jump	.EB0
.A17A	Pointsb	5
	pb	-22,12,-36	;11
	pb	22,12,-36	;12
	pb	0,-26,-36	;13
	pb	-14,6,70	;14
	pb	14,6,70	;15
	PointsXb	4
	pb	-34,32,-4	;16
	pb	-42,24,-4	;18
	pb	-5,-50,-4	;20
	pb	-25,2,40	;22
	jump	.EB0
.A18A	Pointsb	5
	pb	-24,14,-35	;11
	pb	24,14,-35	;12
	pb	0,-30,-35	;13
	pb	-13,7,70	;14
	pb	13,7,70	;15
	PointsXb	4
	pb	-35,32,0	;16
	pb	-42,25,0	;18
	pb	-5,-50,0	;20
	pb	-25,4,40	;22
	jump	.EB0
.A19A	Pointsb	5
	pb	-26,16,-40	;11
	pb	26,16,-40	;12
	pb	0,-32,-40	;13
	pb	-14,6,70	;14
	pb	14,6,70	;15
	PointsXb	4
	pb	-34,32,-4	;16
	pb	-42,24,-4	;18
	pb	-5,-50,-4	;20
	pb	-24,6,40	;22
	jump	.EB0
.A20A	Pointsb	5
	pb	-28,18,-45	;11
	pb	28,18,-45	;12
	pb	0,-35,-45	;13
	pb	-14,5,70	;14
	pb	14,5,70	;15
	PointsXb	4
	pb	-34,31,-7	;16
	pb	-41,24,-7	;18
	pb	-5,-49,-7	;20
	pb	-23,8,40	;22
	jump	.EB0
.A21A	Pointsb	5
	pb	-30,20,-49	;11
	pb	30,20,-50	;12
	pb	0,-38,-49	;13
	pb	-14,4,70	;14
	pb	14,4,70	;15
	PointsXb	4
	pb	-34,30,-10	;16
	pb	-40,24,-10	;18
	pb	-5,-48,-10	;20
	pb	-23,10,40	;22
	jump	.EB0
.A22A	Pointsb	5
	pb	-33,23,-53	;11
	pb	32,22,-54	;12
	pb	0,-42,-53	;13
	pb	-15,3,70	;14
	pb	15,3,70	;15
	PointsXb	4
	pb	-33,30,-14	;16
	pb	-40,23,-14	;18
	pb	-5,-48,-14	;20
	pb	-23,11,40	;22
	jump	.EB0
.A23A	Pointsb	5
	pb	-34,24,-56	;11
	pb	34,24,-56	;12
	pb	0,-44,-56	;13
	pb	-15,2,70	;14
	pb	15,2,70	;15
	PointsXb	4
	pb	-32,29,-17	;16
	pb	-39,22,-17	;18
	pb	-5,-46,-17	;20
	pb	-23,10,40	;22
	jump	.EB0
.A24A	Pointsb	5
	pb	-35,25,-59	;11
	pb	35,25,-59	;12
	pb	0,-45,-59	;13
	pb	-15,0,70	;14
	pb	15,0,70	;15
	PointsXb	4
	pb	-31,28,-20	;16
	pb	-38,21,-20	;18
	pb	-5,-45,-20	;20
	pb	-23,8,40	;22
	jump	.EB0
.A25A	Pointsb	5
	pb	-36,26,-62	;11
	pb	36,26,-62	;12
	pb	0,-47,-62	;13
	pb	-15,-2,70	;14
	pb	15,-2,70	;15
	PointsXb	4
	pb	-29,26,-23	;16
	pb	-36,19,-23	;18
	pb	-5,-43,-23	;20
	pb	-24,6,40	;22
	jump	.EB0
.A26A	Pointsb	5
	pb	-37,27,-64	;11
	pb	37,27,-64	;12
	pb	0,-48,-64	;13
	pb	-15,-3,70	;14
	pb	15,-3,70	;15
	PointsXb	4
	pb	-28,25,-26	;16
	pb	-35,18,-26	;18
	pb	-5,-41,-26	;20
	pb	-25,4,40	;22
	jump	.EB0
.A27A	Pointsb	5
	pb	-42,32,-62	;11
	pb	42,32,-62	;12
	pb	0,-54,-62	;13
	pb	-14,-4,70	;14
	pb	14,-4,70	;15
	PointsXb	4
	pb	-26,24,-28	;16
	pb	-34,16,-28	;18
	pb	-5,-38,-28	;20
	pb	-25,2,40	;22
	jump	.EB0
.A28A	Pointsb	5
	pb	-46,36,-61	;11
	pb	46,36,-61	;12
	pb	0,-61,-61	;13
	pb	-14,-5,70	;14
	pb	14,-5,70	;15
	PointsXb	4
	pb	-25,22,-31	;16
	pb	-32,15,-31	;18
	pb	-5,-36,-31	;20
	pb	-25,0,40	;22
	jump	.EB0
.A29A	Pointsb	5
	pb	-46,36,-60	;11
	pb	46,36,-60	;12
	pb	0,-60,-60	;13
	pb	-14,-6,70	;14
	pb	14,-6,70	;15
	PointsXb	4
	pb	-23,20,-33	;16
	pb	-30,13,-33	;18
	pb	-5,-33,-33	;20
	pb	-25,-2,40	;22
	jump	.EB0
.A30A	Pointsb	5
	pb	-45,35,-60	;11
	pb	45,35,-60	;12
	pb	0,-60,-60	;13
	pb	-13,-7,70	;14
	pb	13,-8,70	;15
	PointsXb	4
	pb	-21,18,-35	;16
	pb	-28,11,-35	;18
	pb	-5,-30,-35	;20
	pb	-25,-4,40	;22
	jump	.EB0
.A31A	Pointsb	5
	pb	-44,34,-59	;11
	pb	44,34,-59	;12
	pb	0,-59,-59	;13
	pb	-14,-6,70	;14
	pb	14,-6,70	;15
	PointsXb	4
	pb	-18,16,-36	;16
	pb	-26,8,-36	;18
	pb	-5,-27,-36	;20
	pb	-24,-6,40	;22
	jump	.EB0
.A32A	Pointsb	5
	pb	-44,34,-58	;11
	pb	44,34,-58	;12
	pb	0,-58,-58	;13
	pb	-14,-5,70	;14
	pb	14,-5,70	;15
	PointsXb	4
	pb	-16,13,-37	;16
	pb	-23,6,-37	;18
	pb	-5,-24,-37	;20
	pb	-23,-8,40	;22
	jump	.EB0
.A33A	Pointsb	5
	pb	-43,33,-56	;11
	pb	43,33,-56	;12
	pb	0,-56,-56	;13
	pb	-14,-4,70	;14
	pb	14,-4,70	;15
	PointsXb	4
	pb	-14,10,-38	;16
	pb	-20,4,-38	;18
	pb	-5,-20,-38	;20
	pb	-23,-10,40	;22
	jump	.EB0
.A34A	Pointsb	5
	pb	-42,32,-53	;11
	pb	42,32,-53	;12
	pb	0,-55,-53	;13
	pb	-15,-3,70	;14
	pb	15,-3,70	;15
	PointsXb	4
	pb	-11,8,-39	;16
	pb	-18,1,-39	;18
	pb	-5,-17,-39	;20
	pb	-23,-11,40	;22
	jump	.EB0
.A35A	Pointsb	5
	pb	-37,27,-60	;11
	pb	37,27,-60	;12
	pb	0,-48,-60	;13
	pb	-15,-2,70	;14
	pb	15,-2,70	;15
	PointsXb	4
	pb	-8,6,-40	;16
	pb	-16,-2,-40	;18
	pb	-5,-14,-40	;20
	pb	-23,-10,40	;22
	jump	.EB0
.A36A	Pointsb	5
	pb	-32,22,-66	;11
	pb	32,22,-66	;12
	pb	0,-41,-66	;13
	pb	-15,0,70	;14
	pb	15,0,70	;15
	PointsXb	4
	pb	-6,4,-40	;16
	pb	-14,-4,-40	;18
	pb	-5,-10,-40	;20
	pb	-23,-8,40	;22
	jump	.EB0
.A37A	Pointsb	5
	pb	-28,18,-70	;11
	pb	28,18,-70	;12
	pb	0,-36,-70	;13
	pb	-15,2,70	;14
	pb	15,2,70	;15
	PointsXb	4
	pb	-6,4,-40	;16
	pb	-14,-4,-40	;18
	pb	-5,-10,-40	;20
	pb	-24,-6,40	;22
	jump	.EB0
.A38A	Pointsb	5
	pb	-24,14,-75	;11
	pb	24,14,-75	;12
	pb	0,-30,-75	;13
	pb	-15,3,70	;14
	pb	15,3,70	;15
	PointsXb	4
	pb	-6,4,-40	;16
	pb	-14,-4,-40	;18
	pb	-5,-10,-40	;20
	pb	-25,-4,40	;22
	jump	.EB0
.A39A	Pointsb	5
	pb	-22,12,-76	;11
	pb	22,12,-76	;12
	pb	0,-27,-76	;13
	pb	-14,4,70	;14
	pb	14,4,70	;15
	PointsXb	4
	pb	-6,4,-40	;16
	pb	-14,-4,-40	;18
	pb	-5,-10,-40	;20
	pb	-25,-2,40	;22
	jump	.EB0
.A40A	Pointsb	5
	pb	-20,10,-77	;11
	pb	20,10,-77	;12
	pb	0,-24,-77	;13
	pb	-14,5,70	;14
	pb	14,5,70	;15
	PointsXb	4
	pb	-6,4,-40	;16
	pb	-14,-4,-40	;18
	pb	-5,-10,-40	;20
	pb	-25,0,40	;22
	jump	.EB0
.A41A	Pointsb	5
	pb	-18,8,-78	;11
	pb	18,8,-78	;12
	pb	0,-20,-78	;13
	pb	-14,6,70	;14
	pb	14,6,70	;15
	PointsXb	4
	pb	-6,4,-40	;16
	pb	-14,-4,-40	;18
	pb	-5,-10,-40	;20
	pb	-25,2,40	;22
	jump	.EB0
.A42A	Pointsb	5
	pb	-15,5,-79	;11
	pb	15,5,-79	;12
	pb	0,-17,-79	;13
	pb	-13,7,70	;14
	pb	13,7,70	;15
	PointsXb	4
	pb	-6,4,-40	;16
	pb	-14,-4,-40	;18
	pb	-5,-10,-40	;20
	pb	-25,4,40	;22
	jump	.EB0
.A43A	Pointsb	5
	pb	-12,2,-80	;11
	pb	12,2,-80	;12
	pb	0,-14,-80	;13
	pb	-14,5,70	;14
	pb	14,5,70	;15
	PointsXb	4
	pb	-6,4,-40	;16
	pb	-14,-4,-40	;18
	pb	-5,-10,-40	;20
	pb	-24,8,40	;22
	jump	.EB0
.A44A	Pointsb	5
	pb	-10,0,-80	;11
	pb	10,0,-80	;12
	pb	0,-10,-80	;13
	pb	-15,3,70	;14
	pb	15,3,70	;15
	PointsXb	4
	pb	-6,4,-40	;16
	pb	-14,-4,-40	;18
	pb	-5,-10,-40	;20
	pb	-23,11,40	;22
	IFNE	SPEED_MODE
	jump	.EB0
.A45A	Pointsb	5
	pb	-10,0,-80	;11
	pb	10,0,-80	;12
	pb	0,-10,-80	;13
	pb	-15,2,70	;14
	pb	15,2,70	;15
	PointsXb	4
	pb	-6,4,-40	;16
	pb	-14,-4,-40	;18
	pb	-5,-10,-40	;20
	pb	-23,10,40	;22
	ENDC
.EB0

	EndPoints


ika_F
	Vizis	33
	Viz	8,10,23,78,-97,-27	;0
	Viz	23,10,8,-78,97,27	;1
	Viz	10,15,23,59,-112,14	;2
	Viz	23,15,10,-59,112,-14	;3
	Viz	4,10,15,0,127,0	;4
	Viz	15,10,4,0,-127,0	;5
	Viz	22,9,7,-78,-97,-27	;6
	Viz	7,9,22,78,97,27	;7
	Viz	22,14,9,-59,-112,14	;8
	Viz	9,14,22,59,112,-14	;9
	Viz	14,9,4,0,127,0	;10
	Viz	4,9,14,0,-127,0	;11
	Viz	17,19,12,-90,-90,0	;12
	Viz	12,19,17,90,90,0	;13
	Viz	6,19,17,-90,-90,0	;14
	Viz	17,19,6,90,90,0	;15
	Viz	11,18,16,90,-90,0	;16
	Viz	16,18,11,-90,90,0	;17
	Viz	16,18,5,90,-90,0	;18
	Viz	5,18,16,-90,90,0	;19
	Viz	13,20,21,0,-127,0	;20
	Viz	21,20,13,0,127,0	;21
	Viz	21,20,1,0,-127,0	;22
	Viz	1,20,21,0,127,0	;23
	Viz	1,5,0,0,0,-127	;24
	Viz	8,2,4,-88,-88,22	;25
	Viz	2,8,6,-85,-85,-42	;26
	Viz	4,2,7,88,-88,22	;27
	Viz	0,5,7,85,-85,-42	;28
	Viz	4,3,8,-88,88,22	;29
	Viz	1,6,8,-85,85,-42	;30
	Viz	7,3,4,88,88,22	;31
	Viz	3,7,5,85,85,-42	;32
	BSPInit	ika_EBSP
	BSP	0,ika_f1,.bsp2
	BSPEND
.bsp2	BSP	1,ika_f3,.bsp4
	BSP	6,ika_f5,.bsp6
	BSPEND
.bsp6	BSP	7,ika_f7,.bsp8
	BSP	24,ika_f9,.bsp10
	BSPE	ika_f11
.bsp10	BSPE	ika_f12
.bsp8	BSP	10,ika_f13,.bsp14
	BSPEND
.bsp14	BSP	11,ika_f15,.bsp16
	BSPE	ika_f17
.bsp16	BSPE	ika_f18
.bsp4	BSP	4,ika_f19,.bsp20
	BSPEND
.bsp20	BSP	5,ika_f21,.bsp22
	BSPE	ika_f23
.bsp22	BSPE	ika_f24

ika_f1	Faces
	Face3	44,0,78,-97,-27,8,10,23
	FendQ
ika_f3	Faces
	Face3	18,1,-78,97,27,23,10,8
	FendQ
ika_f5	Faces
	Face3	44,6,-78,-97,-27,22,9,7
	FendQ
ika_f7	Faces
	Face3	16,7,78,97,27,7,9,22
	FendQ
ika_f9	Faces
	Face4	45,24,0,0,-127,1,5,0,6
	FendQ
ika_f11	Faces
	Face3	16,25,-88,-88,22,8,2,4
	Face4	14,26,-85,-85,-42,2,8,6,0
	Face3	14,27,88,-88,22,4,2,7
	Face4	12,28,85,-85,-42,0,5,7,2
	FendQ
ika_f12	Faces
	Face3	44,13,90,90,0,12,19,17
	Face3	44,15,90,90,0,17,19,6
	Face3	44,17,-90,90,0,16,18,11
	Face3	44,19,-90,90,0,5,18,16
	Face3	44,20,0,-127,0,13,20,21
	Face3	44,22,0,-127,0,21,20,1
	Face3	14,12,-90,-90,0,17,19,12
	Face3	14,14,-90,-90,0,6,19,17
	Face3	12,16,90,-90,0,11,18,16
	Face3	12,18,90,-90,0,16,18,5
	Face3	18,21,0,127,0,21,20,13
	Face3	18,23,0,127,0,1,20,21
	FendQ
ika_f13	Faces
	Face3	16,10,0,127,0,14,9,4
	FendQ
ika_f15	Faces
	Face3	44,11,0,-127,0,4,9,14
	FendQ
ika_f17	Faces
	Face3	16,31,88,88,22,7,3,4
	Face4	14,32,85,85,-42,3,7,5,1
	FendQ
ika_f18	Faces
	Face3	44,8,-59,-112,14,22,14,9
	Face3	16,9,59,112,-14,9,14,22
	FendQ
ika_f19	Faces
	Face3	18,4,0,127,0,4,10,15
	FendQ
ika_f21	Faces
	Face3	44,5,0,-127,0,15,10,4
	FendQ
ika_f23	Faces
	Face3	20,29,-88,88,22,4,3,8
	Face4	18,30,-85,85,-42,1,6,8,3
	FendQ
ika_f24	Faces
	Face3	44,2,59,-112,14,10,15,23
	Face3	18,3,-59,112,-14,23,15,10
	FendQ
ika_EBSP
	EndShape

	endc

;--Shape file ----- C:\SHED\SHAPES6\WHALE.ANM ----
	ifne	DO_HDR

whale
	ShapeHdr	whale_P,0,whale_F,0,0,0,0,3,0,20,20,50,97,id_0_c,0,0,0,0,<whale>
	elseif
whale_P
	PointsXb	1
	pb	-25,10,15	;0
	IFEQ	SPEED_MODE
	Frames	12
	jumptab	.A0A
	jumptab	.A2A
	jumptab	.A4A
	jumptab	.A6A
	jumptab	.A8A
	jumptab	.A10A
	jumptab	.A12A
	jumptab	.A14A
	jumptab	.A16A
	jumptab	.A18A
	jumptab	.A20A
	jumptab	.A22A
	ELSEIF
	Frames	23
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
	jumptab	.A14A
	jumptab	.A15A
	jumptab	.A16A
	jumptab	.A17A
	jumptab	.A18A
	jumptab	.A19A
	jumptab	.A20A
	jumptab	.A21A
	jumptab	.A22A
	ENDC
.A0A	Pointsb	5
	pb	0,16,-82	;2
	pb	0,5,-72	;3
	pb	0,20,-20	;4
	pb	0,-11,39	;5
	pb	0,13,60	;6
	PointsXb	7
	pb	-20,20,-85	;7
	pb	-40,28,-16	;9
	pb	-25,9,0	;11
	pb	-5,-15,0	;13
	pb	-5,30,21	;15
	pb	20,-1,39	;17
	pb	-5,-3,69	;19
	jump	.EB0
.A1A	Pointsb	5
	pb	0,11,-83	;2
	pb	0,2,-72	;3
	pb	0,20,-20	;4
	pb	0,-10,40	;5
	pb	0,14,60	;6
	PointsXb	7
	pb	-20,14,-86	;7
	pb	-40,28,-16	;9
	pb	-25,8,0	;11
	pb	-5,-15,0	;13
	pb	-5,30,20	;15
	pb	20,0,40	;17
	pb	-5,-2,70	;19
	jump	.EB0
.A2A	Pointsb	5
	pb	0,6,-84	;2
	pb	0,-2,-71	;3
	pb	0,19,-20	;4
	pb	0,-10,40	;5
	pb	0,15,60	;6
	PointsXb	7
	pb	-20,9,-88	;7
	pb	-40,27,-17	;9
	pb	-25,8,0	;11
	pb	-5,-15,1	;13
	pb	-5,30,20	;15
	pb	20,0,40	;17
	pb	-5,0,70	;19
	jump	.EB0
.A3A	Pointsb	5
	pb	0,2,-82	;2
	pb	0,-6,-70	;3
	pb	0,18,-20	;4
	pb	0,-10,40	;5
	pb	0,16,60	;6
	PointsXb	7
	pb	-20,6,-86	;7
	pb	-40,26,-17	;9
	pb	-25,8,0	;11
	pb	-5,-16,2	;13
	pb	-5,30,20	;15
	pb	20,0,40	;17
	pb	-5,2,70	;19
	jump	.EB0
.A4A	Pointsb	5
	pb	0,-1,-81	;2
	pb	0,-10,-70	;3
	pb	0,18,-20	;4
	pb	0,-9,41	;5
	pb	0,17,60	;6
	PointsXb	7
	pb	-20,3,-85	;7
	pb	-40,25,-17	;9
	pb	-25,8,0	;11
	pb	-5,-16,2	;13
	pb	-5,30,19	;15
	pb	20,1,40	;17
	pb	-5,3,70	;19
	jump	.EB0
.A5A	Pointsb	5
	pb	0,-4,-82	;2
	pb	0,-12,-70	;3
	pb	0,18,-20	;4
	pb	0,-8,42	;5
	pb	0,18,60	;6
	PointsXb	7
	pb	-20,0,-86	;7
	pb	-40,26,-17	;9
	pb	-25,8,0	;11
	pb	-5,-16,2	;13
	pb	-5,30,18	;15
	pb	20,2,40	;17
	pb	-5,4,70	;19
	jump	.EB0
.A6A	Pointsb	5
	pb	0,-6,-82	;2
	pb	0,-14,-69	;3
	pb	0,17,-21	;4
	pb	0,-7,42	;5
	pb	0,20,59	;6
	PointsXb	7
	pb	-20,-3,-86	;7
	pb	-40,27,-17	;9
	pb	-25,8,0	;11
	pb	-5,-16,3	;13
	pb	-5,30,18	;15
	pb	20,3,41	;17
	pb	-5,6,71	;19
	jump	.EB0
.A7A	Pointsb	5
	pb	0,-8,-84	;2
	pb	0,-12,-70	;3
	pb	0,18,-20	;4
	pb	0,-6,42	;5
	pb	0,20,59	;6
	PointsXb	7
	pb	-20,-6,-88	;7
	pb	-40,28,-16	;9
	pb	-25,8,0	;11
	pb	-5,-16,2	;13
	pb	-5,30,18	;15
	pb	20,4,41	;17
	pb	-5,7,71	;19
	jump	.EB0
.A8A	Pointsb	5
	pb	0,-10,-85	;2
	pb	0,-10,-70	;3
	pb	0,18,-20	;4
	pb	0,-6,42	;5
	pb	0,21,59	;6
	PointsXb	7
	pb	-20,-10,-90	;7
	pb	-40,28,-16	;9
	pb	-25,9,0	;11
	pb	-5,-16,2	;13
	pb	-5,30,17	;15
	pb	20,4,41	;17
	pb	-5,8,71	;19
	jump	.EB0
.A9A	Pointsb	5
	pb	0,-11,-84	;2
	pb	0,-6,-70	;3
	pb	0,18,-20	;4
	pb	0,-6,42	;5
	pb	0,20,59	;6
	PointsXb	7
	pb	-20,-12,-88	;7
	pb	-40,29,-16	;9
	pb	-25,10,0	;11
	pb	-5,-16,2	;13
	pb	-5,30,18	;15
	pb	20,4,41	;17
	pb	-5,7,71	;19
	jump	.EB0
.A10A	Pointsb	5
	pb	0,-12,-82	;2
	pb	0,-2,-71	;3
	pb	0,19,-20	;4
	pb	0,-7,42	;5
	pb	0,20,59	;6
	PointsXb	7
	pb	-20,-14,-87	;7
	pb	-40,30,-15	;9
	pb	-25,10,0	;11
	pb	-5,-15,1	;13
	pb	-5,30,18	;15
	pb	20,3,41	;17
	pb	-5,6,71	;19
	jump	.EB0
.A11A	Pointsb	5
	pb	0,-8,-82	;2
	pb	0,2,-72	;3
	pb	0,20,-20	;4
	pb	0,-8,42	;5
	pb	0,18,60	;6
	PointsXb	7
	pb	-20,-11,-87	;7
	pb	-40,30,-14	;9
	pb	-25,10,0	;11
	pb	-5,-15,0	;13
	pb	-5,30,18	;15
	pb	20,2,40	;17
	pb	-5,4,70	;19
	jump	.EB0
.A12A	Pointsb	5
	pb	0,-5,-83	;2
	pb	0,5,-72	;3
	pb	0,20,-20	;4
	pb	0,-9,41	;5
	pb	0,17,60	;6
	PointsXb	7
	pb	-20,-8,-87	;7
	pb	-40,31,-14	;9
	pb	-25,11,0	;11
	pb	-5,-15,0	;13
	pb	-5,30,19	;15
	pb	20,1,40	;17
	pb	-5,3,70	;19
	jump	.EB0
.A13A	Pointsb	5
	pb	0,-1,-84	;2
	pb	0,8,-72	;3
	pb	0,22,-20	;4
	pb	0,-10,40	;5
	pb	0,16,60	;6
	PointsXb	7
	pb	-20,-4,-88	;7
	pb	-40,32,-14	;9
	pb	-25,12,0	;11
	pb	-5,-14,0	;13
	pb	-5,30,20	;15
	pb	20,0,40	;17
	pb	-5,2,70	;19
	jump	.EB0
.A14A	Pointsb	5
	pb	0,3,-85	;2
	pb	0,12,-72	;3
	pb	0,23,-19	;4
	pb	0,-10,40	;5
	pb	0,15,60	;6
	PointsXb	7
	pb	-20,0,-89	;7
	pb	-40,33,-13	;9
	pb	-25,12,0	;11
	pb	-5,-14,-1	;13
	pb	-5,30,20	;15
	pb	20,0,40	;17
	pb	-5,0,70	;19
	jump	.EB0
.A15A	Pointsb	5
	pb	0,8,-85	;2
	pb	0,16,-72	;3
	pb	0,24,-18	;4
	pb	0,-10,40	;5
	pb	0,14,60	;6
	PointsXb	7
	pb	-20,4,-88	;7
	pb	-40,34,-12	;9
	pb	-25,12,0	;11
	pb	-5,-14,-1	;13
	pb	-5,30,20	;15
	pb	20,0,40	;17
	pb	-5,-1,70	;19
	jump	.EB0
.A16A	Pointsb	5
	pb	0,13,-85	;2
	pb	0,20,-72	;3
	pb	0,25,-18	;4
	pb	0,-11,39	;5
	pb	0,13,60	;6
	PointsXb	7
	pb	-20,9,-88	;7
	pb	-40,35,-11	;9
	pb	-25,13,0	;11
	pb	-5,-14,-2	;13
	pb	-5,30,21	;15
	pb	20,-1,39	;17
	pb	-5,-3,69	;19
	jump	.EB0
.A17A	Pointsb	5
	pb	0,15,-84	;2
	pb	0,22,-72	;3
	pb	0,27,-17	;4
	pb	0,-12,38	;5
	pb	0,12,60	;6
	PointsXb	7
	pb	-20,12,-88	;7
	pb	-40,34,-12	;9
	pb	-25,12,0	;11
	pb	-5,-14,-2	;13
	pb	-5,30,22	;15
	pb	20,-2,39	;17
	pb	-5,-4,69	;19
	jump	.EB0
.A18A	Pointsb	5
	pb	0,17,-84	;2
	pb	0,25,-71	;3
	pb	0,29,-16	;4
	pb	0,-12,38	;5
	pb	0,10,60	;6
	PointsXb	7
	pb	-20,15,-89	;7
	pb	-40,33,-13	;9
	pb	-25,12,0	;11
	pb	-5,-13,-2	;13
	pb	-5,29,22	;15
	pb	20,-2,39	;17
	pb	-5,-6,69	;19
	jump	.EB0
.A19A	Pointsb	5
	pb	0,21,-85	;2
	pb	0,22,-72	;3
	pb	0,27,-17	;4
	pb	0,-12,38	;5
	pb	0,10,60	;6
	PointsXb	7
	pb	-20,20,-90	;7
	pb	-40,32,-14	;9
	pb	-25,12,0	;11
	pb	-5,-14,-1	;13
	pb	-5,29,22	;15
	pb	20,-2,38	;17
	pb	-5,-6,68	;19
	jump	.EB0
.A20A	Pointsb	5
	pb	0,25,-86	;2
	pb	0,20,-72	;3
	pb	0,25,-18	;4
	pb	0,-13,37	;5
	pb	0,9,60	;6
	PointsXb	7
	pb	-20,26,-91	;7
	pb	-40,31,-14	;9
	pb	-25,11,0	;11
	pb	-5,-15,0	;13
	pb	-5,29,23	;15
	pb	20,-3,38	;17
	pb	-5,-7,68	;19
	jump	.EB0
.A21A	Pointsb	5
	pb	0,23,-86	;2
	pb	0,16,-72	;3
	pb	0,24,-18	;4
	pb	0,-12,38	;5
	pb	0,10,60	;6
	PointsXb	7
	pb	-20,24,-90	;7
	pb	-40,30,-14	;9
	pb	-25,10,0	;11
	pb	-5,-15,0	;13
	pb	-5,29,22	;15
	pb	20,-2,38	;17
	pb	-5,-6,68	;19
	jump	.EB0
.A22A	Pointsb	5
	pb	0,21,-85	;2
	pb	0,12,-72	;3
	pb	0,23,-19	;4
	pb	0,-12,38	;5
	pb	0,10,60	;6
	PointsXb	7
	pb	-20,23,-89	;7
	pb	-40,30,-15	;9
	pb	-25,10,0	;11
	pb	-5,-15,0	;13
	pb	-5,29,22	;15
	pb	20,-2,39	;17
	pb	-5,-6,69	;19
.EB0

	EndPoints


whale_F
	Vizis	32
	Viz	12,10,1,-102,76,5	;0
	Viz	1,10,12,102,-76,-5	;1
	Viz	0,9,11,102,76,5	;2
	Viz	11,9,0,-102,-76,-5	;3
	Viz	2,8,3,-3,85,-94	;4
	Viz	3,8,2,3,-85,94	;5
	Viz	3,7,2,3,85,-94	;6
	Viz	2,7,3,-3,-85,94	;7
	Viz	1,3,4,-78,-97,-28	;8
	Viz	4,3,0,78,-97,-28	;9
	Viz	15,16,4,0,-123,-30	;10
	Viz	16,1,4,-82,-92,-32	;11
	Viz	4,0,15,82,-92,-32	;12
	Viz	3,1,14,-104,68,-26	;13
	Viz	13,0,3,104,68,-26	;14
	Viz	3,14,13,0,122,-34	;15
	Viz	5,13,14,0,126,13	;16
	Viz	6,16,15,0,-116,51	;17
	Viz	6,19,20,0,-62,111	;18
	Viz	20,19,5,0,123,33	;19
	Viz	1,16,17,-89,-74,52	;20
	Viz	1,17,14,-102,74,-13	;21
	Viz	6,17,16,-96,-71,43	;22
	Viz	17,6,20,-98,-61,53	;23
	Viz	17,5,14,-56,112,19	;24
	Viz	20,5,17,-56,112,21	;25
	Viz	18,15,0,89,-74,52	;26
	Viz	13,18,0,102,74,-13	;27
	Viz	15,18,6,96,-71,43	;28
	Viz	19,6,18,98,-61,53	;29
	Viz	13,5,18,56,112,19	;30
	Viz	18,5,19,56,112,21	;31
	BSPInit	whale_EBSP
	BSP	8,whale_f1,.bsp2
	BSPE	whale_f3
.bsp2	BSPE	whale_f4

whale_f1	Faces
	Face3	14,8,-78,-97,-28,1,3,4
	FendQ
whale_f3	Faces
	Face3	12,3,-102,-76,-5,11,9,0
	Face3	18,9,78,-97,-28,4,3,0
	Face3	20,12,82,-92,-32,4,0,15
	Face3	12,14,104,68,-26,13,0,3
	Face3	20,28,96,-71,43,15,18,6
	Face3	18,26,89,-74,52,18,15,0
	Face3	20,29,98,-61,53,19,6,18
	Face3	12,27,102,74,-13,13,18,0
	Face3	12,2,102,76,5,0,9,11
	Face3	12,13,-104,68,-26,3,1,14
	Face3	14,15,0,122,-34,3,14,13
	Face3	14,16,0,126,13,5,13,14
	Face3	18,17,0,-116,51,6,16,15
	Face3	18,18,0,-62,111,6,19,20
	Face3	14,19,0,123,33,20,19,5
	Face3	14,20,-89,-74,52,1,16,17
	Face3	12,21,-102,74,-13,1,17,14
	Face3	16,22,-96,-71,43,6,17,16
	Face3	16,23,-98,-61,53,17,6,20
	Face3	12,24,-56,112,19,17,5,14
	Face3	12,25,-56,112,21,20,5,17
	Face3	12,30,56,112,19,13,5,18
	Face3	12,31,56,112,21,18,5,19
	FendQ
whale_f4	Faces
	Face3	12,1,102,-76,-5,1,10,12
	Face3	14,5,3,-85,94,3,8,2
	Face3	14,7,-3,-85,94,2,7,3
	Face3	16,11,-82,-92,-32,16,1,4
	Face3	18,10,0,-123,-30,15,16,4
	Face3	12,0,-102,76,5,12,10,1
	Face3	12,4,-3,85,-94,2,8,3
	Face3	12,6,3,85,-94,3,7,2
	FendQ
whale_EBSP
	EndShape

	endc

;--Shape file ----- C:\SHED\SHAPES6\PAPER_3.ANM ----
	ifne	DO_HDR

paper_3
	ShapeHdr	paper_3_P,0,paper_3_F,0,0,0,0,2,0,40,56,40,57,finalboss_c,0,0,0,0,<paper_3>
	elseif
paper_3_P
	Pointsb	1
	pb	0,0,0	;0
	IFEQ	SPEED_MODE
	Frames	20
	jumptab	.A0A
	jumptab	.A0A
	jumptab	.A5A
	jumptab	.A5A
	jumptab	.A10A
	jumptab	.A10A
	jumptab	.A14A
	jumptab	.A14A
	jumptab	.A19A
	jumptab	.A19A
	jumptab	.A24A
	jumptab	.A24A
	jumptab	.A29A
	jumptab	.A29A
	jumptab	.A33A
	jumptab	.A33A
	jumptab	.A38A
	jumptab	.A38A
	jumptab	.A38A
	jumptab	.A38A
	ELSEIF
	Frames	39
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
	jumptab	.A14A
	jumptab	.A15A
	jumptab	.A16A
	jumptab	.A17A
	jumptab	.A18A
	jumptab	.A19A
	jumptab	.A20A
	jumptab	.A21A
	jumptab	.A22A
	jumptab	.A23A
	jumptab	.A24A
	jumptab	.A25A
	jumptab	.A26A
	jumptab	.A27A
	jumptab	.A28A
	jumptab	.A29A
	jumptab	.A30A
	jumptab	.A31A
	jumptab	.A32A
	jumptab	.A33A
	jumptab	.A34A
	jumptab	.A35A
	jumptab	.A36A
	jumptab	.A37A
	jumptab	.A38A
	ENDC
.A0A	Pointsb	6
	pb	0,0,-40	;1
	pb	40,0,0	;2
	pb	-40,0,0	;3
	pb	40,0,40	;4
	pb	-40,0,40	;5
	pb	0,0,40	;6
	PointsXb	1
	pb	40,0,-40	;7
	jump	.EB0
.A1A	Pointsb	6
	pb	0,-1,-40	;1
	pb	40,-1,0	;2
	pb	-40,-1,0	;3
	pb	40,-2,40	;4
	pb	-40,-2,40	;5
	pb	0,-1,40	;6
	PointsXb	1
	pb	40,-2,-40	;7
	jump	.EB0
.A2A	Pointsb	6
	pb	0,-1,-40	;1
	pb	40,-1,0	;2
	pb	-40,-1,0	;3
	pb	40,-4,40	;4
	pb	-40,-4,40	;5
	pb	0,-1,40	;6
	PointsXb	1
	pb	40,-4,-40	;7
	jump	.EB0
.A3A	Pointsb	6
	pb	0,-2,-40	;1
	pb	40,-2,0	;2
	pb	-40,-2,0	;3
	pb	40,-6,40	;4
	pb	-40,-6,40	;5
	pb	0,-2,40	;6
	PointsXb	1
	pb	40,-6,-40	;7
	jump	.EB0
.A4A	Pointsb	6
	pb	0,-3,-40	;1
	pb	40,-3,0	;2
	pb	-40,-3,0	;3
	pb	40,-8,40	;4
	pb	-40,-8,40	;5
	pb	0,-3,40	;6
	PointsXb	1
	pb	40,-8,-40	;7
	jump	.EB0
.A5A	Pointsb	6
	pb	0,-3,-40	;1
	pb	40,-3,0	;2
	pb	-40,-3,0	;3
	pb	40,-10,40	;4
	pb	-40,-10,40	;5
	pb	0,-3,40	;6
	PointsXb	1
	pb	40,-10,-40	;7
	jump	.EB0
.A6A	Pointsb	6
	pb	0,-4,-40	;1
	pb	40,-4,0	;2
	pb	-40,-4,0	;3
	pb	39,-12,39	;4
	pb	-39,-12,39	;5
	pb	0,-4,40	;6
	PointsXb	1
	pb	39,-12,-39	;7
	jump	.EB0
.A7A	Pointsb	6
	pb	0,-5,-40	;1
	pb	40,-5,0	;2
	pb	-40,-5,0	;3
	pb	39,-14,39	;4
	pb	-39,-14,39	;5
	pb	0,-5,40	;6
	PointsXb	1
	pb	39,-14,-39	;7
	jump	.EB0
.A8A	Pointsb	6
	pb	0,-6,-39	;1
	pb	39,-6,0	;2
	pb	-39,-6,0	;3
	pb	38,-16,38	;4
	pb	-38,-16,38	;5
	pb	0,-6,39	;6
	PointsXb	1
	pb	38,-16,-38	;7
	jump	.EB0
.A9A	Pointsb	6
	pb	0,-7,-39	;1
	pb	39,-7,0	;2
	pb	-39,-7,0	;3
	pb	37,-18,37	;4
	pb	-37,-18,37	;5
	pb	0,-7,39	;6
	PointsXb	1
	pb	37,-18,-37	;7
	jump	.EB0
.A10A	Pointsb	6
	pb	0,-7,-39	;1
	pb	39,-7,0	;2
	pb	-39,-7,0	;3
	pb	37,-20,37	;4
	pb	-37,-20,37	;5
	pb	0,-7,39	;6
	PointsXb	1
	pb	37,-20,-37	;7
	jump	.EB0
.A11A	Pointsb	6
	pb	0,-8,-39	;1
	pb	39,-8,0	;2
	pb	-39,-8,0	;3
	pb	36,-22,36	;4
	pb	-36,-22,36	;5
	pb	0,-8,39	;6
	PointsXb	1
	pb	36,-22,-36	;7
	jump	.EB0
.A12A	Pointsb	6
	pb	0,-9,-39	;1
	pb	39,-9,0	;2
	pb	-39,-9,0	;3
	pb	36,-24,36	;4
	pb	-36,-24,36	;5
	pb	0,-9,39	;6
	PointsXb	1
	pb	36,-24,-36	;7
	jump	.EB0
.A13A	Pointsb	6
	pb	0,-9,-39	;1
	pb	39,-9,0	;2
	pb	-39,-9,0	;3
	pb	36,-26,36	;4
	pb	-36,-26,36	;5
	pb	0,-9,39	;6
	PointsXb	1
	pb	36,-26,-36	;7
	jump	.EB0
.A14A	Pointsb	6
	pb	0,-10,-39	;1
	pb	39,-10,0	;2
	pb	-39,-10,0	;3
	pb	35,-28,35	;4
	pb	-35,-28,35	;5
	pb	0,-10,39	;6
	PointsXb	1
	pb	35,-28,-35	;7
	jump	.EB0
.A15A	Pointsb	6
	pb	0,-11,-39	;1
	pb	39,-11,0	;2
	pb	-39,-11,0	;3
	pb	34,-29,34	;4
	pb	-34,-30,34	;5
	pb	0,-11,39	;6
	PointsXb	1
	pb	34,-29,-34	;7
	jump	.EB0
.A16A	Pointsb	6
	pb	0,-11,-39	;1
	pb	38,-11,0	;2
	pb	-39,-11,0	;3
	pb	34,-31,34	;4
	pb	-34,-32,34	;5
	pb	0,-11,38	;6
	PointsXb	1
	pb	34,-31,-34	;7
	jump	.EB0
.A17A	Pointsb	6
	pb	0,-12,-38	;1
	pb	38,-12,0	;2
	pb	-38,-12,0	;3
	pb	33,-33,33	;4
	pb	-33,-34,33	;5
	pb	0,-12,38	;6
	PointsXb	1
	pb	33,-33,-33	;7
	jump	.EB0
.A18A	Pointsb	6
	pb	0,-13,-38	;1
	pb	37,-13,0	;2
	pb	-38,-13,0	;3
	pb	32,-35,32	;4
	pb	-32,-35,32	;5
	pb	0,-13,37	;6
	PointsXb	1
	pb	32,-35,-32	;7
	jump	.EB0
.A19A	Pointsb	6
	pb	0,-14,-38	;1
	pb	37,-14,0	;2
	pb	-38,-14,0	;3
	pb	31,-37,31	;4
	pb	-31,-37,31	;5
	pb	0,-14,37	;6
	PointsXb	1
	pb	31,-37,-31	;7
	jump	.EB0
.A20A	Pointsb	6
	pb	0,-15,-38	;1
	pb	37,-15,0	;2
	pb	-38,-15,0	;3
	pb	30,-38,30	;4
	pb	-30,-38,30	;5
	pb	0,-15,37	;6
	PointsXb	1
	pb	30,-38,-30	;7
	jump	.EB0
.A21A	Pointsb	6
	pb	0,-15,-37	;1
	pb	37,-15,0	;2
	pb	-37,-15,0	;3
	pb	29,-40,29	;4
	pb	-29,-40,29	;5
	pb	0,-15,37	;6
	PointsXb	1
	pb	29,-40,-29	;7
	jump	.EB0
.A22A	Pointsb	6
	pb	0,-16,-37	;1
	pb	36,-16,0	;2
	pb	-37,-16,0	;3
	pb	28,-41,28	;4
	pb	-28,-41,28	;5
	pb	0,-16,36	;6
	PointsXb	1
	pb	28,-41,-28	;7
	jump	.EB0
.A23A	Pointsb	6
	pb	0,-17,-36	;1
	pb	36,-17,0	;2
	pb	-36,-17,0	;3
	pb	27,-43,27	;4
	pb	-27,-43,27	;5
	pb	0,-17,36	;6
	PointsXb	1
	pb	27,-43,-27	;7
	jump	.EB0
.A24A	Pointsb	6
	pb	0,-17,-36	;1
	pb	36,-17,0	;2
	pb	-36,-17,0	;3
	pb	26,-44,26	;4
	pb	-26,-44,26	;5
	pb	0,-17,36	;6
	PointsXb	1
	pb	26,-44,-26	;7
	jump	.EB0
.A25A	Pointsb	6
	pb	0,-18,-36	;1
	pb	36,-18,0	;2
	pb	-36,-18,0	;3
	pb	24,-45,24	;4
	pb	-24,-45,24	;5
	pb	0,-18,36	;6
	PointsXb	1
	pb	25,-45,-25	;7
	jump	.EB0
.A26A	Pointsb	6
	pb	0,-18,-36	;1
	pb	36,-18,0	;2
	pb	-36,-18,0	;3
	pb	23,-46,23	;4
	pb	-23,-46,23	;5
	pb	0,-18,36	;6
	PointsXb	1
	pb	24,-46,-24	;7
	jump	.EB0
.A27A	Pointsb	6
	pb	0,-19,-35	;1
	pb	35,-19,0	;2
	pb	-35,-19,0	;3
	pb	22,-47,22	;4
	pb	-22,-47,22	;5
	pb	0,-19,35	;6
	PointsXb	1
	pb	23,-47,-23	;7
	jump	.EB0
.A28A	Pointsb	6
	pb	0,-20,-35	;1
	pb	35,-20,0	;2
	pb	-35,-20,0	;3
	pb	21,-48,21	;4
	pb	-21,-48,21	;5
	pb	0,-20,35	;6
	PointsXb	1
	pb	22,-48,-22	;7
	jump	.EB0
.A29A	Pointsb	6
	pb	0,-20,-35	;1
	pb	35,-20,0	;2
	pb	-35,-20,0	;3
	pb	19,-49,19	;4
	pb	-19,-49,19	;5
	pb	0,-20,35	;6
	PointsXb	1
	pb	20,-49,-20	;7
	jump	.EB0
.A30A	Pointsb	6
	pb	0,-21,-34	;1
	pb	34,-21,0	;2
	pb	-34,-21,0	;3
	pb	18,-50,18	;4
	pb	-18,-50,18	;5
	pb	0,-21,34	;6
	PointsXb	1
	pb	18,-50,-18	;7
	jump	.EB0
.A31A	Pointsb	6
	pb	0,-22,-34	;1
	pb	34,-22,0	;2
	pb	-34,-22,0	;3
	pb	16,-51,16	;4
	pb	-16,-51,16	;5
	pb	0,-22,34	;6
	PointsXb	1
	pb	17,-51,-17	;7
	jump	.EB0
.A32A	Pointsb	6
	pb	0,-22,-34	;1
	pb	34,-22,0	;2
	pb	-34,-22,0	;3
	pb	15,-52,15	;4
	pb	-15,-52,15	;5
	pb	0,-22,34	;6
	PointsXb	1
	pb	15,-52,-15	;7
	jump	.EB0
.A33A	Pointsb	6
	pb	0,-23,-33	;1
	pb	33,-23,0	;2
	pb	-33,-23,0	;3
	pb	13,-53,13	;4
	pb	-13,-53,13	;5
	pb	0,-23,33	;6
	PointsXb	1
	pb	13,-53,-13	;7
	jump	.EB0
.A34A	Pointsb	6
	pb	0,-23,-33	;1
	pb	33,-23,0	;2
	pb	-33,-23,0	;3
	pb	12,-53,12	;4
	pb	-12,-53,12	;5
	pb	0,-23,33	;6
	PointsXb	1
	pb	12,-53,-12	;7
	jump	.EB0
.A35A	Pointsb	6
	pb	0,-24,-32	;1
	pb	32,-24,0	;2
	pb	-32,-24,0	;3
	pb	11,-54,11	;4
	pb	-11,-54,11	;5
	pb	0,-24,32	;6
	PointsXb	1
	pb	11,-54,-11	;7
	jump	.EB0
.A36A	Pointsb	6
	pb	0,-25,-32	;1
	pb	32,-25,0	;2
	pb	-32,-25,0	;3
	pb	10,-55,10	;4
	pb	-10,-55,10	;5
	pb	0,-25,32	;6
	PointsXb	1
	pb	10,-55,-10	;7
	jump	.EB0
.A37A	Pointsb	6
	pb	0,-25,-31	;1
	pb	31,-25,0	;2
	pb	-31,-25,0	;3
	pb	8,-55,8	;4
	pb	-8,-55,8	;5
	pb	0,-25,31	;6
	PointsXb	1
	pb	8,-55,-8	;7
	jump	.EB0
.A38A	Pointsb	6
	pb	0,-26,-31	;1
	pb	31,-26,0	;2
	pb	-31,-26,0	;3
	pb	7,-56,7	;4
	pb	-7,-56,7	;5
	pb	0,-26,31	;6
	PointsXb	1
	pb	7,-56,-7	;7
.EB0

	EndPoints


paper_3_F
	Vizis	16
	Viz	5,0,3,15,-17,125	;0
	Viz	3,0,5,-15,17,-125	;1
	Viz	6,0,5,125,-17,15	;2
	Viz	5,0,6,-125,17,-15	;3
	Viz	2,0,4,-15,-17,125	;4
	Viz	4,0,2,15,17,-125	;5
	Viz	4,0,6,-125,-17,15	;6
	Viz	6,0,4,125,17,-15	;7
	Viz	3,0,8,15,-17,-125	;8
	Viz	8,0,3,-15,17,125	;9
	Viz	8,0,1,125,-17,-15	;10
	Viz	1,0,8,-125,17,15	;11
	Viz	7,0,2,-15,-17,-125	;12
	Viz	2,0,7,15,17,125	;13
	Viz	1,0,7,-125,-17,-15	;14
	Viz	7,0,1,125,17,15	;15
	BSPInit	paper_3_EBSP
	BSP	0,paper_3_f1,.bsp2
	BSP	8,paper_3_f3,.bsp4
	BSPE	paper_3_f5
.bsp4	BSP	10,paper_3_f6,.bsp7
	BSPE	paper_3_f8
.bsp7	BSPE	paper_3_f9
.bsp2	BSP	2,paper_3_f10,.bsp11
	BSPE	paper_3_f12
.bsp11	BSPE	paper_3_f13

paper_3_f1	Faces
	Face3	2,0,15,-17,125,5,0,3
	FendQ
paper_3_f3	Faces
	Face3	3,8,15,-17,-125,3,0,8
	FendQ
paper_3_f5	Faces
	Face3	3,5,15,17,-125,4,0,2
	Face3	1,13,15,17,125,2,0,7
	Face3	0,4,-15,-17,125,2,0,4
	Face3	3,12,-15,-17,-125,7,0,2
	FendQ
paper_3_f6	Faces
	Face3	4,10,125,-17,-15,8,0,1
	FendQ
paper_3_f8	Faces
	Face3	2,14,-125,-17,-15,1,0,7
	Face3	2,15,125,17,15,7,0,1
	FendQ
paper_3_f9	Faces
	Face3	0,9,-15,17,125,8,0,3
	Face3	1,11,-125,17,15,1,0,8
	FendQ
paper_3_f10	Faces
	Face3	3,2,125,-17,15,6,0,5
	FendQ
paper_3_f12	Faces
	Face3	1,6,-125,-17,15,4,0,6
	Face3	4,7,125,17,-15,6,0,4
	FendQ
paper_3_f13	Faces
	Face3	3,1,-15,17,-125,3,0,5
	Face3	0,3,-125,17,-15,5,0,6
	FendQ
paper_3_EBSP
	EndShape

	endc

;--Shape file ----- C:\SHED\SHAPES6\PAPER_1.ANM ----
	ifne	DO_HDR

paper_1
	ShapeHdr	paper_1_P,0,paper_1_F,0,0,0,0,1,0,40,39,40,57,finalboss_c,0,0,0,0,<paper_1>
	elseif
paper_1_P
	Pointsb	2
	pb	0,0,-40	;0
	pb	0,0,40	;1
	IFEQ	SPEED_MODE
	Frames	32
	jumptab	.A0A
	jumptab	.A3A
	jumptab	.A7A
	jumptab	.A10A
	jumptab	.A13A
	jumptab	.A16A
	jumptab	.A20A
	jumptab	.A23A
	jumptab	.A26A
	jumptab	.A29A
	jumptab	.A33A
	jumptab	.A36A
	jumptab	.A39A
	jumptab	.A42A
	jumptab	.A46A
	jumptab	.A49A
	jumptab	.A52A
	jumptab	.A55A
	jumptab	.A59A
	jumptab	.A62A
	ELSEIF
	Frames	39
	jumptab	.A0A
	jumptab	.A2A
	jumptab	.A3A
	jumptab	.A5A
	jumptab	.A7A
	jumptab	.A8A
	jumptab	.A10A
	jumptab	.A11A
	jumptab	.A13A
	jumptab	.A15A
	jumptab	.A16A
	jumptab	.A18A
	jumptab	.A20A
	jumptab	.A21A
	jumptab	.A23A
	jumptab	.A24A
	jumptab	.A26A
	jumptab	.A28A
	jumptab	.A29A
	jumptab	.A31A
	jumptab	.A33A
	jumptab	.A34A
	jumptab	.A36A
	jumptab	.A38A
	jumptab	.A39A
	jumptab	.A41A
	jumptab	.A42A
	jumptab	.A44A
	jumptab	.A46A
	jumptab	.A47A
	jumptab	.A49A
	jumptab	.A51A
	jumptab	.A52A
	jumptab	.A54A
	jumptab	.A55A
	jumptab	.A57A
	jumptab	.A59A
	jumptab	.A60A
	jumptab	.A62A
	ENDC
.A0A	Pointsb	8
	pb	40,0,-40	;2
	pb	-40,0,-40	;3
	pb	40,0,0	;4
	pb	-40,0,0	;5
	pb	40,0,30	;6
	pb	-40,0,30	;7
	pb	40,0,40	;8
	pb	-40,0,40	;9
	PointsXb	2
	pb	10,0,-40	;10
	pb	10,0,30	;12
	jump	.EB0
.A1A	Pointsb	8
	pb	40,0,-40	;2
	pb	-40,0,-40	;3
	pb	40,0,0	;4
	pb	-40,0,0	;5
	pb	39,-4,29	;6
	pb	-40,0,30	;7
	pb	38,-6,38	;8
	pb	-40,0,40	;9
	PointsXb	2
	pb	10,0,-40	;10
	pb	10,0,30	;12
	jump	.EB0
.A2A	Pointsb	8
	pb	40,0,-40	;2
	pb	-40,0,-40	;3
	pb	40,0,0	;4
	pb	-40,0,0	;5
	pb	38,-8,28	;6
	pb	-40,0,30	;7
	pb	37,-11,37	;8
	pb	-40,0,40	;9
	PointsXb	2
	pb	10,0,-40	;10
	pb	10,0,30	;12
	jump	.EB0
.A3A	Pointsb	8
	pb	40,0,-40	;2
	pb	-40,0,-40	;3
	pb	40,0,0	;4
	pb	-40,0,0	;5
	pb	36,-12,27	;6
	pb	-40,0,30	;7
	pb	35,-17,35	;8
	pb	-40,0,40	;9
	PointsXb	2
	pb	10,0,-40	;10
	pb	10,0,30	;12
	jump	.EB0
.A4A	Pointsb	8
	pb	40,0,-40	;2
	pb	-40,0,-40	;3
	pb	40,0,0	;4
	pb	-40,0,0	;5
	pb	34,-15,25	;6
	pb	-40,0,30	;7
	pb	32,-20,33	;8
	pb	-40,0,40	;9
	PointsXb	2
	pb	10,0,-40	;10
	pb	10,0,30	;12
	jump	.EB0
.A5A	Pointsb	8
	pb	40,0,-40	;2
	pb	-40,0,-40	;3
	pb	40,0,0	;4
	pb	-40,0,0	;5
	pb	32,-17,22	;6
	pb	-40,0,30	;7
	pb	29,-23,29	;8
	pb	-40,0,40	;9
	PointsXb	2
	pb	10,0,-40	;10
	pb	10,0,30	;12
	jump	.EB0
.A6A	Pointsb	8
	pb	40,0,-40	;2
	pb	-40,0,-40	;3
	pb	40,0,0	;4
	pb	-40,0,0	;5
	pb	29,-20,19	;6
	pb	-40,0,30	;7
	pb	25,-26,26	;8
	pb	-40,0,40	;9
	PointsXb	2
	pb	10,0,-40	;10
	pb	10,0,30	;12
	jump	.EB0
.A7A	Pointsb	8
	pb	40,0,-40	;2
	pb	-40,0,-40	;3
	pb	40,0,0	;4
	pb	-40,0,0	;5
	pb	26,-21,16	;6
	pb	-40,0,30	;7
	pb	21,-27,22	;8
	pb	-40,0,40	;9
	PointsXb	2
	pb	10,0,-40	;10
	pb	10,0,30	;12
	jump	.EB0
.A8A	Pointsb	8
	pb	40,0,-40	;2
	pb	-40,0,-40	;3
	pb	40,0,0	;4
	pb	-40,0,0	;5
	pb	23,-20,13	;6
	pb	-40,0,30	;7
	pb	17,-26,18	;8
	pb	-40,0,40	;9
	PointsXb	2
	pb	10,0,-40	;10
	pb	10,0,30	;12
	jump	.EB0
.A9A	Pointsb	8
	pb	40,0,-40	;2
	pb	-40,0,-40	;3
	pb	40,0,0	;4
	pb	-40,0,0	;5
	pb	20,-19,10	;6
	pb	-40,0,30	;7
	pb	13,-25,13	;8
	pb	-40,0,40	;9
	PointsXb	2
	pb	10,0,-40	;10
	pb	10,0,30	;12
	jump	.EB0
.A10A	Pointsb	8
	pb	40,0,-40	;2
	pb	-40,0,-40	;3
	pb	40,0,0	;4
	pb	-40,0,0	;5
	pb	17,-17,7	;6
	pb	-40,0,30	;7
	pb	9,-23,9	;8
	pb	-40,0,40	;9
	PointsXb	2
	pb	10,0,-40	;10
	pb	10,0,30	;12
	jump	.EB0
.A11A	Pointsb	8
	pb	40,0,-40	;2
	pb	-40,0,-40	;3
	pb	40,0,0	;4
	pb	-40,0,0	;5
	pb	15,-14,5	;6
	pb	-40,0,30	;7
	pb	7,-19,7	;8
	pb	-40,0,40	;9
	PointsXb	2
	pb	10,0,-40	;10
	pb	10,0,30	;12
	jump	.EB0
.A12A	Pointsb	8
	pb	40,0,-40	;2
	pb	-40,0,-40	;3
	pb	40,0,0	;4
	pb	-40,0,0	;5
	pb	13,-11,3	;6
	pb	-40,0,30	;7
	pb	4,-15,5	;8
	pb	-40,0,40	;9
	PointsXb	2
	pb	10,0,-40	;10
	pb	10,0,30	;12
	jump	.EB0
.A13A	Pointsb	8
	pb	40,0,-40	;2
	pb	-40,0,-40	;3
	pb	40,0,0	;4
	pb	-40,0,0	;5
	pb	11,-7,1	;6
	pb	-40,0,30	;7
	pb	1,-10,2	;8
	pb	-40,0,40	;9
	PointsXb	2
	pb	10,0,-40	;10
	pb	10,0,30	;12
	jump	.EB0
.A14A	Pointsb	8
	pb	40,0,-40	;2
	pb	-40,0,-40	;3
	pb	40,0,0	;4
	pb	-40,0,0	;5
	pb	11,-5,1	;6
	pb	-39,-4,29	;7
	pb	1,-7,1	;8
	pb	-39,-5,39	;9
	PointsXb	2
	pb	10,0,-40	;10
	pb	10,0,30	;12
	jump	.EB0
.A15A	Pointsb	8
	pb	40,0,-40	;2
	pb	-40,0,-40	;3
	pb	40,0,0	;4
	pb	-40,0,0	;5
	pb	10,-3,0	;6
	pb	-38,-8,28	;7
	pb	0,-4,1	;8
	pb	-37,-11,37	;9
	PointsXb	2
	pb	10,0,-40	;10
	pb	10,0,30	;12
	jump	.EB0
.A16A	Pointsb	8
	pb	40,0,-40	;2
	pb	-40,0,-40	;3
	pb	40,0,0	;4
	pb	-40,0,0	;5
	pb	10,-1,0	;6
	pb	-36,-12,27	;7
	pb	0,-1,0	;8
	pb	-35,-16,35	;9
	PointsXb	2
	pb	10,0,-40	;10
	pb	10,0,30	;12
	jump	.EB0
.A17A	Pointsb	8
	pb	40,0,-40	;2
	pb	-40,0,-40	;3
	pb	40,0,0	;4
	pb	-40,0,0	;5
	pb	10,0,0	;6
	pb	-34,-15,25	;7
	pb	0,0,0	;8
	pb	-32,-20,33	;9
	PointsXb	2
	pb	10,0,-40	;10
	pb	10,0,30	;12
	jump	.EB0
.A18A	Pointsb	8
	pb	40,0,-40	;2
	pb	-40,0,-40	;3
	pb	40,0,0	;4
	pb	-40,0,0	;5
	pb	10,0,0	;6
	pb	-32,-17,22	;7
	pb	0,0,0	;8
	pb	-29,-23,29	;9
	PointsXb	2
	pb	10,0,-40	;10
	pb	10,0,30	;12
	jump	.EB0
.A19A	Pointsb	8
	pb	40,0,-40	;2
	pb	-40,0,-40	;3
	pb	40,0,0	;4
	pb	-40,0,0	;5
	pb	10,0,0	;6
	pb	-29,-20,20	;7
	pb	0,0,0	;8
	pb	-25,-26,26	;9
	PointsXb	2
	pb	10,0,-40	;10
	pb	10,0,30	;12
	jump	.EB0
.A20A	Pointsb	8
	pb	40,0,-40	;2
	pb	-40,0,-40	;3
	pb	40,0,0	;4
	pb	-40,0,0	;5
	pb	10,0,0	;6
	pb	-27,-21,17	;7
	pb	0,0,0	;8
	pb	-21,-27,22	;9
	PointsXb	2
	pb	10,0,-40	;10
	pb	10,0,30	;12
	jump	.EB0
.A21A	Pointsb	8
	pb	40,0,-40	;2
	pb	-40,0,-40	;3
	pb	40,0,0	;4
	pb	-40,0,0	;5
	pb	10,0,0	;6
	pb	-23,-20,13	;7
	pb	0,0,0	;8
	pb	-17,-26,18	;9
	PointsXb	2
	pb	10,0,-40	;10
	pb	10,0,30	;12
	jump	.EB0
.A22A	Pointsb	8
	pb	40,0,-40	;2
	pb	-40,0,-40	;3
	pb	40,0,0	;4
	pb	-40,0,0	;5
	pb	10,0,0	;6
	pb	-20,-19,10	;7
	pb	0,0,0	;8
	pb	-13,-25,14	;9
	PointsXb	2
	pb	10,0,-40	;10
	pb	10,0,30	;12
	jump	.EB0
.A23A	Pointsb	8
	pb	40,0,-40	;2
	pb	-40,0,-40	;3
	pb	40,0,0	;4
	pb	-40,0,0	;5
	pb	10,0,0	;6
	pb	-17,-17,7	;7
	pb	0,0,0	;8
	pb	-10,-23,10	;9
	PointsXb	2
	pb	10,0,-40	;10
	pb	10,0,30	;12
	jump	.EB0
.A24A	Pointsb	8
	pb	40,0,-40	;2
	pb	-40,0,-40	;3
	pb	40,0,0	;4
	pb	-40,0,0	;5
	pb	10,0,0	;6
	pb	-15,-12,5	;7
	pb	0,0,0	;8
	pb	-6,-15,6	;9
	PointsXb	2
	pb	10,0,-40	;10
	pb	10,0,30	;12
	jump	.EB0
.A25A	Pointsb	8
	pb	40,0,-40	;2
	pb	-40,0,-40	;3
	pb	40,0,0	;4
	pb	-40,0,0	;5
	pb	10,0,0	;6
	pb	-12,-6,2	;7
	pb	0,0,0	;8
	pb	-3,-8,3	;9
	PointsXb	2
	pb	10,0,-40	;10
	pb	10,0,30	;12
	jump	.EB0
.A26A	Pointsb	8
	pb	40,0,-40	;2
	pb	-40,0,-40	;3
	pb	40,0,0	;4
	pb	-40,0,0	;5
	pb	10,0,0	;6
	pb	-10,-1,0	;7
	pb	0,0,0	;8
	pb	0,-1,0	;9
	PointsXb	2
	pb	10,0,-40	;10
	pb	10,0,30	;12
	jump	.EB0
.A27A	Pointsb	8
	pb	39,-4,-40	;2
	pb	-39,-4,-40	;3
	pb	39,-4,0	;4
	pb	-39,-4,0	;5
	pb	10,-1,0	;6
	pb	-10,-1,0	;7
	pb	0,0,0	;8
	pb	0,0,0	;9
	PointsXb	2
	pb	10,-1,-40	;10
	pb	10,-1,30	;12
	jump	.EB0
.A28A	Pointsb	8
	pb	38,-8,-40	;2
	pb	-39,-8,-40	;3
	pb	38,-8,0	;4
	pb	-39,-8,0	;5
	pb	9,-2,0	;6
	pb	-9,-2,0	;7
	pb	0,0,0	;8
	pb	0,0,0	;9
	PointsXb	2
	pb	9,-2,-40	;10
	pb	9,-2,30	;12
	jump	.EB0
.A29A	Pointsb	8
	pb	37,-12,-40	;2
	pb	-38,-12,-40	;3
	pb	37,-12,0	;4
	pb	-38,-12,0	;5
	pb	9,-3,0	;6
	pb	-9,-3,0	;7
	pb	0,0,0	;8
	pb	0,0,0	;9
	PointsXb	2
	pb	9,-3,-40	;10
	pb	9,-3,30	;12
	jump	.EB0
.A30A	Pointsb	8
	pb	36,-16,-40	;2
	pb	-37,-16,-40	;3
	pb	36,-16,0	;4
	pb	-37,-16,0	;5
	pb	9,-4,0	;6
	pb	-9,-4,0	;7
	pb	0,0,0	;8
	pb	0,0,0	;9
	PointsXb	2
	pb	9,-4,-40	;10
	pb	9,-4,30	;12
	jump	.EB0
.A31A	Pointsb	8
	pb	34,-20,-40	;2
	pb	-34,-20,-40	;3
	pb	34,-20,0	;4
	pb	-34,-20,0	;5
	pb	8,-4,0	;6
	pb	-8,-4,0	;7
	pb	0,0,0	;8
	pb	0,0,0	;9
	PointsXb	2
	pb	8,-4,-40	;10
	pb	8,-4,30	;12
	jump	.EB0
.A32A	Pointsb	8
	pb	32,-24,-40	;2
	pb	-32,-24,-40	;3
	pb	32,-24,0	;4
	pb	-32,-24,0	;5
	pb	8,-5,0	;6
	pb	-8,-5,0	;7
	pb	0,0,0	;8
	pb	0,0,0	;9
	PointsXb	2
	pb	8,-5,-40	;10
	pb	8,-5,30	;12
	jump	.EB0
.A33A	Pointsb	8
	pb	30,-27,-40	;2
	pb	-30,-27,-40	;3
	pb	30,-27,0	;4
	pb	-30,-27,0	;5
	pb	8,-6,0	;6
	pb	-8,-6,0	;7
	pb	0,0,0	;8
	pb	0,0,0	;9
	PointsXb	2
	pb	8,-6,-40	;10
	pb	8,-6,30	;12
	jump	.EB0
.A34A	Pointsb	8
	pb	26,-30,-40	;2
	pb	-26,-30,-40	;3
	pb	26,-30,0	;4
	pb	-26,-30,0	;5
	pb	7,-7,0	;6
	pb	-7,-7,0	;7
	pb	0,0,0	;8
	pb	0,0,0	;9
	PointsXb	2
	pb	7,-7,-40	;10
	pb	7,-7,30	;12
	jump	.EB0
.A35A	Pointsb	8
	pb	23,-33,-40	;2
	pb	-23,-33,-40	;3
	pb	23,-33,0	;4
	pb	-23,-33,0	;5
	pb	6,-8,0	;6
	pb	-6,-8,0	;7
	pb	0,0,0	;8
	pb	0,0,0	;9
	PointsXb	2
	pb	6,-8,-40	;10
	pb	6,-8,30	;12
	jump	.EB0
.A36A	Pointsb	8
	pb	19,-35,-40	;2
	pb	-19,-35,-40	;3
	pb	19,-35,0	;4
	pb	-19,-35,0	;5
	pb	5,-9,0	;6
	pb	-5,-9,0	;7
	pb	0,0,0	;8
	pb	0,0,0	;9
	PointsXb	2
	pb	5,-9,-40	;10
	pb	5,-9,30	;12
	jump	.EB0
.A37A	Pointsb	8
	pb	15,-36,-40	;2
	pb	-15,-36,-40	;3
	pb	15,-36,0	;4
	pb	-15,-36,0	;5
	pb	4,-9,0	;6
	pb	-4,-9,0	;7
	pb	0,0,0	;8
	pb	0,0,0	;9
	PointsXb	2
	pb	4,-9,-40	;10
	pb	4,-9,30	;12
	jump	.EB0
.A38A	Pointsb	8
	pb	10,-38,-40	;2
	pb	-10,-38,-40	;3
	pb	10,-38,0	;4
	pb	-10,-38,0	;5
	pb	2,-10,0	;6
	pb	-2,-10,0	;7
	pb	0,0,0	;8
	pb	0,0,0	;9
	PointsXb	2
	pb	2,-10,-40	;10
	pb	2,-10,30	;12
	jump	.EB0
.A39A	Pointsb	8
	pb	5,-39,-40	;2
	pb	-5,-39,-40	;3
	pb	5,-39,0	;4
	pb	-5,-39,0	;5
	pb	1,-10,0	;6
	pb	-1,-10,0	;7
	pb	0,0,0	;8
	pb	0,0,0	;9
	PointsXb	2
	pb	1,-10,-40	;10
	pb	1,-10,30	;12
	jump	.EB0
.A40A	Pointsb	8
	pb	5,-39,-40	;2
	pb	-5,-39,-40	;3
	pb	5,-39,0	;4
	pb	-5,-39,0	;5
	pb	1,-10,0	;6
	pb	-1,-10,0	;7
	pb	0,0,0	;8
	pb	0,0,0	;9
	PointsXb	2
	pb	1,-10,-40	;10
	pb	1,-10,30	;12
	jump	.EB0
.A41A	Pointsb	8
	pb	6,-39,-40	;2
	pb	-6,-39,-40	;3
	pb	6,-39,0	;4
	pb	-6,-39,0	;5
	pb	2,-10,0	;6
	pb	-2,-10,0	;7
	pb	0,0,0	;8
	pb	0,0,0	;9
	PointsXb	2
	pb	2,-10,-40	;10
	pb	2,-10,30	;12
	jump	.EB0
.A42A	Pointsb	8
	pb	7,-39,-40	;2
	pb	-7,-39,-40	;3
	pb	7,-39,0	;4
	pb	-7,-39,0	;5
	pb	2,-10,0	;6
	pb	-2,-10,0	;7
	pb	0,0,0	;8
	pb	0,0,0	;9
	PointsXb	2
	pb	2,-10,-40	;10
	pb	2,-10,30	;12
	jump	.EB0
.A43A	Pointsb	8
	pb	7,-39,-40	;2
	pb	-9,-38,-40	;3
	pb	7,-39,0	;4
	pb	-9,-38,0	;5
	pb	2,-10,0	;6
	pb	-2,-10,0	;7
	pb	0,0,0	;8
	pb	0,0,0	;9
	PointsXb	2
	pb	2,-10,-40	;10
	pb	2,-10,30	;12
	jump	.EB0
.A44A	Pointsb	8
	pb	7,-39,-40	;2
	pb	-12,-37,-40	;3
	pb	7,-39,0	;4
	pb	-12,-37,0	;5
	pb	2,-10,0	;6
	pb	-2,-10,0	;7
	pb	0,0,0	;8
	pb	0,0,0	;9
	PointsXb	2
	pb	2,-10,-40	;10
	pb	2,-10,30	;12
	jump	.EB0
.A45A	Pointsb	8
	pb	7,-39,-40	;2
	pb	-15,-36,-40	;3
	pb	7,-39,0	;4
	pb	-15,-36,0	;5
	pb	2,-10,0	;6
	pb	-2,-10,0	;7
	pb	0,0,0	;8
	pb	0,0,0	;9
	PointsXb	2
	pb	2,-10,-40	;10
	pb	2,-10,30	;12
	jump	.EB0
.A46A	Pointsb	8
	pb	7,-39,-40	;2
	pb	-18,-34,-40	;3
	pb	7,-39,0	;4
	pb	-18,-34,0	;5
	pb	2,-10,0	;6
	pb	-2,-10,0	;7
	pb	0,0,0	;8
	pb	0,0,0	;9
	PointsXb	2
	pb	2,-10,-40	;10
	pb	2,-10,30	;12
	jump	.EB0
.A47A	Pointsb	8
	pb	7,-39,-40	;2
	pb	-22,-29,-40	;3
	pb	7,-39,0	;4
	pb	-22,-29,0	;5
	pb	2,-10,0	;6
	pb	-2,-10,0	;7
	pb	0,0,0	;8
	pb	0,0,0	;9
	PointsXb	2
	pb	2,-10,-40	;10
	pb	2,-10,30	;12
	jump	.EB0
.A48A	Pointsb	8
	pb	7,-39,-40	;2
	pb	-26,-24,-40	;3
	pb	7,-39,0	;4
	pb	-26,-24,0	;5
	pb	2,-10,0	;6
	pb	-2,-10,0	;7
	pb	0,0,0	;8
	pb	0,0,0	;9
	PointsXb	2
	pb	2,-10,-40	;10
	pb	2,-10,30	;12
	jump	.EB0
.A49A	Pointsb	8
	pb	7,-39,-40	;2
	pb	-30,-20,-40	;3
	pb	7,-39,0	;4
	pb	-30,-20,0	;5
	pb	2,-10,0	;6
	pb	-2,-10,0	;7
	pb	0,0,0	;8
	pb	0,0,0	;9
	PointsXb	2
	pb	2,-10,-40	;10
	pb	2,-10,30	;12
	jump	.EB0
.A50A	Pointsb	8
	pb	7,-39,-40	;2
	pb	-30,-15,-40	;3
	pb	7,-39,0	;4
	pb	-30,-15,0	;5
	pb	2,-10,0	;6
	pb	-2,-10,0	;7
	pb	0,0,0	;8
	pb	0,0,0	;9
	PointsXb	2
	pb	2,-10,-40	;10
	pb	2,-10,30	;12
	jump	.EB0
.A51A	Pointsb	8
	pb	7,-39,-40	;2
	pb	-31,-11,-40	;3
	pb	7,-39,0	;4
	pb	-31,-11,0	;5
	pb	2,-10,0	;6
	pb	-2,-10,0	;7
	pb	0,0,0	;8
	pb	0,0,0	;9
	PointsXb	2
	pb	2,-10,-40	;10
	pb	2,-10,30	;12
	jump	.EB0
.A52A	Pointsb	8
	pb	7,-39,-40	;2
	pb	-31,-6,-40	;3
	pb	7,-39,0	;4
	pb	-31,-6,0	;5
	pb	2,-10,0	;6
	pb	-2,-10,0	;7
	pb	0,0,0	;8
	pb	0,0,0	;9
	PointsXb	2
	pb	2,-10,-40	;10
	pb	2,-10,30	;12
	jump	.EB0
.A53A	Pointsb	8
	pb	11,-37,-40	;2
	pb	-31,-5,-40	;3
	pb	11,-37,0	;4
	pb	-31,-5,0	;5
	pb	2,-10,0	;6
	pb	-2,-10,0	;7
	pb	0,0,0	;8
	pb	0,0,0	;9
	PointsXb	2
	pb	2,-10,-40	;10
	pb	2,-10,30	;12
	jump	.EB0
.A54A	Pointsb	8
	pb	16,-34,-40	;2
	pb	-31,-5,-40	;3
	pb	16,-34,0	;4
	pb	-31,-5,0	;5
	pb	2,-10,0	;6
	pb	-2,-10,0	;7
	pb	0,0,0	;8
	pb	0,0,0	;9
	PointsXb	2
	pb	2,-10,-40	;10
	pb	2,-10,30	;12
	jump	.EB0
.A55A	Pointsb	8
	pb	22,-30,-40	;2
	pb	-31,-5,-40	;3
	pb	22,-30,0	;4
	pb	-31,-5,0	;5
	pb	2,-10,0	;6
	pb	-2,-10,0	;7
	pb	0,0,0	;8
	pb	0,0,0	;9
	PointsXb	2
	pb	2,-10,-40	;10
	pb	2,-10,30	;12
	jump	.EB0
.A56A	Pointsb	8
	pb	25,-26,-40	;2
	pb	-31,-5,-40	;3
	pb	25,-26,0	;4
	pb	-31,-5,0	;5
	pb	2,-10,0	;6
	pb	-2,-10,0	;7
	pb	0,0,0	;8
	pb	0,0,0	;9
	PointsXb	2
	pb	2,-10,-40	;10
	pb	2,-10,30	;12
	jump	.EB0
.A57A	Pointsb	8
	pb	27,-20,-40	;2
	pb	-31,-5,-40	;3
	pb	27,-20,0	;4
	pb	-31,-5,0	;5
	pb	2,-10,0	;6
	pb	-2,-10,0	;7
	pb	0,0,0	;8
	pb	0,0,0	;9
	PointsXb	2
	pb	2,-10,-40	;10
	pb	2,-10,30	;12
	jump	.EB0
.A58A	Pointsb	8
	pb	29,-14,-40	;2
	pb	-31,-5,-40	;3
	pb	29,-14,0	;4
	pb	-31,-5,0	;5
	pb	2,-10,0	;6
	pb	-2,-10,0	;7
	pb	0,0,0	;8
	pb	0,0,0	;9
	PointsXb	2
	pb	2,-10,-40	;10
	pb	2,-10,30	;12
	jump	.EB0
.A59A	Pointsb	8
	pb	31,-10,-40	;2
	pb	-31,-5,-40	;3
	pb	31,-10,0	;4
	pb	-31,-5,0	;5
	pb	2,-10,0	;6
	pb	-2,-10,0	;7
	pb	0,0,0	;8
	pb	0,0,0	;9
	PointsXb	2
	pb	2,-10,-40	;10
	pb	2,-10,30	;12
	jump	.EB0
.A60A	Pointsb	8
	pb	31,-8,-40	;2
	pb	-31,-5,-40	;3
	pb	31,-8,0	;4
	pb	-31,-5,0	;5
	pb	2,-10,0	;6
	pb	-2,-10,0	;7
	pb	0,0,0	;8
	pb	0,0,0	;9
	PointsXb	2
	pb	2,-10,-40	;10
	pb	2,-10,30	;12
	jump	.EB0
.A61A	Pointsb	8
	pb	31,-7,-40	;2
	pb	-31,-5,-40	;3
	pb	31,-7,0	;4
	pb	-31,-5,0	;5
	pb	2,-10,0	;6
	pb	-2,-10,0	;7
	pb	0,0,0	;8
	pb	0,0,0	;9
	PointsXb	2
	pb	2,-10,-40	;10
	pb	2,-10,30	;12
	jump	.EB0
.A62A	Pointsb	8
	pb	31,-5,-40	;2
	pb	-31,-5,-40	;3
	pb	31,-5,0	;4
	pb	-31,-5,0	;5
	pb	2,-10,0	;6
	pb	-2,-10,0	;7
	pb	0,0,0	;8
	pb	0,0,0	;9
	PointsXb	2
	pb	2,-10,-40	;10
	pb	2,-10,30	;12
.EB0

	EndPoints


paper_1_F
	Vizis	16
	Viz	5,3,11,0,127,0	;0
	Viz	13,11,3,0,-127,0	;1
	Viz	5,13,7,0,127,0	;2
	Viz	7,13,5,0,-127,0	;3
	Viz	12,10,2,0,127,0	;4
	Viz	4,2,10,0,-127,0	;5
	Viz	6,12,4,0,127,0	;6
	Viz	4,12,6,0,-127,0	;7
	Viz	0,11,13,0,-127,0	;8
	Viz	1,13,11,0,127,0	;9
	Viz	7,13,1,0,127,0	;10
	Viz	9,1,13,0,-127,0	;11
	Viz	1,12,10,0,-127,0	;12
	Viz	0,10,12,0,127,0	;13
	Viz	8,1,12,0,127,0	;14
	Viz	6,12,1,0,-127,0	;15

paper_1_f1	Faces
	Face4	1,0,0,127,0,5,3,11,13
	Face4	3,1,0,-127,0,13,11,3,5
	Face3	3,2,0,127,0,5,13,7
	Face3	0,3,0,-127,0,7,13,5
	Face4	1,4,0,127,0,12,10,2,4
	Face4	3,5,0,-127,0,4,2,10,12
	Face3	3,6,0,127,0,6,12,4
	Face3	0,7,0,-127,0,4,12,6
	Face4	4,8,0,-127,0,0,11,13,1
	Face4	3,9,0,127,0,1,13,11,0
	Face4	4,10,0,127,0,7,13,1,9
	Face4	2,11,0,-127,0,9,1,13,7
	Face4	1,12,0,-127,0,1,12,10,0
	Face4	2,13,0,127,0,0,10,12,1
	Face4	1,14,0,127,0,8,1,12,6
	Face4	1,15,0,-127,0,6,12,1,8
	Fend
	EndShape

	endc


	IFNE	SPEED_MODE
;--Shape file ----- C:\SHED\SHAPES6\BOSS_H_1.ANM ----
	ifne	DO_HDR

boss_h_1
	ShapeHdr	boss_h_1_P,0,boss_h_1_F,0,0,0,0,bossh_scale+1,0,20,95,96,96,id_0_c,0,0,0,0,<boss_h_1>
boss_h_1a
	ShapeHdr	boss_h_1_P,0,boss_h_1_F,0,0,0,0,bossh_scale+1,0,70,16,95,96,id_0_c,0,0,0,0,<boss_h_1>
	elseif
boss_h_1_P
	Pointsb	1
	pb	0,0,0	;0
	IFEQ	SPEED_MODE
	Frames	15
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
	jumptab	.A14A
	ELSEIF
	Frames	29
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
	jumptab	.A14A
	ENDC
.A0A	Pointsb	4
	pb	0,-4,-25	;1
	pb	0,95,-14	;2
	pb	0,36,-14	;3
	pb	0,9,-9	;4
	PointsXb	1
	pb	4,36,-14	;5
	jump	.EB0
.A1A	Pointsb	4
	pb	0,-10,-36	;1
	pb	0,87,-25	;2
	pb	0,29,-25	;3
	pb	0,5,-11	;4
	PointsXb	1
	pb	4,29,-25	;5
	jump	.EB0
.A2A	Pointsb	4
	pb	0,-21,-45	;1
	pb	0,78,-34	;2
	pb	0,19,-34	;3
	pb	0,1,-13	;4
	PointsXb	1
	pb	4,19,-34	;5
	jump	.EB0
.A3A	Pointsb	4
	pb	0,-34,-50	;1
	pb	0,64,-38	;2
	pb	0,6,-38	;3
	pb	0,-3,-12	;4
	PointsXb	1
	pb	4,6,-38	;5
	jump	.EB0
.A4A	Pointsb	4
	pb	0,-48,-48	;1
	pb	0,51,-37	;2
	pb	0,-8,-38	;3
	pb	0,-7,-10	;4
	PointsXb	1
	pb	4,-8,-38	;5
	jump	.EB0
.A5A	Pointsb	4
	pb	0,-60,-44	;1
	pb	0,39,-33	;2
	pb	0,-20,-33	;3
	pb	0,-10,-7	;4
	PointsXb	1
	pb	4,-20,-33	;5
	jump	.EB0
.A6A	Pointsb	4
	pb	0,-70,-35	;1
	pb	0,29,-24	;2
	pb	0,-30,-24	;3
	pb	0,-12,-3	;4
	PointsXb	1
	pb	4,-30,-24	;5
	jump	.EB0
.A7A	Pointsb	4
	pb	0,-61,-30	;1
	pb	0,35,-53	;2
	pb	0,-20,-33	;3
	pb	0,-10,-7	;4
	PointsXb	1
	pb	4,-20,-33	;5
	jump	.EB0
.A8A	Pointsb	4
	pb	0,-45,-20	;1
	pb	0,38,-75	;2
	pb	0,-8,-38	;3
	pb	0,-7,-10	;4
	PointsXb	1
	pb	4,-8,-38	;5
	jump	.EB0
.A9A	Pointsb	4
	pb	0,-24,-9	;1
	pb	0,35,-88	;2
	pb	0,6,-38	;3
	pb	0,-3,-12	;4
	PointsXb	1
	pb	4,6,-38	;5
	jump	.EB0
.A10A	Pointsb	4
	pb	0,-29,-15	;1
	pb	0,43,-82	;2
	pb	0,6,-38	;3
	pb	0,-3,-12	;4
	PointsXb	1
	pb	4,6,-38	;5
	jump	.EB0
.A11A	Pointsb	4
	pb	0,-24,-9	;1
	pb	0,35,-88	;2
	pb	0,6,-38	;3
	pb	0,-3,-12	;4
	PointsXb	1
	pb	4,6,-38	;5
	jump	.EB0
.A12A	Pointsb	4
	pb	0,-24,-7	;1
	pb	0,27,-91	;2
	pb	0,2,-38	;3
	pb	0,-4,-11	;4
	PointsXb	1
	pb	4,2,-38	;5
	jump	.EB0
.A13A	Pointsb	4
	pb	0,-19,-1	;1
	pb	0,9,-95	;2
	pb	0,-1,-38	;3
	pb	0,-5,-11	;4
	PointsXb	1
	pb	4,-1,-38	;5
	jump	.EB0
.A14A	Pointsb	4
	pb	0,-12,1	;1
	pb	0,-1,-96	;2
	pb	0,-1,-38	;3
	pb	0,-5,-11	;4
	PointsXb	1
	pb	4,-1,-38	;5
	jump	.EB0
.A0_5A	Pointsb	4
	pb	0,-7,-30	;1
	pb	0,91,-20	;2
	pb	0,32,-20	;3
	pb	0,7,-10	;4
	PointsXb	1
	pb	4,32,-20	;5
	jump	.EB0
.A1_5A	Pointsb	4
	pb	0,-16,-40	;1
	pb	0,82,-30	;2
	pb	0,24,-30	;3
	pb	0,3,-12	;4
	PointsXb	1
	pb	4,24,-30	;5
	jump	.EB0
.A2_5A	Pointsb	4
	pb	0,-28,-48	;1
	pb	0,71,-36	;2
	pb	0,12,-36	;3
	pb	0,-1,-12	;4
	PointsXb	1
	pb	4,12,-36	;5
	jump	.EB0
.A3_5A	Pointsb	4
	pb	0,-41,-49	;1
	pb	0,58,-38	;2
	pb	0,-1,-38	;3
	pb	0,-5,-11	;4
	PointsXb	1
	pb	4,-1,-38	;5
	jump	.EB0
.A4_5A	Pointsb	4
	pb	0,-54,-46	;1
	pb	0,45,-35	;2
	pb	0,-14,-36	;3
	pb	0,-8,-8	;4
	PointsXb	1
	pb	4,-14,-36	;5
	jump	.EB0
.A5_5A	Pointsb	4
	pb	0,-65,-40	;1
	pb	0,34,-28	;2
	pb	0,-25,-28	;3
	pb	0,-11,-5	;4
	PointsXb	1
	pb	4,-25,-28	;5
	jump	.EB0
.A6_5A	Pointsb	4
	pb	0,-66,-32	;1
	pb	0,32,-38	;2
	pb	0,-25,-28	;3
	pb	0,-11,-5	;4
	PointsXb	1
	pb	4,-25,-28	;5
	jump	.EB0
.A7_5A	Pointsb	4
	pb	0,-53,-25	;1
	pb	0,36,-64	;2
	pb	0,-14,-36	;3
	pb	0,-8,-8	;4
	PointsXb	1
	pb	4,-14,-36	;5
	jump	.EB0
.A8_5A	Pointsb	4
	pb	0,-34,-14	;1
	pb	0,36,-82	;2
	pb	0,-1,-38	;3
	pb	0,-5,-11	;4
	PointsXb	1
	pb	4,-1,-38	;5
	jump	.EB0
.A9_5A	Pointsb	4
	pb	0,-26,-12	;1
	pb	0,39,-85	;2
	pb	0,6,-38	;3
	pb	0,-3,-12	;4
	PointsXb	1
	pb	4,6,-38	;5
	jump	.EB0
.A10_5A	Pointsb	4
	pb	0,-26,-12	;1
	pb	0,39,-85	;2
	pb	0,6,-38	;3
	pb	0,-3,-12	;4
	PointsXb	1
	pb	4,6,-38	;5
	jump	.EB0
.A11_5A	Pointsb	4
	pb	0,-24,-8	;1
	pb	0,31,-90	;2
	pb	0,4,-38	;3
	pb	0,-4,-12	;4
	PointsXb	1
	pb	4,4,-38	;5
	jump	.EB0
.A12_5A	Pointsb	4
	pb	0,-22,-4	;1
	pb	0,18,-93	;2
	pb	0,0,-38	;3
	pb	0,-4,-11	;4
	PointsXb	1
	pb	4,0,-38	;5
	jump	.EB0
.A13_5A	Pointsb	4
	pb	0,-16,0	;1
	pb	0,4,-96	;2
	pb	0,-1,-38	;3
	pb	0,-5,-11	;4
	PointsXb	1
	pb	4,-1,-38	;5
	jump	.EB0
.EB0

	EndPoints
boss_h_1_F
	Vizis	6
	Viz	6,2,1,108,-7,-66	;1
	Viz	1,2,5,-108,-7,-66	;2
	Viz	5,2,6,0,0,127	;3
	Viz	5,6,1,0,34,122	;4
	Viz	3,4,0,127,0,0	;5
	Viz	0,4,3,-127,0,0	;6

boss_h_1_f1	Faces
	Face3	34,3,0,34,122,5,6,1
	Face3	32,2,0,0,127,5,2,6
	Face2	23,-1,0,0,0,4,1
	Face3	28,0,108,-7,-66,6,2,1
	Face3	30,1,-108,-7,-66,1,2,5
	Face3	0,4,127,0,0,3,4,0
	Face3	0,5,-127,0,0,0,4,3
	Fend
	EndShape

	endc

;--Shape file ----- C:\SHED\SHAPES6\BOSS_H_3.ANM ----
	ifne	DO_HDR

boss_h_3
	ShapeHdr	boss_h_3_P,0,boss_h_3_F,0,0,0,0,bossh_scale,0,8,100,0,100,teleport_c,0,0,0,0,<boss_h_3>
	elseif
boss_h_3_P
	IFEQ	SPEED_MODE
	Frames	20
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
	jumptab	.A14A
	jumptab	.A15A
	jumptab	.A16A
	jumptab	.A17A
	jumptab	.A18A
	jumptab	.A19A
	ELSEIF
	Frames	39
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
	jumptab	.A14A
	jumptab	.A14_5A
	jumptab	.A15A
	jumptab	.A15_5A
	jumptab	.A16A
	jumptab	.A16_5A
	jumptab	.A17A
	jumptab	.A17_5A
	jumptab	.A18A
	jumptab	.A18_5A
	jumptab	.A19A
	ENDC
.A0A	PointsXb	2
	pb	-1,10,0	;0
	pb	1,0,0	;2
	jump	.EB0
.A1A	PointsXb	2
	pb	-1,20,0	;0
	pb	1,0,0	;2
	jump	.EB0
.A2A	PointsXb	2
	pb	-2,30,0	;0
	pb	2,0,0	;2
	jump	.EB0
.A3A	PointsXb	2
	pb	-3,40,0	;0
	pb	2,0,0	;2
	jump	.EB0
.A4A	PointsXb	2
	pb	-4,50,0	;0
	pb	2,0,0	;2
	jump	.EB0
.A5A	PointsXb	2
	pb	-5,60,0	;0
	pb	2,0,0	;2
	jump	.EB0
.A6A	PointsXb	2
	pb	-6,70,0	;0
	pb	2,0,0	;2
	jump	.EB0
.A7A	PointsXb	2
	pb	-6,80,0	;0
	pb	2,0,0	;2
	jump	.EB0
.A8A	PointsXb	2
	pb	-7,90,0	;0
	pb	2,0,0	;2
	jump	.EB0
.A9A	PointsXb	2
	pb	-8,100,0	;0
	pb	2,0,0	;2
	jump	.EB0
.A10A	PointsXb	2
	pb	-8,100,0	;0
	pb	2,10,0	;2
	jump	.EB0
.A11A	PointsXb	2
	pb	-8,100,0	;0
	pb	3,20,0	;2
	jump	.EB0
.A12A	PointsXb	2
	pb	-8,100,0	;0
	pb	3,30,0	;2
	jump	.EB0
.A13A	PointsXb	2
	pb	-8,100,0	;0
	pb	4,40,0	;2
	jump	.EB0
.A14A	PointsXb	2
	pb	-8,100,0	;0
	pb	5,50,0	;2
	jump	.EB0
.A15A	PointsXb	2
	pb	-8,100,0	;0
	pb	5,60,0	;2
	jump	.EB0
.A16A	PointsXb	2
	pb	-8,100,0	;0
	pb	6,70,0	;2
	jump	.EB0
.A17A	PointsXb	2
	pb	-8,100,0	;0
	pb	6,80,0	;2
	jump	.EB0
.A18A	PointsXb	2
	pb	-8,100,0	;0
	pb	7,90,0	;2
	jump	.EB0
.A19A	PointsXb	2
	pb	-8,100,0	;0
	pb	8,95,0	;2
	jump	.EB0
.A0_5A	PointsXb	2
	pb	-1,15,0	;0
	pb	1,0,0	;2
	jump	.EB0
.A1_5A	PointsXb	2
	pb	-2,25,0	;0
	pb	2,0,0	;2
	jump	.EB0
.A2_5A	PointsXb	2
	pb	-2,35,0	;0
	pb	2,0,0	;2
	jump	.EB0
.A3_5A	PointsXb	2
	pb	-4,45,0	;0
	pb	2,0,0	;2
	jump	.EB0
.A4_5A	PointsXb	2
	pb	-4,55,0	;0
	pb	2,0,0	;2
	jump	.EB0
.A5_5A	PointsXb	2
	pb	-6,65,0	;0
	pb	2,0,0	;2
	jump	.EB0
.A6_5A	PointsXb	2
	pb	-6,75,0	;0
	pb	2,0,0	;2
	jump	.EB0
.A7_5A	PointsXb	2
	pb	-6,85,0	;0
	pb	2,0,0	;2
	jump	.EB0
.A8_5A	PointsXb	2
	pb	-8,95,0	;0
	pb	2,0,0	;2
	jump	.EB0
.A9_5A	PointsXb	2
	pb	-8,100,0	;0
	pb	2,5,0	;2
	jump	.EB0
.A10_5A	PointsXb	2
	pb	-8,100,0	;0
	pb	2,15,0	;2
	jump	.EB0
.A11_5A	PointsXb	2
	pb	-8,100,0	;0
	pb	3,25,0	;2
	jump	.EB0
.A12_5A	PointsXb	2
	pb	-8,100,0	;0
	pb	4,35,0	;2
	jump	.EB0
.A13_5A	PointsXb	2
	pb	-8,100,0	;0
	pb	4,45,0	;2
	jump	.EB0
.A14_5A	PointsXb	2
	pb	-8,100,0	;0
	pb	5,55,0	;2
	jump	.EB0
.A15_5A	PointsXb	2
	pb	-8,100,0	;0
	pb	6,65,0	;2
	jump	.EB0
.A16_5A	PointsXb	2
	pb	-8,100,0	;0
	pb	6,75,0	;2
	jump	.EB0
.A17_5A	PointsXb	2
	pb	-8,100,0	;0
	pb	6,85,0	;2
	jump	.EB0
.A18_5A	PointsXb	2
	pb	-8,100,0	;0
	pb	8,92,0	;2
	jump	.EB0
.EB0

	EndPoints
boss_h_3_F
	Vizis	1
	Viz	2,3,0,0,0,-127	;0

boss_h_3_f1	Faces
	Face4	0,0,0,0,-127,2,3,0,1
	Fend
	EndShape

	endc
	ENDC


;--Shape file ----- C:\SHED\NSHAPES\boss_b_0.anm ----
	ifne	DO_HDR

boss_b_0
	ShapeHdr	boss_b_0_P,0,boss_b_0_F,0,0,0,0,bossB_scale,boss_b_col,96,79,68,108,id_0_c,0,0,0,0,<boss_b_0>
	elseif
boss_b_0_P
	IFEQ	SPEED_MODE
	Frames	20
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
	jumptab	.A14A
	jumptab	.A15A
	jumptab	.A16A
	jumptab	.A17A
	jumptab	.A18A
	jumptab	.A19A
	ELSEIF
	Frames	39
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
	jumptab	.A14A
	jumptab	.A14_5A
	jumptab	.A15A
	jumptab	.A15_5A
	jumptab	.A16A
	jumptab	.A16_5A
	jumptab	.A17A
	jumptab	.A17_5A
	jumptab	.A18A
	jumptab	.A18_5A
	jumptab	.A19A
	ENDC
.A0A	Pointsb	4
	pb	15,5,10	;0
	pb	20,0,20	;1
	pb	-15,5,10	;2
	pb	45,-30,-20	;3
	PointsXb	1
	pb	20,-10,15	;4
	Pointsb	2
	pb	-45,-30,-20	;6
	pb	-20,0,20	;7
	PointsXb	1
	pb	-5,0,0	;8
	Pointsb	4
	pb	-2,20,-60	;10
	pb	-30,20,-20	;11
	pb	-2,0,-12	;12
	pb	-2,35,-12	;13
	PointsXb	1
	pb	-5,-10,20	;14
	Pointsb	7
	pb	0,10,-5	;16
	pb	0,20,20	;17
	pb	2,0,-12	;18
	pb	30,20,-20	;19
	pb	2,20,-60	;20
	pb	2,35,-12	;21
	pb	0,10,50	;22
	jump	.EB0
	IFNE	SPEED_MODE
.A0_5A	Pointsb	4
	pb	16,5,9	;0
	pb	20,0,20	;1
	pb	-16,5,9	;2
	pb	45,-30,-20	;3
	PointsXb	1
	pb	20,-10,15	;4
	Pointsb	2
	pb	-45,-30,-20	;6
	pb	-20,0,20	;7
	PointsXb	1
	pb	-5,0,0	;8
	Pointsb	4
	pb	-9,20,-61	;10
	pb	-33,20,-19	;11
	pb	-5,0,-13	;12
	pb	-5,35,-13	;13
	PointsXb	1
	pb	-5,-10,20	;14
	Pointsb	7
	pb	0,10,-5	;16
	pb	0,20,20	;17
	pb	5,0,-13	;18
	pb	33,20,-19	;19
	pb	9,20,-61	;20
	pb	5,35,-13	;21
	pb	0,10,50	;22
	jump	.EB0
	ENDC
.A1A	Pointsb	4
	pb	17,5,9	;0
	pb	20,0,20	;1
	pb	-17,5,9	;2
	pb	45,-30,-20	;3
	PointsXb	1
	pb	20,-10,15	;4
	Pointsb	2
	pb	-45,-30,-20	;6
	pb	-20,0,20	;7
	PointsXb	1
	pb	-5,0,0	;8
	Pointsb	4
	pb	-16,20,-62	;10
	pb	-37,20,-18	;11
	pb	-8,0,-15	;12
	pb	-8,35,-15	;13
	PointsXb	1
	pb	-5,-10,20	;14
	Pointsb	7
	pb	0,10,-5	;16
	pb	0,20,20	;17
	pb	8,0,-15	;18
	pb	37,20,-18	;19
	pb	16,20,-62	;20
	pb	8,35,-15	;21
	pb	0,10,50	;22
	jump	.EB0
	IFNE	SPEED_MODE
.A1_5A	Pointsb	4
	pb	18,5,9	;0
	pb	20,0,20	;1
	pb	-18,5,9	;2
	pb	45,-30,-20	;3
	PointsXb	1
	pb	20,-10,15	;4
	Pointsb	2
	pb	-45,-30,-20	;6
	pb	-20,0,20	;7
	PointsXb	1
	pb	-5,0,0	;8
	Pointsb	4
	pb	-23,20,-61	;10
	pb	-40,20,-16	;11
	pb	-11,0,-15	;12
	pb	-11,35,-15	;13
	PointsXb	1
	pb	-5,-10,20	;14
	Pointsb	7
	pb	0,10,-5	;16
	pb	0,20,20	;17
	pb	11,0,-15	;18
	pb	40,20,-16	;19
	pb	23,20,-61	;20
	pb	11,35,-15	;21
	pb	0,10,50	;22
	jump	.EB0
	ENDC
.A2A	Pointsb	4
	pb	19,5,9	;0
	pb	20,0,20	;1
	pb	-19,5,9	;2
	pb	45,-30,-20	;3
	PointsXb	1
	pb	20,-10,15	;4
	Pointsb	2
	pb	-45,-30,-20	;6
	pb	-20,0,20	;7
	PointsXb	1
	pb	-5,0,0	;8
	Pointsb	4
	pb	-30,20,-61	;10
	pb	-43,20,-14	;11
	pb	-14,0,-16	;12
	pb	-14,35,-16	;13
	PointsXb	1
	pb	-5,-10,20	;14
	Pointsb	7
	pb	0,10,-5	;16
	pb	0,20,20	;17
	pb	14,0,-16	;18
	pb	43,20,-14	;19
	pb	30,20,-61	;20
	pb	14,35,-16	;21
	pb	0,10,50	;22
	jump	.EB0
	IFNE	SPEED_MODE
.A2_5A	Pointsb	4
	pb	20,5,9	;0
	pb	20,0,20	;1
	pb	-20,5,9	;2
	pb	45,-30,-20	;3
	PointsXb	1
	pb	20,-10,15	;4
	Pointsb	2
	pb	-45,-30,-20	;6
	pb	-20,0,20	;7
	PointsXb	1
	pb	-5,0,0	;8
	Pointsb	4
	pb	-37,20,-59	;10
	pb	-46,20,-12	;11
	pb	-17,0,-16	;12
	pb	-17,35,-16	;13
	PointsXb	1
	pb	-5,-10,20	;14
	Pointsb	7
	pb	0,10,-5	;16
	pb	0,20,20	;17
	pb	17,0,-16	;18
	pb	45,20,-12	;19
	pb	37,20,-59	;20
	pb	17,35,-16	;21
	pb	0,10,50	;22
	jump	.EB0
	ENDC
.A3A	Pointsb	4
	pb	21,5,9	;0
	pb	20,0,20	;1
	pb	-21,5,9	;2
	pb	45,-30,-20	;3
	PointsXb	1
	pb	20,-10,15	;4
	Pointsb	2
	pb	-45,-30,-20	;6
	pb	-20,0,20	;7
	PointsXb	1
	pb	-5,0,0	;8
	Pointsb	4
	pb	-44,20,-58	;10
	pb	-49,20,-10	;11
	pb	-20,0,-17	;12
	pb	-20,35,-17	;13
	PointsXb	1
	pb	-5,-10,20	;14
	Pointsb	7
	pb	0,10,-5	;16
	pb	0,20,20	;17
	pb	20,0,-17	;18
	pb	48,20,-10	;19
	pb	44,20,-58	;20
	pb	20,35,-17	;21
	pb	0,10,50	;22
	jump	.EB0
	IFNE	SPEED_MODE
.A3_5A	Pointsb	4
	pb	22,5,9	;0
	pb	20,0,20	;1
	pb	-22,5,9	;2
	pb	45,-33,-17	;3
	PointsXb	1
	pb	20,-10,16	;4
	Pointsb	2
	pb	-45,-33,-17	;6
	pb	-20,0,20	;7
	PointsXb	1
	pb	-5,3,0	;8
	Pointsb	4
	pb	-50,20,-55	;10
	pb	-51,20,-7	;11
	pb	-23,0,-16	;12
	pb	-23,35,-16	;13
	PointsXb	1
	pb	-5,-9,18	;14
	Pointsb	7
	pb	0,14,-2	;16
	pb	0,19,23	;17
	pb	23,0,-16	;18
	pb	50,20,-7	;19
	pb	50,20,-55	;20
	pb	23,35,-16	;21
	pb	0,4,51	;22
	jump	.EB0
	ENDC
.A4A	Pointsb	4
	pb	23,5,9	;0
	pb	20,0,20	;1
	pb	-23,5,9	;2
	pb	45,-36,-14	;3
	PointsXb	1
	pb	20,-11,17	;4
	Pointsb	2
	pb	-45,-36,-14	;6
	pb	-20,0,20	;7
	PointsXb	1
	pb	-5,7,1	;8
	Pointsb	4
	pb	-57,20,-53	;10
	pb	-53,20,-4	;11
	pb	-27,0,-16	;12
	pb	-27,35,-16	;13
	PointsXb	1
	pb	-5,-9,17	;14
	Pointsb	7
	pb	0,18,0	;16
	pb	0,19,27	;17
	pb	27,0,-16	;18
	pb	53,20,-4	;19
	pb	57,20,-53	;20
	pb	27,35,-16	;21
	pb	0,-1,52	;22
	jump	.EB0
	IFNE	SPEED_MODE
.A4_5A	Pointsb	4
	pb	23,5,9	;0
	pb	20,0,20	;1
	pb	-23,5,9	;2
	pb	45,-39,-10	;3
	PointsXb	1
	pb	20,-11,18	;4
	Pointsb	2
	pb	-45,-39,-10	;6
	pb	-20,0,20	;7
	PointsXb	1
	pb	-5,10,3	;8
	Pointsb	4
	pb	-63,20,-49	;10
	pb	-55,20,-1	;11
	pb	-30,0,-15	;12
	pb	-30,35,-15	;13
	PointsXb	1
	pb	-5,-8,15	;14
	Pointsb	7
	pb	0,21,3	;16
	pb	0,17,30	;17
	pb	30,0,-15	;18
	pb	55,20,-1	;19
	pb	63,20,-49	;20
	pb	30,35,-15	;21
	pb	0,-6,50	;22
	jump	.EB0
	ENDC
.A5A	Pointsb	4
	pb	24,5,10	;0
	pb	20,0,20	;1
	pb	-24,5,10	;2
	pb	45,-42,-7	;3
	PointsXb	1
	pb	20,-11,19	;4
	Pointsb	2
	pb	-45,-42,-7	;6
	pb	-20,0,20	;7
	PointsXb	1
	pb	-5,13,5	;8
	Pointsb	4
	pb	-70,20,-45	;10
	pb	-57,20,2	;11
	pb	-33,0,-14	;12
	pb	-33,35,-14	;13
	PointsXb	1
	pb	-5,-8,14	;14
	Pointsb	7
	pb	0,24,7	;16
	pb	0,15,33	;17
	pb	33,0,-14	;18
	pb	57,20,2	;19
	pb	70,20,-45	;20
	pb	33,35,-14	;21
	pb	0,-12,49	;22
	jump	.EB0
	IFNE	SPEED_MODE
.A5_5A	Pointsb	4
	pb	25,5,10	;0
	pb	20,0,20	;1
	pb	-25,5,10	;2
	pb	45,-44,-3	;3
	PointsXb	1
	pb	20,-11,20	;4
	Pointsb	2
	pb	-45,-44,-3	;6
	pb	-20,0,20	;7
	PointsXb	1
	pb	-5,15,7	;8
	Pointsb	4
	pb	-75,20,-40	;10
	pb	-58,20,5	;11
	pb	-36,0,-12	;12
	pb	-36,35,-12	;13
	PointsXb	1
	pb	-5,-6,12	;14
	Pointsb	7
	pb	0,25,11	;16
	pb	0,12,35	;17
	pb	36,0,-13	;18
	pb	58,20,5	;19
	pb	75,20,-40	;20
	pb	36,35,-13	;21
	pb	0,-16,46	;22
	jump	.EB0
	ENDC
.A6A	Pointsb	4
	pb	26,5,11	;0
	pb	20,0,20	;1
	pb	-26,5,11	;2
	pb	45,-46,0	;3
	PointsXb	1
	pb	20,-11,21	;4
	Pointsb	2
	pb	-45,-46,0	;6
	pb	-20,0,20	;7
	PointsXb	1
	pb	-5,17,10	;8
	Pointsb	4
	pb	-80,20,-35	;10
	pb	-59,20,9	;11
	pb	-39,0,-11	;12
	pb	-39,35,-11	;13
	PointsXb	1
	pb	-5,-5,11	;14
	Pointsb	7
	pb	0,27,16	;16
	pb	0,10,37	;17
	pb	39,0,-12	;18
	pb	60,20,9	;19
	pb	80,20,-36	;20
	pb	39,35,-12	;21
	pb	0,-21,44	;22
	jump	.EB0
	IFNE	SPEED_MODE
.A6_5A	Pointsb	4
	pb	27,5,11	;0
	pb	20,0,20	;1
	pb	-27,5,11	;2
	pb	45,-47,4	;3
	PointsXb	1
	pb	20,-11,22	;4
	Pointsb	2
	pb	-45,-47,4	;6
	pb	-20,0,20	;7
	PointsXb	1
	pb	-5,18,13	;8
	Pointsb	4
	pb	-84,20,-29	;10
	pb	-60,20,12	;11
	pb	-41,0,-9	;12
	pb	-41,35,-9	;13
	PointsXb	1
	pb	-5,-3,10	;14
	Pointsb	7
	pb	0,26,21	;16
	pb	0,6,38	;17
	pb	41,0,-10	;18
	pb	60,20,12	;19
	pb	84,20,-30	;20
	pb	41,35,-10	;21
	pb	0,-24,39	;22
	jump	.EB0
	ENDC
.A7A	Pointsb	4
	pb	28,5,12	;0
	pb	20,0,20	;1
	pb	-28,5,12	;2
	pb	45,-49,9	;3
	PointsXb	1
	pb	20,-11,23	;4
	Pointsb	2
	pb	-45,-49,9	;6
	pb	-20,0,20	;7
	PointsXb	1
	pb	-5,20,17	;8
	Pointsb	4
	pb	-89,20,-24	;10
	pb	-61,20,16	;11
	pb	-44,0,-8	;12
	pb	-44,35,-8	;13
	PointsXb	1
	pb	-5,-2,10	;14
	Pointsb	7
	pb	0,26,26	;16
	pb	0,3,40	;17
	pb	44,0,-8	;18
	pb	61,20,16	;19
	pb	89,20,-24	;20
	pb	44,35,-8	;21
	pb	0,-28,35	;22
	jump	.EB0
	IFNE	SPEED_MODE
.A7_5A	Pointsb	4
	pb	28,5,12	;0
	pb	20,0,20	;1
	pb	-28,5,12	;2
	pb	45,-49,13	;3
	PointsXb	1
	pb	20,-10,23	;4
	Pointsb	2
	pb	-45,-49,13	;6
	pb	-20,0,20	;7
	PointsXb	1
	pb	-5,20,20	;8
	Pointsb	4
	pb	-92,20,-17	;10
	pb	-61,20,19	;11
	pb	-46,0,-5	;12
	pb	-46,35,-5	;13
	PointsXb	1
	pb	-5,0,10	;14
	Pointsb	7
	pb	0,24,30	;16
	pb	0,0,40	;17
	pb	46,0,-5	;18
	pb	61,20,19	;19
	pb	92,20,-17	;20
	pb	46,35,-5	;21
	pb	0,-29,30	;22
	jump	.EB0
	ENDC
.A8A	Pointsb	4
	pb	29,5,13	;0
	pb	20,0,20	;1
	pb	-29,5,13	;2
	pb	45,-50,17	;3
	PointsXb	1
	pb	20,-10,24	;4
	Pointsb	2
	pb	-45,-50,17	;6
	pb	-20,0,20	;7
	PointsXb	1
	pb	-5,20,23	;8
	Pointsb	4
	pb	-96,20,-11	;10
	pb	-61,20,23	;11
	pb	-48,0,-3	;12
	pb	-48,35,-3	;13
	PointsXb	1
	pb	-5,2,10	;14
	Pointsb	7
	pb	0,23,34	;16
	pb	0,-3,40	;17
	pb	48,0,-3	;18
	pb	61,20,23	;19
	pb	96,20,-11	;20
	pb	48,35,-3	;21
	pb	0,-31,25	;22
	jump	.EB0
	IFNE	SPEED_MODE
.A8_5A	Pointsb	4
	pb	29,6,10	;0
	pb	20,0,20	;1
	pb	-29,6,10	;2
	pb	45,-49,21	;3
	PointsXb	1
	pb	20,-9,25	;4
	Pointsb	2
	pb	-45,-49,21	;6
	pb	-20,0,20	;7
	PointsXb	1
	pb	-5,18,26	;8
	Pointsb	4
	pb	-96,27,-7	;10
	pb	-59,23,23	;11
	pb	-50,3,-4	;12
	pb	-47,37,-4	;13
	PointsXb	1
	pb	-5,3,10	;14
	Pointsb	7
	pb	0,20,37	;16
	pb	0,-6,38	;17
	pb	50,3,-4	;18
	pb	59,23,23	;19
	pb	96,27,-7	;20
	pb	47,37,-4	;21
	pb	0,-31,19	;22
	jump	.EB0
	ENDC
.A9A	Pointsb	4
	pb	30,7,8	;0
	pb	20,0,20	;1
	pb	-30,7,8	;2
	pb	45,-49,26	;3
	PointsXb	1
	pb	20,-9,26	;4
	Pointsb	2
	pb	-45,-49,26	;6
	pb	-20,0,20	;7
	PointsXb	1
	pb	-5,17,30	;8
	Pointsb	4
	pb	-96,34,-4	;10
	pb	-57,27,23	;11
	pb	-52,6,-5	;12
	pb	-46,40,-5	;13
	PointsXb	1
	pb	-5,5,11	;14
	Pointsb	7
	pb	0,17,41	;16
	pb	0,-10,37	;17
	pb	52,6,-5	;18
	pb	57,27,23	;19
	pb	96,34,-4	;20
	pb	46,40,-5	;21
	pb	0,-31,14	;22
	jump	.EB0
	IFNE	SPEED_MODE
.A9_5A	Pointsb	4
	pb	30,8,5	;0
	pb	20,0,20	;1
	pb	-30,8,5	;2
	pb	45,-48,30	;3
	PointsXb	1
	pb	20,-8,27	;4
	Pointsb	2
	pb	-45,-48,30	;6
	pb	-20,0,20	;7
	PointsXb	1
	pb	-5,15,32	;8
	Pointsb	4
	pb	-94,41,0	;10
	pb	-54,30,23	;11
	pb	-54,9,-5	;12
	pb	-45,43,-5	;13
	PointsXb	1
	pb	-5,6,12	;14
	Pointsb	7
	pb	0,12,43	;16
	pb	0,-12,35	;17
	pb	54,9,-5	;18
	pb	54,30,23	;19
	pb	94,41,0	;20
	pb	45,43,-5	;21
	pb	0,-29,8	;22
	jump	.EB0
	ENDC
.A10A	Pointsb	4
	pb	31,9,3	;0
	pb	20,0,20	;1
	pb	-31,9,3	;2
	pb	45,-48,35	;3
	PointsXb	1
	pb	20,-8,28	;4
	Pointsb	2
	pb	-45,-48,35	;6
	pb	-20,0,20	;7
	PointsXb	1
	pb	-5,13,35	;8
	Pointsb	4
	pb	-93,48,3	;10
	pb	-52,33,23	;11
	pb	-56,13,-6	;12
	pb	-44,46,-6	;13
	PointsXb	1
	pb	-5,8,14	;14
	Pointsb	7
	pb	0,8,46	;16
	pb	0,-15,33	;17
	pb	56,13,-6	;18
	pb	52,33,23	;19
	pb	93,48,3	;20
	pb	44,46,-6	;21
	pb	0,-27,3	;22
	jump	.EB0
	IFNE	SPEED_MODE
.A10_5A	Pointsb	4
	pb	30,10,3	;0
	pb	20,0,20	;1
	pb	-30,10,3	;2
	pb	45,-46,39	;3
	PointsXb	1
	pb	20,-7,28	;4
	Pointsb	2
	pb	-45,-46,39	;6
	pb	-20,0,20	;7
	PointsXb	1
	pb	-5,10,36	;8
	Pointsb	4
	pb	-90,54,9	;10
	pb	-48,35,23	;11
	pb	-58,18,-6	;12
	pb	-43,49,-6	;13
	PointsXb	1
	pb	-5,9,15	;14
	Pointsb	7
	pb	0,3,46	;16
	pb	0,-16,30	;17
	pb	58,18,-6	;18
	pb	48,35,23	;19
	pb	90,55,9	;20
	pb	43,49,-6	;21
	pb	0,-23,-1	;22
	jump	.EB0
	ENDC
.A11A	Pointsb	4
	pb	30,11,3	;0
	pb	20,0,20	;1
	pb	-30,11,3	;2
	pb	45,-45,43	;3
	PointsXb	1
	pb	20,-7,29	;4
	Pointsb	2
	pb	-45,-45,43	;6
	pb	-20,0,20	;7
	PointsXb	1
	pb	-5,7,38	;8
	Pointsb	4
	pb	-87,61,15	;10
	pb	-45,38,23	;11
	pb	-60,23,-6	;12
	pb	-42,53,-6	;13
	PointsXb	1
	pb	-5,10,17	;14
	Pointsb	7
	pb	0,-1,47	;16
	pb	0,-18,27	;17
	pb	60,23,-6	;18
	pb	45,38,23	;19
	pb	87,62,15	;20
	pb	42,53,-6	;21
	pb	0,-20,-5	;22
	jump	.EB0
	IFNE	SPEED_MODE
.A11_5A	Pointsb	4
	pb	29,12,3	;0
	pb	20,0,20	;1
	pb	-29,12,3	;2
	pb	45,-42,46	;3
	PointsXb	1
	pb	20,-6,29	;4
	Pointsb	2
	pb	-45,-42,46	;6
	pb	-20,0,20	;7
	PointsXb	1
	pb	-5,3,39	;8
	Pointsb	4
	pb	-81,66,21	;10
	pb	-42,40,23	;11
	pb	-60,28,-5	;12
	pb	-40,57,-5	;13
	PointsXb	1
	pb	-5,9,18	;14
	Pointsb	7
	pb	0,-5,46	;16
	pb	0,-19,23	;17
	pb	60,28,-5	;18
	pb	42,40,23	;19
	pb	81,67,21	;20
	pb	40,57,-5	;21
	pb	0,-15,-7	;22
	jump	.EB0
	ENDC
.A12A	Pointsb	4
	pb	28,13,3	;0
	pb	20,0,20	;1
	pb	-28,13,3	;2
	pb	45,-40,50	;3
	PointsXb	1
	pb	20,-5,30	;4
	Pointsb	2
	pb	-45,-40,50	;6
	pb	-20,0,20	;7
	PointsXb	1
	pb	-5,0,40	;8
	Pointsb	4
	pb	-75,72,28	;10
	pb	-39,42,23	;11
	pb	-61,34,-4	;12
	pb	-38,61,-4	;13
	PointsXb	1
	pb	-5,9,20	;14
	Pointsb	7
	pb	0,-10,45	;16
	pb	0,-20,20	;17
	pb	61,34,-4	;18
	pb	39,42,23	;19
	pb	75,72,28	;20
	pb	38,61,-4	;21
	pb	0,-10,-10	;22
	jump	.EB0
	IFNE	SPEED_MODE
.A12_5A	Pointsb	4
	pb	26,13,3	;0
	pb	20,0,20	;1
	pb	-26,13,3	;2
	pb	45,-37,53	;3
	PointsXb	1
	pb	20,-4,30	;4
	Pointsb	2
	pb	-45,-37,53	;6
	pb	-20,0,20	;7
	PointsXb	1
	pb	-5,0,40	;8
	Pointsb	4
	pb	-67,75,34	;10
	pb	-35,43,23	;11
	pb	-59,40,-2	;12
	pb	-35,64,-2	;13
	PointsXb	1
	pb	-5,9,20	;14
	Pointsb	7
	pb	0,-10,45	;16
	pb	0,-20,20	;17
	pb	59,40,-2	;18
	pb	35,43,23	;19
	pb	67,75,34	;20
	pb	35,64,-2	;21
	pb	0,-10,-10	;22
	jump	.EB0
	ENDC
.A13A	Pointsb	4
	pb	25,14,3	;0
	pb	20,0,20	;1
	pb	-25,14,3	;2
	pb	45,-34,56	;3
	PointsXb	1
	pb	20,-3,31	;4
	Pointsb	2
	pb	-45,-34,56	;6
	pb	-20,0,20	;7
	PointsXb	1
	pb	-5,0,40	;8
	Pointsb	4
	pb	-60,79,40	;10
	pb	-31,44,23	;11
	pb	-58,46,0	;12
	pb	-32,68,0	;13
	PointsXb	1
	pb	-5,10,20	;14
	Pointsb	7
	pb	0,-10,45	;16
	pb	0,-20,20	;17
	pb	58,46,0	;18
	pb	31,44,23	;19
	pb	60,79,40	;20
	pb	32,68,0	;21
	pb	0,-10,-10	;22
	jump	.EB0
	IFNE	SPEED_MODE
.A13_5A	Pointsb	4
	pb	25,18,3	;0
	pb	20,6,21	;1
	pb	-25,18,3	;2
	pb	45,-31,54	;3
	PointsXb	1
	pb	20,2,32	;4
	Pointsb	2
	pb	-45,-31,54	;6
	pb	-20,6,21	;7
	PointsXb	1
	pb	-5,5,41	;8
	Pointsb	4
	pb	-60,79,40	;10
	pb	-31,45,20	;11
	pb	-58,49,-2	;12
	pb	-32,71,0	;13
	PointsXb	1
	pb	-5,15,21	;14
	Pointsb	7
	pb	0,-4,46	;16
	pb	0,-14,21	;17
	pb	58,49,-2	;18
	pb	31,45,20	;19
	pb	60,79,40	;20
	pb	32,71,0	;21
	pb	0,-4,-8	;22
	jump	.EB0
	ENDC
.A14A	Pointsb	4
	pb	25,22,4	;0
	pb	20,12,22	;1
	pb	-25,22,4	;2
	pb	45,-28,52	;3
	PointsXb	1
	pb	20,7,34	;4
	Pointsb	2
	pb	-45,-28,52	;6
	pb	-20,12,22	;7
	PointsXb	1
	pb	-5,11,42	;8
	Pointsb	4
	pb	-60,79,40	;10
	pb	-31,47,17	;11
	pb	-58,53,-5	;12
	pb	-32,75,-1	;13
	PointsXb	1
	pb	-5,21,22	;14
	Pointsb	7
	pb	0,2,47	;16
	pb	0,-8,22	;17
	pb	58,53,-5	;18
	pb	31,47,17	;19
	pb	60,79,40	;20
	pb	32,75,-1	;21
	pb	0,1,-6	;22
	jump	.EB0
	IFNE	SPEED_MODE
.A14_5A	Pointsb	4
	pb	25,24,4	;0
	pb	20,17,23	;1
	pb	-25,24,4	;2
	pb	45,-21,54	;3
	PointsXb	1
	pb	20,13,35	;4
	Pointsb	2
	pb	-45,-21,54	;6
	pb	-20,17,23	;7
	PointsXb	1
	pb	-5,18,43	;8
	Pointsb	4
	pb	-60,79,40	;10
	pb	-31,48,16	;11
	pb	-58,55,-6	;12
	pb	-32,77,-1	;13
	PointsXb	1
	pb	-5,26,22	;14
	Pointsb	7
	pb	0,10,49	;16
	pb	0,-3,26	;17
	pb	58,55,-6	;18
	pb	31,48,16	;19
	pb	60,79,40	;20
	pb	32,77,-1	;21
	pb	0,2,-3	;22
	jump	.EB0
	ENDC
.A15A	Pointsb	4
	pb	25,27,5	;0
	pb	20,23,25	;1
	pb	-25,27,5	;2
	pb	45,-15,57	;3
	PointsXb	1
	pb	20,19,36	;4
	Pointsb	2
	pb	-45,-15,57	;6
	pb	-20,23,25	;7
	PointsXb	1
	pb	-5,26,45	;8
	Pointsb	4
	pb	-60,79,40	;10
	pb	-31,50,15	;11
	pb	-58,57,-7	;12
	pb	-32,79,-1	;13
	PointsXb	1
	pb	-5,31,23	;14
	Pointsb	7
	pb	0,19,52	;16
	pb	0,2,30	;17
	pb	58,57,-7	;18
	pb	31,50,15	;19
	pb	60,79,40	;20
	pb	32,79,-1	;21
	pb	0,4,-1	;22
	jump	.EB0
	IFNE	SPEED_MODE
.A15_5A	Pointsb	4
	pb	25,24,5	;0
	pb	20,14,23	;1
	pb	-25,24,5	;2
	pb	45,-16,61	;3
	PointsXb	1
	pb	20,12,34	;4
	Pointsb	2
	pb	-45,-16,61	;6
	pb	-20,14,23	;7
	PointsXb	1
	pb	-5,15,43	;8
	Pointsb	4
	pb	-60,79,40	;10
	pb	-31,48,17	;11
	pb	-58,53,-5	;12
	pb	-32,75,-1	;13
	PointsXb	1
	pb	-5,23,22	;14
	Pointsb	7
	pb	0,6,49	;16
	pb	0,-6,25	;17
	pb	58,53,-5	;18
	pb	31,48,17	;19
	pb	60,79,40	;20
	pb	32,75,-1	;21
	pb	0,1,-5	;22
	jump	.EB0
	ENDC
.A16A	Pointsb	4
	pb	25,21,5	;0
	pb	20,5,22	;1
	pb	-25,21,5	;2
	pb	45,-18,66	;3
	PointsXb	1
	pb	20,5,33	;4
	Pointsb	2
	pb	-45,-18,66	;6
	pb	-20,5,22	;7
	PointsXb	1
	pb	-5,5,41	;8
	Pointsb	4
	pb	-60,79,40	;10
	pb	-31,46,20	;11
	pb	-58,50,-3	;12
	pb	-32,71,-1	;13
	PointsXb	1
	pb	-5,15,22	;14
	Pointsb	7
	pb	0,-6,46	;16
	pb	0,-15,20	;17
	pb	58,50,-3	;18
	pb	31,46,20	;19
	pb	60,79,40	;20
	pb	32,71,-1	;21
	pb	0,-2,-9	;22
	jump	.EB0
	IFNE	SPEED_MODE
.A16_5A	Pointsb	4
	pb	25,14,7	;0
	pb	20,-1,24	;1
	pb	-25,14,7	;2
	pb	45,-31,63	;3
	PointsXb	1
	pb	20,-3,35	;4
	Pointsb	2
	pb	-45,-31,63	;6
	pb	-20,-1,24	;7
	PointsXb	1
	pb	-5,-6,42	;8
	Pointsb	4
	pb	-60,79,40	;10
	pb	-31,43,26	;11
	pb	-58,43,3	;12
	pb	-32,64,1	;13
	PointsXb	1
	pb	-5,7,27	;14
	Pointsb	7
	pb	0,-18,43	;16
	pb	0,-19,17	;17
	pb	58,43,3	;18
	pb	31,43,26	;19
	pb	60,79,40	;20
	pb	32,64,1	;21
	pb	0,-1,-6	;22
	jump	.EB0
	ENDC
.A17A	Pointsb	4
	pb	25,8,10	;0
	pb	20,-8,27	;1
	pb	-25,8,10	;2
	pb	45,-44,60	;3
	PointsXb	1
	pb	20,-11,37	;4
	Pointsb	2
	pb	-45,-44,60	;6
	pb	-20,-8,27	;7
	PointsXb	1
	pb	-5,-17,44	;8
	Pointsb	4
	pb	-60,79,40	;10
	pb	-31,41,32	;11
	pb	-58,37,10	;12
	pb	-32,58,4	;13
	PointsXb	1
	pb	-5,0,32	;14
	Pointsb	7
	pb	0,-30,41	;16
	pb	0,-24,15	;17
	pb	58,37,10	;18
	pb	31,41,32	;19
	pb	60,79,40	;20
	pb	32,58,4	;21
	pb	0,0,-4	;22
	jump	.EB0
	IFNE	SPEED_MODE
.A17_5A	Pointsb	4
	pb	25,6,14	;0
	pb	20,-10,31	;1
	pb	-25,6,14	;2
	pb	45,-50,58	;3
	PointsXb	1
	pb	20,-15,40	;4
	Pointsb	2
	pb	-45,-50,58	;6
	pb	-20,-10,31	;7
	PointsXb	1
	pb	-5,-19,47	;8
	Pointsb	4
	pb	-60,79,40	;10
	pb	-31,40,35	;11
	pb	-58,34,14	;12
	pb	-32,55,6	;13
	PointsXb	1
	pb	-5,-2,36	;14
	Pointsb	7
	pb	0,-32,45	;16
	pb	0,-26,19	;17
	pb	58,34,14	;18
	pb	31,40,35	;19
	pb	60,79,40	;20
	pb	32,55,6	;21
	pb	0,-2,0	;22
	jump	.EB0
	ENDC
.A18A	Pointsb	4
	pb	25,4,18	;0
	pb	20,-12,35	;1
	pb	-25,4,18	;2
	pb	45,-56,57	;3
	PointsXb	1
	pb	20,-19,43	;4
	Pointsb	2
	pb	-45,-56,57	;6
	pb	-20,-12,35	;7
	PointsXb	1
	pb	-5,-21,51	;8
	Pointsb	4
	pb	-60,79,40	;10
	pb	-31,40,39	;11
	pb	-58,32,18	;12
	pb	-32,52,8	;13
	PointsXb	1
	pb	-5,-4,40	;14
	Pointsb	7
	pb	0,-34,49	;16
	pb	0,-29,23	;17
	pb	58,32,18	;18
	pb	31,40,39	;19
	pb	60,79,40	;20
	pb	32,52,8	;21
	pb	0,-4,4	;22
	jump	.EB0
	IFNE	SPEED_MODE
.A18_5A	Pointsb	4
	pb	25,1,27	;0
	pb	20,-14,43	;1
	pb	-25,1,27	;2
	pb	45,-60,59	;3
	PointsXb	1
	pb	20,-22,51	;4
	Pointsb	2
	pb	-45,-60,59	;6
	pb	-20,-14,43	;7
	PointsXb	1
	pb	-5,-23,59	;8
	Pointsb	4
	pb	-60,79,40	;10
	pb	-31,41,45	;11
	pb	-58,29,26	;12
	pb	-32,47,13	;13
	PointsXb	1
	pb	-5,-6,48	;14
	Pointsb	7
	pb	0,-36,57	;16
	pb	0,-31,32	;17
	pb	58,29,26	;18
	pb	31,41,45	;19
	pb	60,79,40	;20
	pb	32,47,13	;21
	pb	0,-6,12	;22
	jump	.EB0
	ENDC
.A19A	Pointsb	4
	pb	25,-1,36	;0
	pb	20,-16,52	;1
	pb	-25,-1,36	;2
	pb	45,-65,62	;3
	PointsXb	1
	pb	20,-25,59	;4
	Pointsb	2
	pb	-45,-65,62	;6
	pb	-20,-16,52	;7
	PointsXb	1
	pb	-5,-25,68	;8
	Pointsb	4
	pb	-60,79,40	;10
	pb	-31,42,52	;11
	pb	-58,27,35	;12
	pb	-32,43,19	;13
	PointsXb	1
	pb	-5,-9,57	;14
	Pointsb	7
	pb	0,-38,66	;16
	pb	0,-33,41	;17
	pb	58,27,35	;18
	pb	31,42,52	;19
	pb	60,79,40	;20
	pb	32,43,19	;21
	pb	0,-8,21	;22
.EB0

	EndPoints
boss_b_0_F
	Vizis	33
	Viz	5,6,7,-85,-42,-85	;117
	Viz	7,6,5,85,42,85	;118
	Viz	3,4,1,85,-42,-85	;119
	Viz	4,3,1,-85,42,85	;120
	Viz	1,19,0,0,-114,57	;121
	Viz	0,19,1,0,114,-57	;122
	Viz	18,0,21,109,0,65	;123
	Viz	0,19,21,-65,-81,73	;124
	Viz	2,11,7,0,-114,57	;125
	Viz	7,11,2,0,114,-57	;126
	Viz	13,2,12,-109,0,65	;127
	Viz	13,11,2,65,-81,73	;128
	Viz	2,11,12,70,105,-17	;129
	Viz	12,10,13,-127,0,0	;130
	Viz	10,11,13,50,-112,-35	;131
	Viz	12,11,10,61,103,-43	;132
	Viz	22,14,15,0,106,70	;133
	Viz	17,7,22,87,-87,29	;134
	Viz	7,14,22,59,89,69	;135
	Viz	22,1,17,-87,-87,29	;136
	Viz	22,15,1,-59,89,69	;137
	Viz	18,19,0,-70,105,-17	;138
	Viz	21,20,18,127,0,0	;139
	Viz	21,19,20,-50,-112,-35	;140
	Viz	20,19,18,-61,103,-43	;141
	Viz	8,7,17,79,-79,-60	;142
	Viz	17,1,9,-79,-79,-60	;143
	Viz	8,14,7,65,98,-49	;144
	Viz	1,15,9,-65,98,-49	;145
	Viz	16,8,17,116,-48,-19	;146
	Viz	17,9,16,-116,-48,-19	;147
	Viz	9,8,16,0,57,-114	;148
	Viz	8,9,15,0,114,-57	;149
	BSPInit	boss_b_0_EBSP
	BSP	12,boss_b_0_f1,.bsp2
	BSP	13,boss_b_0_f3,.bsp4
	BSPE	boss_b_0_f5
.bsp4	BSP	6,boss_b_0_f6,.bsp7
	BSP	21,boss_b_0_f8,.bsp9
	BSPE	boss_b_0_f10
.bsp9	BSP	24,boss_b_0_f11,.bsp12
	BSPEND
.bsp12	BSPE	boss_b_0_f13
.bsp7	BSPE	boss_b_0_f14
.bsp2	BSP	15,boss_b_0_f15,.bsp16
	BSPE	boss_b_0_f17
.bsp16	BSP	27,boss_b_0_f18,.bsp19
	BSPEND
.bsp19	BSPE	boss_b_0_f20

boss_b_0_f1	Faces
	Face3	14,12,70,105,-17,2,11,12
	FendQ
boss_b_0_f3	Faces
	Face3	21,13,-127,0,0,12,10,13
	FendQ
boss_b_0_f5	Faces
	Face3	16,11,65,-81,73,13,11,2
	Face3	25,14,50,-112,-35,10,11,13
	FendQ
boss_b_0_f6	Faces
	Face3	12,6,109,0,65,18,0,21
	FendQ
boss_b_0_f8	Faces
	Face3	18,21,-70,105,-17,18,19,0
	FendQ
boss_b_0_f10	Faces
	Face3	14,7,-65,-81,73,0,19,21
	Face3	21,22,127,0,0,21,20,18
	Face3	23,23,-50,-112,-35,21,19,20
	FendQ
boss_b_0_f11	Faces
	Face3	25,24,-61,103,-43,20,19,18
	FendQ
boss_b_0_f13	Faces
	Face3	16,2,85,-42,-85,3,4,1
	Face3	6,5,0,114,-57,0,19,1
	Face3	20,3,-85,42,85,4,3,1
	Face3	6,4,0,-114,57,1,19,0
	FendQ
boss_b_0_f14	Faces
	Face3	12,10,-109,0,65,13,2,12
	Face3	27,26,-79,-79,-60,17,1,9
	Face3	16,29,116,-48,-19,16,8,17
	Face3	20,30,-116,-48,-19,17,9,16
	Face3	23,17,87,-87,29,17,7,22
	Face3	25,19,-87,-87,29,22,1,17
	Face3	20,20,-59,89,69,22,15,1
	Face3	23,28,-65,98,-49,1,15,9
	FendQ
boss_b_0_f15	Faces
	Face3	23,15,61,103,-43,12,11,10
	FendQ
boss_b_0_f17	Faces
	Face3	30,16,0,106,70,22,14,15
	Face3	16,18,59,89,69,7,14,22
	Face3	25,25,79,-79,-60,8,7,17
	Face3	44,31,0,57,-114,9,8,16
	FendQ
boss_b_0_f18	Faces
	Face3	21,27,65,98,-49,8,14,7
	FendQ
boss_b_0_f20	Faces
	Face3	14,0,-85,-42,-85,5,6,7
	Face3	6,9,0,114,-57,7,11,2
	Face4	14,32,0,114,-57,8,9,15,14
	Face3	12,1,85,42,85,7,6,5
	Face3	6,8,0,-114,57,2,11,7
	FendQ
boss_b_0_EBSP
	EndShape

	endc

	end_shapes
