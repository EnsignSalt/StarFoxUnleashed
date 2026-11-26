; AUTOGUIDE: Stage Clear Script - Corneria Ocean Clear - Low-altitude ocean flyby over Planet Corneria.
cl_earth
	mapmother	0,0,0,3000,mother1,mother1_istrat,mother_CLasteroids
	mapplayeroutview

	IFNE	MSU1
	mapmsufade
	mapwait	2000
	ENDC
	setbgm	$f1
	
	mapCLplayermode	ClearEarth
	IFNE	MSU1
	mapmsuplay	clearorch,repeat
	ENDC
	setbgm	bgm_fanfare
	mapwait	3300


;	-- 30fps Speed Mode Scaling (15fps baseline: 2x frame timers, 50% per-frame velocity) --
	IFEQ	SPEED_MODE
friendwait	=	medpspeed*30
	ELSEIF
friendwait	=	medpspeed*60
	ENDC

	setvar.n	stageclear,1
	mapmsg	1
	mapwait	friendwait


	mapjmpfrienddead	frog,.nf
	mapobj	friendwait,02000,-50,50,myship_4,clshipEARTHb_Istrat
	clfriendmsg	frog
.nf
	mapjmpfrienddead	bunny,.nb
	mapobj	friendwait,-2000,-50,50,myship_4,clshipEARTHa_Istrat
	clfriendmsg	bunny
.nb
	mapjmpfrienddead	cock,.nc
	mapobj	friendwait,00000,1000,-700,myship_4,clshipEARTHc_Istrat
	clfriendmsg	cock
.nc


	mapwait	5000

.sdloop	mapif	chkstagedone,.sdcont
	mapgoto	.sdloop
.sdcont

	setvar.b	clb2,0
	setvar.n	stageclear,0
	printlevelfin
.eswait	mapwait		1
	IFEQ	SPEED_MODE
	maploop		.eswait,100
	ELSEIF
	maploop		.eswait,200
	ENDC
	mapendwipe	roundwipefill,90*medpspeed
	maprts



