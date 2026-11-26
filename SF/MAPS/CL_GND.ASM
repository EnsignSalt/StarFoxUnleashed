; AUTOGUIDE: Stage Clear Script - Planetary Ground Clear - Corneria and planetary surface victory formation cinematic.
cl_ground
	IFNE	MSU1
	mapmsufade
	ENDC
	setbgm	$f1

	mapwait	2000
	setbgm	bgm_fanfare
	IFNE	MSU1
	mapmsuplay	clearband,repeat
	ENDC

	mapwait	3000

	setvar.n	stageclear,1
	mapCLplayermode	ClearDemo

;	-- 30fps Speed Mode Scaling (15fps baseline: 2x frame timers, 50% per-frame velocity) --
	IFEQ	SPEED_MODE
friendwait	=	medpspeed*30
	ELSEIF
friendwait	=	medpspeed*60
	ENDC

	mapmsg	1
	mapwait	friendwait

	mapjmpfrienddead	frog,.nf
	clfriendmsg	frog
	mapobj	friendwait,0500,-50,50,myship_4,clshipGNDb_Istrat
.nf
	mapjmpfrienddead	bunny,.nb
	clfriendmsg	bunny
	mapobj	friendwait,-500,-50,50,myship_4,clshipGNDa_Istrat
.nb
	mapjmpfrienddead	cock,.nc
	clfriendmsg	cock
	mapobj	friendwait,0000,-500,-300,myship_4,clshipGNDc_Istrat
.nc

	mapwait	3800

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
