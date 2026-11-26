; AUTOGUIDE: Demo End Script - End of Demo / Attract Mode - Returns to title screen following attract mode playback.
; start in tunnel
;	initlevel	1_7a

	mapplayermode	toCslow	

	mapjsr	Ltunnelexit
	mapwait	200
	setbg	1_7a
	IFEQ	SPEED_MODE
	mapwait	medpspeed*3
	ELSEIF
	mapwait	medpspeed*6
	ENDC
	initbg

	mapobj	0000,0,space_viewCY+64,2000,door_l,lseqdoor1_Istrat
	setalvar	rotx,0
	mapobj	0000,0000,space_viewCy,(100<<4)+2000,last_b_2,nocoll_Istrat
	setalvar	rotx,deg90
	mapobj	0000,0,space_viewCY,((148<<4)-30)+2000,last_b_3,nocollanim0_Istrat
	setalvar	rotx,-deg90


	mapwait		1800+500

	mapplayermode	outofLB2a
	mapwait		500

	setbg	1_7b
	initbg

	start_65816
	jsl		clearmap_l
	end_65816	


; outside view of player's ship escaping.

	mapobj	0000,0000,0000,1000,last_b_0,gnd_Istrat
	setvarobj	mapvar1
	setalvar	roty,deg180
	mapobj	0000,0000,-48<<4,1000,last_b_3,lseqdoor2_Istrat
	
	mapobj	0000,0000,0,1000,my_demoS,pshipoutoflb1_Istrat
	mapobj	0000,-50,-1500,1100,nullshape,viewoutoflb1_Istrat



	mapwait	9500-(medpspeed*6)
	mapmsg	1

	IFEQ	SPEED_MODE
friendwait	=	medpspeed*30
	ELSEIF
friendwait	=	medpspeed*60
	ENDC

fdeadmes_cock	=	21
fdeadmes_bunny	=	41
fdeadmes_frog	=	60


	mapjmpfrienddead	frog,.nf1
	mapwait	friendwait
	mapmsg	46
	mapgoto	.df
.nf1	
.df
	mapjmpfrienddead	bunny,.nb1
	mapwait	friendwait
	mapmsg	26
	mapgoto	.dr
.nb1	
.dr
	mapjmpfrienddead	cock,.nc1
	mapwait	friendwait
	mapmsg	6
	mapgoto	.dc
.nc1
.dc


.endwait
	mapif	chkstratdone1,.endcont
	mapwait	1
   	mapgoto	.endwait
.endcont

	setfadedown
	mapwaitfade

	start_65816
	jsl		clearmap_l
	end_65816

	meters_off		trans

; space end demo.

	setbg	1_7c
	initbg

	IFEQ	SPEED_MODE
bwait_fox	=	45
bwait_cock	=	10
bwait_frog	=	20
bwait_bunny	=	30
	ELSEIF
bwait_fox	=	90
bwait_cock	=	20
bwait_frog	=	40
bwait_bunny	=	60
	ENDC

	mapobj	0000,0000,space_viewcy,0000,my_demo,pshipoutofLB3_Istrat
	setalvar	sbyte2,bwait_fox
	mapobj	0000,0000,space_viewcy,5000,nullshape,viewoutofLB3_Istrat

	mapjmpfrienddead	cock,.nc,nowait
	mapobj	0000,0000,space_viewcy-100,0000,my_demo,shipoutofLB3_Istrat
	setalvar.w	sword1,0
	setalvar.w	sword2,-100
	setalvar.w	ptr,600
	setalvar	sbyte2,bwait_cock
.nc
	mapjmpfrienddead	frog,.nf,nowait
	mapobj	0000,70,space_viewcy+70,200,my_demo,shipoutofLB3_Istrat
	setalvar	rotz,deg45
	setalvar.w	sword1,-100
	setalvar.w	sword2,50
	setalvar.w	ptr,400
	setalvar	sbyte2,bwait_frog
.nf
	mapjmpfrienddead	bunny,.nb,nowait
	mapobj	0000,-70,space_viewcy+70,400,my_demo,shipoutofLB3_Istrat
	setalvar	rotz,-deg45
	setalvar.w	sword1,100
	setalvar.w	sword2,75
	setalvar.w	ptr,200
	setalvar	sbyte2,bwait_bunny
.nb
	mapwait	1000

	setfadeup
	mapwaitfade


.endwait1	mapif	chkstratdone1,.endcont1
	mapwait	1
   	mapgoto	.endwait1
.endcont1

	setvar.n	levelfinished,6

.lp	mapwait	30000
	mapgoto	.lp


