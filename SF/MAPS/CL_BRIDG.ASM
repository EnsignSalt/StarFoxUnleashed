; AUTOGUIDE: Stage Clear Script - Orbital Bridge Clear - Space colony bridge flyby victory cinematic.
cl_bridge
	mapplayeroutview

	IFNE	MSU1
	mapmsufade
	ENDC
	setbgm	$f1
	mapwait	2200	; 700
	
	mapCLplayermode	ClearBridge
	IFNE	MSU1
	mapmsuplay	clearband,repeat
	ENDC
	setbgm	bgm_fanfare
	mapwait	2900


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
	mapobj	friendwait,-1000,-300,50,myship_4,clshipBRIDGEb_Istrat
	clfriendmsg	frog
.nf

	mapjmpfrienddead	bunny,.nb
	mapobj	friendwait,1000,-300,50,myship_4,clshipBRIDGEa_Istrat
	clfriendmsg	bunny
.nb

	mapjmpfrienddead	cock,.nc
	mapobj	friendwait,00000,0,-2000,myship_4,clshipBRIDGEc_Istrat
	clfriendmsg	cock
.nc


	mapwait	5000
	setvar.b	clb2,0
	setvar.n	stageclear,0
	printlevelfin	
.eswait	mapwait		1
	IFEQ	SPEED_MODE
	maploop		.eswait,100
	ELSEIF
	maploop		.eswait,200
	ENDC
	mapendwipe	roundwipefill,32*medpspeed
	maprts










