;***************************************************************************
;*                                                                         *
;*                               Star Fox                                  *
;*                              -----------                                *
;*                                                                         *
;*                           SuperNES version.                             *
;*                                                                         *
;*                                                                         *
;*                           Argonaut Software.      		               *
;*                                                                         *
;*_________________________________________________________________________*
;*                                                                         *
;*   File: GCSTRATS.ASM                                                    *
;*                                                                         *
;*                                                                         *
;*_________________________________________________________________________*
;*                                                                         *
;*  Descr: GILES CLEAR DEMO STRATS.                                        *
;*                                                                         *
;*                                                                         *
;*_________________________________________________________________________*
;*                                                                         *
;*   Date: 29/7/92                                                         *
;*                                                                         *
;*                                                                         *
;*_________________________________________________________________________*
;*                                                                         *
;* Author:								                                   *
;*                                                                         *
;*		Giles Goddard.      				                               *
;*                                                                         *
;***************************************************************************

; --- Stage Clear Wingman Formation Timers (Synchronized to fanfare music crescendo at ~9.0s) ---
	IFEQ	SPEED_MODE
frogwait	=	30
bunnywait	=	60
cockwait	=	90
clgndwait	=	110
cl_warp_btime	equ	430
	ELSEIF
frogwait	=	60
bunnywait	=	120
cockwait	=	180
clgndwait	=	220
cl_warp_btime	equ	860
	ENDC


	shorta
	longi

	strats_start

	incpublics	EXT\gcstrats.ext	

;*****************************************************************************
flyinleft_srou
	s_jmp_alsflag		x,sflag1,.slow
	s_jmp_alvarLESS		W,x,al_worldx,#-30,.nright
	IFEQ	SPEED_MODE
	s_add_alvar		B,x,al_rotz,#2
	ELSEIF
	s_add_alvar		W,x,al_sword2,#$0100
	ENDC
	s_jmp_notdelay		1,.nright
	s_jmp_alvarEQ		W,x,al_vx,#-5,.max
	s_sub_alvar		W,x,al_vx,#1
	s_bra			.nright
.max	s_set_alsflag		x,sflag1
.slow	s_jmp_alvarZERO		W,x,al_vx,.nright
	s_jmp_notdelay		3,.nright
	s_add_alvar		W,x,al_vx,#1
.nright
	s_jmp			flyin_addx

flyinright_srou
	s_jmp_alsflag		x,sflag1,.slow
	s_jmp_alvarMORE		W,x,al_worldx,#30,.nright
	IFEQ	SPEED_MODE
	s_sub_alvar		B,x,al_rotz,#2
	ELSEIF
	s_sub_alvar		W,x,al_sword2,#$0100
	ENDC
	s_jmp_notdelay		1,.nright
	s_jmp_alvarEQ		W,x,al_vx,#5,.max
	s_add_alvar		W,x,al_vx,#1
	s_bra			.nright
.max	s_set_alsflag		x,sflag1
.slow	s_jmp_alvarZERO		W,x,al_vx,.nright
	s_jmp_notdelay		3,.nright
	s_sub_alvar		W,x,al_vx,#1
.nright
; Shared tail for flyinleft_srou / flyinright_srou: keep al_vx in 15fps units and apply rounded 0.5x step at 30fps.
flyin_addx
	IFEQ	SPEED_MODE
	s_add_alvars		W,x,al_worldx,x,al_vx
	ELSEIF
	lda		gameframe
	lsr		a
	a16
	lda.w		al_vx,x
	adc		#0
	bpl		.pos
	sec
	ror		a
	bra		.addx
.pos	lsr		a
.addx	clc
	adc.w		al_worldx,x
	sta.w		al_worldx,x
	a8
	ENDC
	rts

	IFNE	SPEED_MODE
; Shared 8.8 fixed-point al_rotz decay for fly-in clear formations:
; step al_sword2 toward 0 at 0.5 units/frame (= 1/frame @ 15fps) and write rounded high byte to al_rotz.
flyin_rotz_srou
	a16
	lda.w		al_sword2,x
	beq		.rz_zero
	bpl		.rz_pos
	clc
	adc		#$0080
	bmi		.rz_store
.rz_zero_st
	lda		#0
.rz_store
	sta.w		al_sword2,x
	clc
	adc		#$0080
	bra		.rz_zero
.rz_pos
	sec
	sbc		#$0080
	bpl		.rz_store
	bra		.rz_zero_st
.rz_zero
	xba
	a8
	sta.w		al_rotz,x
	rts
	ENDC


;*****************************************************************************
clshipWARPa_Istrat
	s_start_strat
	s_set_alsflag		x,shadow
	s_set_strat		x,clshipWARPa_strat
	s_setnoremove_behind	x
;	-- 30fps Speed Mode Scaling (15fps baseline: 2x frame timers, 50% per-frame velocity) --
	IFEQ	SPEED_MODE
	s_set_alvar		W,x,al_sword1,#cl_warp_btime-bunnywait-5
 	s_set_alvar		B,x,al_sbyte2,#20  	; time until remove.
	ELSEIF
	s_set_alvar		W,x,al_sword1,#cl_warp_btime-bunnywait-10
 	s_set_alvar		B,x,al_sbyte2,#40  	; time until remove.
	s_set_alvar		W,x,al_sword2,#-deg90*256
	ENDC
	s_set_alvar		W,x,al_vx,#10 
	s_set_alvar		B,x,al_rotz,#-deg90	
clshipWARPa_strat
	s_start_strat

	jsr			flyinleft_srou

	s_set_var		W,svar_word2,#100	; Z
	s_set_var		W,svar_word3,#-20	; Y
	s_jmp			clshipWARP_cont	

	


clshipWARPb_Istrat
	s_start_strat
	s_set_alsflag		x,shadow
	s_set_strat		x,clshipWARPb_strat
	s_setnoremove_behind	x
;	-- 30fps Speed Mode Scaling (15fps baseline: 2x frame timers, 50% per-frame velocity) --
	IFEQ	SPEED_MODE
	s_set_alvar		W,x,al_sword1,#cl_warp_btime-frogwait-16
 	s_set_alvar		B,x,al_sbyte2,#20
	ELSEIF
	s_set_alvar		W,x,al_sword1,#cl_warp_btime-frogwait-32
 	s_set_alvar		B,x,al_sbyte2,#40
	s_set_alvar		W,x,al_sword2,#deg90*256
	ENDC
	s_set_alvar		W,x,al_vx,#-10 
	s_set_alvar		B,x,al_rotz,#deg90	
clshipWARPb_strat
	s_start_strat

	jsr			flyinright_srou

	s_set_var		W,svar_word2,#200	; Z
	s_set_var		W,svar_word3,#-20	; Y
	s_jmp			clshipWARP_cont	

clshipWARPc_Istrat
	s_start_strat
	s_set_alsflag		x,shadow
	s_set_strat		x,clshipWARPc_strat
	s_setnoremove_behind	x
;	-- 30fps Speed Mode Scaling (15fps baseline: 2x frame timers, 50% per-frame velocity) --
	IFEQ	SPEED_MODE
	s_set_alvar		W,x,al_sword1,#cl_warp_btime-cockwait-27
 	s_set_alvar		B,x,al_sbyte2,#20
	ELSEIF
	s_set_alvar		W,x,al_sword1,#cl_warp_btime-cockwait-54
 	s_set_alvar		B,x,al_sbyte2,#40
	s_set_alvar		W,x,al_sword2,#0
	ENDC
clshipWARPc_strat
	s_start_strat
	IFEQ	SPEED_MODE
	s_achase_alvar		W,x,al_worldx,#0,4	  
	ELSEIF
	s_achase_alvar		W,x,al_worldx,#0,5
	ENDC
	s_set_var		W,svar_word2,#300	; Z
	s_set_var		W,svar_word3,#-30	; Y
	s_jmp			clshipWARP_cont	



clshipWARP_cont
	s_jmp_alvarNE		W,x,al_sword1,#1,.nbs
;	trigse			$32		; BOOST SOUND.
.nbs
	s_beqdec_alvar		W,x,al_sword1,clshipboost_Istrat
	s_set_objtobeplayer	y

	s_copy_alvar2var.w	W,y,svar_word1,al_worldz
	s_add_var		W,svar_word1,svar_word2
	IFEQ	SPEED_MODE
	s_achase_alvar		W,x,al_worldz,svar_word1,4

	s_copy_alvar2var.w	W,y,svar_word1,al_worldy
	s_add_var		W,svar_word1,svar_word3
	s_achase_alvar		W,x,al_worldy,svar_word1,4

;	s_achase_alvar2alvar	B,x,al_rotz,y,al_rotz,5
	s_achase_alvar		B,x,al_rotz,#0,5

	s_achase_alvar2alvar	B,x,al_rotx,y,al_rotx,5
	ELSEIF
	s_achase_alvar		W,x,al_worldz,svar_word1,5

	s_copy_alvar2var.w	W,y,svar_word1,al_worldy
	s_add_var		W,svar_word1,svar_word3
	s_achase_alvar		W,x,al_worldy,svar_word1,5

	jsr			flyin_rotz_srou

	s_achase_alvar2alvar	B,x,al_rotx,y,al_rotx,6
	ENDC

	s_add_playerZ		x	
	s_add_alvar		W,x,al_worldz,psvar_word2
	s_end_strat


;*****************************************************************************
; AUTOGUIDE: Peppy Hare Formation Entry - Peppy enters from the left, delivers stage clear dialogue, and locks into wingman position.
clshipGNDa_Istrat
	s_start_strat
	s_set_alsflag		x,shadow
	s_set_strat		x,clshipGNDa_strat
	s_set_alvar		B,x,al_rotz,#-deg90
	s_setnoremove_behind	x
;	-- 30fps Speed Mode Scaling (15fps baseline: 2x frame timers, 50% per-frame velocity) --
	IFEQ	SPEED_MODE
	s_set_alvar		W,x,al_sword1,#clgndwait+80-bunnywait
	ELSEIF
	s_set_alvar		W,x,al_sword1,#clgndwait+160-bunnywait
	ENDC

clshipGNDa_strat
	s_start_strat
	s_achase_alvar		W,x,al_worldx,#-50,4	  
	s_set_var		W,svar_word2,#-200	; Z
	s_set_var		W,svar_word3,#20	; Y
	s_jmp			clshipGND_cont	

; AUTOGUIDE: Slippy Toad Formation Entry - Slippy enters from the right, celebrates mission victory, and takes wingman position.
clshipGNDb_Istrat
	s_start_strat
	s_set_alsflag		x,shadow
	s_set_strat		x,clshipGNDb_strat
	s_set_alvar		B,x,al_rotz,#deg90
	s_setnoremove_behind	x
;	-- 30fps Speed Mode Scaling (15fps baseline: 2x frame timers, 50% per-frame velocity) --
	IFEQ	SPEED_MODE
	s_set_alvar		W,x,al_sword1,#clgndwait+90-frogwait
	ELSEIF
	s_set_alvar		W,x,al_sword1,#clgndwait+180-frogwait
	ENDC
clshipGNDb_strat
	s_start_strat
	s_achase_alvar		W,x,al_worldx,#50,4	  
	s_set_var		W,svar_word2,#-100	; Z
	s_set_var		W,svar_word3,#40	; Y
	s_jmp			clshipGND_cont	

; AUTOGUIDE: Falco Lombardi Formation Entry - Falco dives into formation, confirms sector clear, and takes lead flank.
clshipGNDc_Istrat
	s_start_strat
	s_set_alsflag		x,shadow
	s_set_strat		x,clshipGNDc_strat
	s_setnoremove_behind	x
;	-- 30fps Speed Mode Scaling (15fps baseline: 2x frame timers, 50% per-frame velocity) --
	IFEQ	SPEED_MODE
	s_set_alvar		W,x,al_sword1,#clgndwait+100-cockwait
	ELSEIF
	s_set_alvar		W,x,al_sword1,#clgndwait+200-cockwait
	ENDC
clshipGNDc_strat
	s_start_strat
	s_achase_alvar		W,x,al_worldx,#0,4	  
	s_set_var		W,svar_word2,#-300	; Z
	s_set_var		W,svar_word3,#50	; Y
	s_jmp			clshipGND_cont	

clshipGND_cont
	s_beqdec_alvar		W,x,al_sword1,clshipboost_Istrat
	s_set_objtobeplayer	y

	s_copy_alvar2var.w	W,y,svar_word1,al_worldz
	s_add_var		W,svar_word1,svar_word2
	s_achase_alvar		W,x,al_worldz,svar_word1,3

	s_copy_alvar2var.w	W,y,svar_word1,al_worldy
	s_add_var		W,svar_word1,svar_word3
	s_achase_alvar		W,x,al_worldy,svar_word1,2

	s_jmp_notdelay		1,.zd
	s_achase_alvar2alvar	B,x,al_rotz,y,al_rotz,5
.zd

	s_jmp_notdelay		2,.nxc
	s_achase_alvar2alvar	B,x,al_rotx,y,al_rotx,5
.nxc

	s_add_playerZ		x	
	s_end_strat



;*****************************************************************************

; AUTOGUIDE: Star Fox Team Boost Crescendo - All four Arwings engage afterburners in tight V-formation as the victory fanfare peaks.
clshipboost_Istrat
	s_start_strat
	trigse	$32
clshipboostnosnd_Istrat
	s_start_strat
	s_set_strat		x,clshipboost_strat
	s_set_vartobeobj	boostobj,x
	boost_sprite
	IFEQ	SPEED_MODE
	s_set_speed		x,#120
	ELSEIF
	s_set_speed		x,#60
	ENDC
clshipboost_strat
	s_start_strat

	s_beqdec_alvar		B,x,al_sbyte2,.nrem
	s_jmp_alvarNE		B,x,al_sbyte2,#1,.nrem
	s_remove_obj		x
	s_end_strat
.nrem
	s_gen_3dvecs		x,al_roty,al_rotx,al_vel
	s_add_vecs2pos		x
	s_add_alvar		W,x,al_worldz,psvar_word2
	s_end_strat


;*****************************************************************************
clshipEARTHa_Istrat
	s_start_strat	
	s_set_alsflag		x,sflag1
;	-- 30fps Speed Mode Scaling (15fps baseline: 2x frame timers, 50% per-frame velocity) --
	IFEQ	SPEED_MODE
	s_set_alvar		B,x,al_sbyte1,#10
	ELSEIF
	s_set_alvar		B,x,al_sbyte1,#20
	ENDC
	s_set_alsflag		x,shadow
	s_set_strat		x,clshipEARTHa_strat
	s_set_alvar		B,x,al_rotz,#-deg90
	s_setnoremove_behind	x
	s_set_alvar2rnd	x,al_sbyte3,#15
	s_set_alvar2rnd	x,al_sbyte4,#7

clshipEARTHa_strat
	s_start_strat
	s_achase_alvar		W,x,al_worldx,#-50,4	  
	s_set_var		W,svar_word2,#100
	s_set_var		W,svar_word3,#20
	jsl		floatCLship2_l
	s_jmp			clship_cont	


clshipEARTHb_Istrat
	s_start_strat	
	s_set_alsflag		x,sflag1
;	-- 30fps Speed Mode Scaling (15fps baseline: 2x frame timers, 50% per-frame velocity) --
	IFEQ	SPEED_MODE
	s_set_alvar		B,x,al_sbyte1,#20
	ELSEIF
	s_set_alvar		B,x,al_sbyte1,#40
	ENDC
	s_set_alsflag		x,shadow
	s_set_strat		x,clshipEARTHb_strat
	s_set_alvar		B,x,al_rotz,#deg90+deg45
	s_setnoremove_behind	x
	s_set_alvar2rnd	x,al_sbyte3,#15
	s_set_alvar2rnd	x,al_sbyte4,#7

clshipEARTHb_strat
	s_start_strat
	s_achase_alvar		W,x,al_worldx,#50,4	  
	s_set_var		W,svar_word2,#200
	s_set_var		W,svar_word3,#50
	jsl		floatCLship2_l
	s_jmp			clship_cont	



clshipEARTHc_Istrat
	s_start_strat	
	s_set_alsflag		x,sflag1
;	-- 30fps Speed Mode Scaling (15fps baseline: 2x frame timers, 50% per-frame velocity) --
	IFEQ	SPEED_MODE
	s_set_alvar		B,x,al_sbyte1,#30
	ELSEIF
	s_set_alvar		B,x,al_sbyte1,#60
	ENDC
	s_set_alsflag		x,shadow
	s_set_strat		x,clshipEARTHc_strat
	s_setnoremove_behind	x
	s_set_alvar2rnd	x,al_sbyte3,#15
	s_set_alvar2rnd	x,al_sbyte4,#7

clshipEARTHc_strat
	s_start_strat
	s_achase_alvar		W,x,al_worldx,#0,4	  
	s_set_var		W,svar_word2,#300
	s_set_var		W,svar_word3,#50
	jsl		floatCLship2_l
	s_jmp			clship_cont	

;*****************************************************************************
clshipSHIPa_Istrat
	s_start_strat	
	s_set_alsflag		x,sflag1
;	-- 30fps Speed Mode Scaling (15fps baseline: 2x frame timers, 50% per-frame velocity) --
	IFEQ	SPEED_MODE
	s_set_alvar		B,x,al_sbyte1,#10
	ELSEIF
	s_set_alvar		B,x,al_sbyte1,#20
	ENDC
clship1_Istrat
	s_start_strat
	s_set_alsflag		x,shadow
	s_set_strat		x,clship1_strat
	s_set_alvar		B,x,al_rotz,#-deg90
	s_setnoremove_behind	x
clship1_strat
	s_start_strat
	IFEQ	SPEED_MODE
	s_achase_alvar		W,x,al_worldx,#-50,4
	ELSEIF
	s_achase_alvar		W,x,al_worldx,#-50,5
	ENDC	  
	s_set_var		W,svar_word2,#100
	s_set_var		W,svar_word3,#20
	s_jmp			clship_cont	

clshipSHIPb_Istrat
	s_start_strat	
	s_set_alsflag		x,sflag1
;	-- 30fps Speed Mode Scaling (15fps baseline: 2x frame timers, 50% per-frame velocity) --
	IFEQ	SPEED_MODE
	s_set_alvar		B,x,al_sbyte1,#20
	ELSEIF
	s_set_alvar		B,x,al_sbyte1,#40
	ENDC
clship2_Istrat
	s_start_strat
	s_set_alsflag		x,shadow
	s_set_strat		x,clship2_strat
	s_set_alvar		B,x,al_rotz,#deg90
	s_setnoremove_behind	x
clship2_strat
	s_start_strat
	IFEQ	SPEED_MODE
	s_achase_alvar		W,x,al_worldx,#50,4
	ELSEIF
	s_achase_alvar		W,x,al_worldx,#50,5
	ENDC	  
	s_set_var		W,svar_word2,#200
	s_set_var		W,svar_word3,#40
	s_jmp			clship_cont	



clshipSHIPc_Istrat
	s_start_strat	
	s_set_alsflag		x,sflag1
;	-- 30fps Speed Mode Scaling (15fps baseline: 2x frame timers, 50% per-frame velocity) --
	IFEQ	SPEED_MODE
	s_set_alvar		B,x,al_sbyte1,#30
	ELSEIF
	s_set_alvar		B,x,al_sbyte1,#60
	ENDC
clship3_Istrat
	s_start_strat
	s_set_alsflag		x,shadow
	s_set_strat		x,clship3_strat
	s_setnoremove_behind	x
clship3_strat
	s_start_strat
	IFEQ	SPEED_MODE
	s_achase_alvar		W,x,al_worldx,#0,4
	ELSEIF
	s_achase_alvar		W,x,al_worldx,#0,5
	ENDC	  
	s_set_var		W,svar_word2,#300
	s_set_var		W,svar_word3,#50
	s_jmp			clship_cont	




clship_cont

	a16
	lda		al_worldz,x
	sec
	sbc		viewposZ
	bpl		.nneg
	nega
.nneg
	cmp		#4000
	bmi		.nrem
	a8
	s_remove_obj	x	
.nrem
	a8


	s_set_objtobeplayer	y



	s_jmpnot_alsflag	x,sflag1,.nspace
	s_jmpnot_alsflag	y,sflag4,.nspace

	s_decbne_alvar		B,x,al_sbyte1,.nplayerchase
	s_set_alvar		B,x,al_sbyte1,#1
	IFEQ	SPEED_MODE
	s_add_alvar		W,x,al_worldz,#100
	s_add_alvar		W,x,al_worldy,#-10
	ELSEIF
	s_add_alvar		W,x,al_worldz,#50
	s_add_alvar		W,x,al_worldy,#-5
	ENDC
	s_jmp_alsflag		x,sflag2,.nplayerchase
	s_set_alsflag		x,sflag2
	s_set_vartobeobj	boostobj,x
	boost_sprite
	trigse	$32
	s_brl			.nplayerchase
.nspace



	s_copy_alvar2var.w	W,y,svar_word1,al_worldz
	s_sub_var		W,svar_word1,svar_word2
	IFEQ	SPEED_MODE
	s_achase_alvar		W,x,al_worldz,svar_word1,4

	s_copy_alvar2var.w	W,y,svar_word1,al_worldy
	s_add_var		W,svar_word1,svar_word3
	s_achase_alvar		W,x,al_worldy,svar_word1,4
	ELSEIF
	s_achase_alvar		W,x,al_worldz,svar_word1,5

	s_copy_alvar2var.w	W,y,svar_word1,al_worldy
	s_add_var		W,svar_word1,svar_word3
	s_achase_alvar		W,x,al_worldy,svar_word1,5
	ENDC

	s_jmp_notdelay		1,.zd
	s_achase_alvar2alvar	B,x,al_rotz,y,al_rotz,4
.zd

	s_jmp_notdelay		2,.nxc
	s_achase_alvar2alvar	B,x,al_rotx,y,al_rotx,5
.nxc
.nplayerchase
	s_add_playerZ		x	
	s_end_strat





;*****************************************************************************
clshipTURNa_Istrat
	s_start_strat
	s_set_alsflag		x,shadow
	s_set_strat		x,clshipTURNa_strat
	s_setnoremove_behind	x
	s_set_alvar		W,x,al_vx,#10 
	s_set_alvar		B,x,al_rotz,#-deg90	
;	-- 30fps Speed Mode Scaling (15fps baseline: 2x frame timers, 50% per-frame velocity) --
	IFEQ	SPEED_MODE
	s_set_alvar		B,x,al_sword1,#100+130+10-bunnywait
	ELSEIF
	s_set_alvar		W,x,al_sword1,#200+260+20-bunnywait
	s_set_alvar		W,x,al_sword2,#-deg90*256
	ENDC
	s_set_alvar		B,x,al_sbyte1,#(deg180+deg45+deg22)/4
	s_set_alsflag		x,sflag2
	s_set_alvar2rnd	x,al_sbyte3,#15
	s_set_alvar2rnd	x,al_sbyte4,#7

clshipTURNa_strat
	s_start_strat

	jsr			flyinleft_srou

	s_set_var		W,svar_word2,#100	; Z
	s_set_var		W,svar_word3,#-20	; Y
	s_jmp			clshipTURN_cont	

	


clshipTURNb_Istrat
	s_start_strat
	s_set_alsflag		x,shadow
	s_set_strat		x,clshipTURNb_strat
	s_setnoremove_behind	x
	s_set_alvar		W,x,al_vx,#-10 
	s_set_alvar		B,x,al_rotz,#deg90	
;	-- 30fps Speed Mode Scaling (15fps baseline: 2x frame timers, 50% per-frame velocity) --
	IFEQ	SPEED_MODE
	s_set_alvar		B,x,al_sword1,#100+120+10-frogwait	; 220
	ELSEIF
	s_set_alvar		W,x,al_sword1,#200+240+20-frogwait
	s_set_alvar		W,x,al_sword2,#deg90*256
	ENDC
	s_set_alvar		B,x,al_sbyte1,#(deg180+deg45+deg22)/4
	s_clr_alsflag		x,sflag2
	s_set_alvar2rnd	x,al_sbyte3,#15
	s_set_alvar2rnd	x,al_sbyte4,#7
clshipTURNb_strat
	s_start_strat

	jsr			flyinright_srou

	s_set_var		W,svar_word2,#200	; Z
	s_set_var		W,svar_word3,#-20	; Y
	s_jmp			clshipTURN_cont	

clshipTURNc_Istrat
	s_start_strat
	s_set_alsflag		x,shadow
	s_set_strat		x,clshipTURNc_strat
	s_setnoremove_behind	x
;	-- 30fps Speed Mode Scaling (15fps baseline: 2x frame timers, 50% per-frame velocity) --
	IFEQ	SPEED_MODE
	s_set_alvar		B,x,al_sword1,#100+100+10-cockwait	; 200
	ELSEIF
	s_set_alvar		W,x,al_sword1,#200+200+20-cockwait
	s_set_alvar		W,x,al_sword2,#0
	ENDC
	s_set_alvar		B,x,al_sbyte1,#(deg180+deg45+deg22)/4
	s_set_alsflag		x,sflag2
	s_set_alvar2rnd	x,al_sbyte3,#15
	s_set_alvar2rnd	x,al_sbyte4,#7
clshipTURNc_strat
	s_start_strat
	s_achase_alvar		W,x,al_worldx,#0,4	  
	s_set_var		W,svar_word2,#300	; Z
	s_set_var		W,svar_word3,#-30	; Y
	s_jmp			clshipTURN_cont	



clshipTURN_cont

	s_beqdec_alvar		W,x,al_sword1,clshipTURN_Istrat

	s_set_objtobeplayer	y

	s_copy_alvar2var.w	W,y,svar_word1,al_worldz
	s_add_var		W,svar_word1,svar_word2
	s_achase_alvar		W,x,al_worldz,svar_word1,4

	s_copy_alvar2var.w	W,y,svar_word1,al_worldy
	s_add_var		W,svar_word1,svar_word3
	s_achase_alvar		W,x,al_worldy,svar_word1,5

	IFEQ	SPEED_MODE
	s_achase_alvar		B,x,al_rotz,#0,5
	ELSEIF
	jsr			flyin_rotz_srou
	ENDC
;	s_achase_alvar2alvar	B,x,al_rotz,y,al_rotz,5
	jsl		floatCLship2_l

	s_achase_alvar2alvar	B,x,al_rotx,y,al_rotx,5

	s_add_playerZ		x	
	s_end_strat



clshipTURN_Istrat
	s_set_strat		x,clshipTURN_strat
	IFEQ	SPEED_MODE
	s_set_alvar		B,x,al_sbyte2,#42
	ELSEIF
	s_set_alvar		B,x,al_sbyte2,#84
	ENDC
clshipTURN_strat

	s_beqdec_alvar		B,x,al_sbyte2,clshipTURN2_Istrat
	IFEQ	SPEED_MODE
	s_speedto		x,#32,1
	s_sub_alvar		B,x,al_roty,#1
	s_add_alvar		B,x,al_rotz,#-1
	ELSEIF
	s_speedto		x,#16,1
	s_jmp_notANDframe	#1,.nosubturn1
	s_sub_alvar		B,x,al_roty,#1
	s_add_alvar		B,x,al_rotz,#-1
.nosubturn1
	ENDC
	s_brl			clshipTURN2_cont

clshipTURN2_Istrat
	s_set_strat		x,clshipTURN2_strat
	IFEQ	SPEED_MODE
	s_set_alvar		B,x,al_sbyte1,#(deg180+42)/4
	ELSEIF
	s_set_alvar		B,x,al_sbyte1,#(deg180+42)/2
	ENDC
;	set_sound1		x,#$0d
	s_jmp_alsflag		x,sflag2,.nsnd2
;	set_sound2		x,#$01
.nsnd2
	s_setremove_behind	x
clshipTURN2_strat
	s_start_strat

	s_beqdec_alvar		B,x,al_sbyte1,.nadd
	IFEQ	SPEED_MODE
	s_add_alvar		B,x,al_rotz,#2
	s_add_alvar		B,x,al_roty,#4
	ELSEIF
	s_add_alvar		B,x,al_rotz,#1
	s_add_alvar		B,x,al_roty,#2
	ENDC
	s_brl			clshipTURN2_cont
.nadd
	IFEQ	SPEED_MODE
	s_sub_alvar		B,x,al_rotz,#2
	ELSEIF
	s_sub_alvar		B,x,al_rotz,#1
	ENDC


clshipTURN2_cont
	s_gen_3dvecs		x,al_roty,al_rotx,al_vel
	s_add_vecs2pos		x
	s_add_playerZ		x
	s_end_strat



;*****************************************************************************
clshipBRIDGEa_Istrat
	s_start_strat
	s_set_alsflag		x,shadow
	s_set_strat		x,clshipBRIDGEa_strat
	s_setnoremove_behind	x
	s_set_alvar		B,x,al_rotz,#-deg90	
	s_set_alvar		B,x,al_roty,#deg45
;	-- 30fps Speed Mode Scaling (15fps baseline: 2x frame timers, 50% per-frame velocity) --
	IFEQ	SPEED_MODE
	s_set_alvar		W,x,al_sword1,#130-bunnywait
	ELSEIF
	s_set_alvar		W,x,al_sword1,#260-bunnywait
	ENDC
clshipBRIDGEa_strat
	s_start_strat

	s_achase_alvar		W,x,al_worldx,#-70,4	  

	s_set_var		W,svar_word2,#-100	; Z
	s_set_var		W,svar_word3,#20	; Y
	s_jmp			clshipBRIDGE_cont	

	


clshipBRIDGEb_Istrat
	s_start_strat
	s_set_alsflag		x,shadow
	s_set_strat		x,clshipBRIDGEb_strat
	s_setnoremove_behind	x
	s_set_alvar		B,x,al_rotz,#deg90	
	s_set_alvar		B,x,al_roty,#-deg45
;	-- 30fps Speed Mode Scaling (15fps baseline: 2x frame timers, 50% per-frame velocity) --
	IFEQ	SPEED_MODE
	s_set_alvar		W,x,al_sword1,#140-frogwait
	ELSEIF
	s_set_alvar		W,x,al_sword1,#280-frogwait
	ENDC
clshipBRIDGEb_strat
	s_start_strat

	s_achase_alvar		W,x,al_worldx,#70,4	  

	s_set_var		W,svar_word2,#-200	; Z
	s_set_var		W,svar_word3,#20	; Y
	s_jmp			clshipBRIDGE_cont	

clshipBRIDGEc_Istrat
	s_start_strat
	s_set_alsflag		x,shadow
	s_set_strat		x,clshipBRIDGEc_strat
	s_setnoremove_behind	x
;	-- 30fps Speed Mode Scaling (15fps baseline: 2x frame timers, 50% per-frame velocity) --
	IFEQ	SPEED_MODE
	s_set_alvar		W,x,al_sword1,#150-cockwait
	ELSEIF
	s_set_alvar		W,x,al_sword1,#300-cockwait
	ENDC
clshipBRIDGEc_strat
	s_start_strat
	s_achase_alvar		W,x,al_worldx,#0,4	  
	s_set_var		W,svar_word2,#-300	; Z
	s_set_var		W,svar_word3,#30	; Y
	s_jmp			clshipBRIDGE_cont	



clshipBRIDGE_cont
	s_beqdec_alvar		W,x,al_sword1,clshipbridgeboost_Istrat
	s_set_objtobeplayer	y

	s_copy_alvar2var.w	W,y,svar_word1,al_worldz
	s_add_var		W,svar_word1,svar_word2
	s_achase_alvar		W,x,al_worldz,svar_word1,4

	s_copy_alvar2var.w	W,y,svar_word1,al_worldy
	s_add_var		W,svar_word1,svar_word3
	s_achase_alvar		W,x,al_worldy,svar_word1,5


	s_achase_alvar2alvar	B,x,al_rotx,y,al_rotx,5

	s_jmp_notdelay		1,.ny
	s_achase_alvar2alvar	B,x,al_rotz,y,al_rotz,5
	s_achase_alvar2alvar	B,x,al_roty,y,al_roty,4
.ny

	s_add_playerZ		x	
	s_add_alvar		W,x,al_worldz,psvar_word2
	s_end_strat



clshipBridgeboost_Istrat
	s_set_strat	x,clshipBridgeboost_strat
	IFEQ	SPEED_MODE
	s_set_alvar	B,x,al_sbyte1,#50
	s_set_speed	x,#20
	ELSEIF
	s_set_alvar	B,x,al_sbyte1,#100
	s_set_speed	x,#10
	ENDC
clshipBridgeboost_strat
	s_start_strat

	s_gen_vecs	x,al_roty,al_vel
	s_set_alvar	W,x,al_vz,#0
	s_add_vecs2pos	x


	s_jmp_notdelay	1,.nyi
	s_sub_alvar	B,x,al_rotz,#1
.nyi

	s_jmp_notdelay	3,.nxi
	s_sub_alvar	B,x,al_roty,#1
	s_sub_alvar	B,x,al_rotx,#1
.nxi

	s_decbne_alvar	B,x,al_sbyte1,.nengineoff
	s_and_var	B,pshipflags3,#~psf3_enginesnd
	brl		clshipboost_Istrat
.nengineoff

	s_add_playerZ		x	
	s_end_strat

;*****************************************************************************
clshipDIVEa_Istrat
	s_start_strat
	s_set_strat		x,clshipDIVEa_strat
	s_setnoremove_behind	x
;	-- 30fps Speed Mode Scaling (15fps baseline: 2x frame timers, 50% per-frame velocity) --
	IFEQ	SPEED_MODE
	s_set_alvar		W,x,al_sword1,#180-bunnywait
	ELSEIF
	s_set_alvar		W,x,al_sword1,#360-bunnywait
	ENDC
	s_set_alvar		B,x,al_rotz,#-deg90	
clshipDIVEa_strat
	s_start_strat

	s_achase_alvar		W,x,al_worldx,#-50,4	  

	s_set_var		W,svar_word2,#100	; Z
	s_set_var		W,svar_word3,#-20	; Y    

;	-- 30fps Speed Mode Scaling (15fps baseline: 2x frame timers, 50% per-frame velocity) --
	IFEQ	SPEED_MODE
	s_jmp_alvarMORE		W,x,al_sword1,#60,.nhigh
	s_jmp_alvarLESS		W,x,al_sword1,#30,.nvy
	ELSEIF
	s_jmp_alvarMORE		W,x,al_sword1,#120,.nhigh
	s_jmp_alvarLESS		W,x,al_sword1,#60,.nvy
	ENDC
	s_add_alvar		B,x,al_rotz,#2   
	s_jmp_notdelay		2,.nvx
	s_add_alvar		W,x,al_vx,#-1
.nvx	s_jmp_notdelay		1,.nvy
	s_add_alvar		W,x,al_vy,#-1
.nvy	
	s_add_vecs2pos		x
	s_jmp_alvarNE		W,x,al_sword1,#1,.nb
	s_set_objtobeplayer	y
	s_copy_pos		x,y
	s_add_alvar		W,x,al_worldy,#-200
	s_add_alvar		W,x,al_worldx,#-50
.nb

	brl			clshipDIVE_cont2
.nhigh
	s_jmp			clshipDIVE_cont	

	


clshipDIVEb_Istrat
	s_start_strat
	s_set_strat		x,clshipDIVEb_strat
	s_setnoremove_behind	x
;	-- 30fps Speed Mode Scaling (15fps baseline: 2x frame timers, 50% per-frame velocity) --
	IFEQ	SPEED_MODE
	s_set_alvar		W,x,al_sword1,#190-frogwait
	ELSEIF
	s_set_alvar		W,x,al_sword1,#380-frogwait
	ENDC
	s_set_alvar		B,x,al_rotz,#deg90	
clshipDIVEb_strat
	s_start_strat

	s_achase_alvar		W,x,al_worldx,#50,4	  

	s_set_var		W,svar_word2,#200	; Z
	s_set_var		W,svar_word3,#-20	; Y

;	-- 30fps Speed Mode Scaling (15fps baseline: 2x frame timers, 50% per-frame velocity) --
	IFEQ	SPEED_MODE
	s_jmp_alvarMORE		W,x,al_sword1,#60,.nhigh
	s_jmp_alvarLESS		W,x,al_sword1,#30,.nvy
	ELSEIF
	s_jmp_alvarMORE		W,x,al_sword1,#120,.nhigh
	s_jmp_alvarLESS		W,x,al_sword1,#60,.nvy
	ENDC
	s_sub_alvar		B,x,al_rotz,#2    
	s_jmp_notdelay		2,.nvx
	s_add_alvar		W,x,al_vx,#1
.nvx	s_jmp_notdelay		1,.nvy
	s_add_alvar		W,x,al_vy,#-1
.nvy	
	s_add_vecs2pos		x
	s_jmp_alvarNE		W,x,al_sword1,#1,.nb
	s_set_objtobeplayer	y
	s_copy_pos		x,y
	s_add_alvar		W,x,al_worldy,#-200
	s_add_alvar		W,x,al_worldx,#50
.nb

	brl			clshipDIVE_cont2
.nhigh

	s_jmp			clshipDIVE_cont	

clshipDIVEc_Istrat
	s_start_strat
	s_set_strat		x,clshipDIVEc_strat
	s_setnoremove_behind	x
;	-- 30fps Speed Mode Scaling (15fps baseline: 2x frame timers, 50% per-frame velocity) --
	IFEQ	SPEED_MODE
	s_set_alvar		W,x,al_sword1,#170-cockwait
 	s_set_alvar		B,x,al_sbyte2,#20
	ELSEIF
	s_set_alvar		W,x,al_sword1,#340-cockwait
 	s_set_alvar		B,x,al_sbyte2,#40
	ENDC
clshipDIVEc_strat
	s_start_strat
	s_achase_alvar		W,x,al_worldx,#0,4	  
	s_set_var		W,svar_word2,#300	; Z
	s_set_var		W,svar_word3,#-30	; Y

;	-- 30fps Speed Mode Scaling (15fps baseline: 2x frame timers, 50% per-frame velocity) --
	IFEQ	SPEED_MODE
	s_jmp_alvarMORE		W,x,al_sword1,#60,.nhigh
	s_jmp_alvarLESS		W,x,al_sword1,#30,.nvy
	ELSEIF
	s_jmp_alvarMORE		W,x,al_sword1,#120,.nhigh
	s_jmp_alvarLESS		W,x,al_sword1,#60,.nvy
	ENDC
.nvx	s_jmp_notdelay		1,.nvy
	s_add_alvar		W,x,al_vy,#-1
.nvy	
	s_add_vecs2pos		x
	s_jmp_alvarNE		W,x,al_sword1,#1,.nb
	s_set_objtobeplayer	y
	s_copy_pos		x,y
	s_add_alvar		W,x,al_worldy,#-200
.nb

	brl			clshipDIVE_cont2
.nhigh
	s_jmp			clshipDIVE_cont	



clshipDIVE_cont


	s_set_objtobeplayer	y

	s_copy_alvar2var.w	W,y,svar_word1,al_worldz
	s_add_var		W,svar_word1,svar_word2
	IFEQ	SPEED_MODE
	s_achase_alvar		W,x,al_worldz,svar_word1,4

	s_copy_alvar2var.w	W,y,svar_word1,al_worldy
	s_add_var		W,svar_word1,svar_word3
	s_achase_alvar		W,x,al_worldy,svar_word1,4

;	s_achase_alvar2alvar	B,x,al_rotz,y,al_rotz,5
	s_achase_alvar		B,x,al_rotz,#0,5

	s_achase_alvar2alvar	B,x,al_rotx,y,al_rotx,5
	ELSEIF
	s_achase_alvar		W,x,al_worldz,svar_word1,5

	s_copy_alvar2var.w	W,y,svar_word1,al_worldy
	s_add_var		W,svar_word1,svar_word3
	s_achase_alvar		W,x,al_worldy,svar_word1,5

	s_achase_alvar		B,x,al_rotz,#0,6

	s_achase_alvar2alvar	B,x,al_rotx,y,al_rotx,6
	ENDC

clshipDIVE_cont2
	s_beqdec_alvar		W,x,al_sword1,clshipDIVEboost_Istrat
	s_add_playerZ		x	
	s_add_alvar		W,x,al_worldz,psvar_word2
	s_end_strat


clshipDIVEboost_Istrat
	s_start_strat
	s_set_alvar	B,x,al_rotz,#0    
	s_set_alvar	B,x,al_rotx,#deg5
	s_brl		clshipboost_Istrat








;*****************************************************************************
clshipCHASEa_Istrat
	s_start_strat
	s_set_alsflag		x,shadow
	s_set_strat		x,clshipCHASEa_strat
	s_setnoremove_behind	x
	s_set_alvar		B,x,al_rotz,#-deg90	
	s_set_alvar		B,x,al_roty,#deg45
;	-- 30fps Speed Mode Scaling (15fps baseline: 2x frame timers, 50% per-frame velocity) --
	IFEQ	SPEED_MODE
	s_set_alvar		W,x,al_sword1,#246+5-frogwait
	ELSEIF
	s_set_alvar		W,x,al_sword1,#(246*2)+10-frogwait
	ENDC
clshipCHASEa_strat
	s_start_strat

	s_achase_alvar		W,x,al_worldx,#-70,4	  

	s_set_var		W,svar_word2,#-100	; Z
	s_set_var		W,svar_word3,#20	; Y
	s_jmp			clshipCHASE_cont	

	


clshipCHASEb_Istrat
	s_start_strat
	s_set_alsflag		x,shadow
	s_set_strat		x,clshipCHASEb_strat
	s_setnoremove_behind	x
	s_set_alvar		B,x,al_rotz,#deg90	
	s_set_alvar		B,x,al_roty,#-deg45
;	-- 30fps Speed Mode Scaling (15fps baseline: 2x frame timers, 50% per-frame velocity) --
	IFEQ	SPEED_MODE
	s_set_alvar		W,x,al_sword1,#246+10-bunnywait
	ELSEIF
	s_set_alvar		W,x,al_sword1,#(246*2)+20-bunnywait
	ENDC
clshipCHASEb_strat
	s_start_strat

	s_achase_alvar		W,x,al_worldx,#70,4	  

	s_set_var		W,svar_word2,#-200	; Z
	s_set_var		W,svar_word3,#20	; Y
	s_jmp			clshipCHASE_cont	

clshipCHASEc_Istrat
	s_start_strat
	s_set_alsflag		x,shadow
	s_set_strat		x,clshipCHASEc_strat
	s_setnoremove_behind	x
;	-- 30fps Speed Mode Scaling (15fps baseline: 2x frame timers, 50% per-frame velocity) --
	IFEQ	SPEED_MODE
	s_set_alvar		W,x,al_sword1,#246+15-cockwait
	ELSEIF
	s_set_alvar		W,x,al_sword1,#(246*2)+30-cockwait
	ENDC
clshipCHASEc_strat
	s_start_strat
	IFEQ	SPEED_MODE
	s_achase_alvar		W,x,al_worldx,#0,4	  
	ELSEIF
	s_achase_alvar		W,x,al_worldx,#0,5
	ENDC
	s_set_var		W,svar_word2,#-300	; Z
	s_set_var		W,svar_word3,#30	; Y
	s_jmp			clshipCHASE_cont	



clshipCHASE_cont
	s_beqdec_alvar		W,x,al_sword1,clshipboost_Istrat
	s_set_objtobeplayer	y

	s_copy_alvar2var.w	W,y,svar_word1,al_worldz
	s_add_var		W,svar_word1,svar_word2
	IFEQ	SPEED_MODE
	s_achase_alvar		W,x,al_worldz,svar_word1,4

	s_copy_alvar2var.w	W,y,svar_word1,al_worldy
	s_add_var		W,svar_word1,svar_word3
	s_achase_alvar		W,x,al_worldy,svar_word1,5


	s_achase_alvar2alvar	B,x,al_rotx,y,al_rotx,5
	ELSEIF
	s_achase_alvar		W,x,al_worldz,svar_word1,5

	s_copy_alvar2var.w	W,y,svar_word1,al_worldy
	s_add_var		W,svar_word1,svar_word3
	s_achase_alvar		W,x,al_worldy,svar_word1,6


	s_achase_alvar2alvar	B,x,al_rotx,y,al_rotx,6
	ENDC

	s_jmp_notdelay		1,.ny
	s_achase_alvar2alvar	B,x,al_rotz,y,al_rotz,5
	s_achase_alvar2alvar	B,x,al_roty,y,al_roty,4
.ny

	s_add_playerZ		x	
	s_add_alvar		W,x,al_worldz,psvar_word2
	s_end_strat



clshipCHASEboost_Istrat
	s_set_strat	x,clshipCHASEboost_strat
	s_set_alvar	B,x,al_sbyte1,#50
	s_set_speed	x,#20
clshipCHASEboost_strat
	s_start_strat

	s_gen_vecs	x,al_roty,al_vel
	s_set_alvar	W,x,al_vz,#0
	s_add_vecs2pos	x


	s_jmp_notdelay	1,.nyi
	s_sub_alvar	B,x,al_rotz,#1
.nyi

	s_jmp_notdelay	3,.nxi
	s_sub_alvar	B,x,al_roty,#1
	s_sub_alvar	B,x,al_rotx,#1
.nxi

	s_beqdec_alvar	B,x,al_sbyte1,clshipboost_Istrat

	s_add_playerZ		x	
	s_end_strat





;*****************************************************************************
clshipUNDERa_Istrat
	s_start_strat
	s_set_alsflag		x,shadow
	s_set_strat		x,clshipUNDERa_strat
	s_setnoremove_behind	x
	s_set_alvar		B,x,al_rotz,#-deg90	
	s_set_alvar		B,x,al_roty,#deg45
;	-- 30fps Speed Mode Scaling (15fps baseline: 2x frame timers, 50% per-frame velocity) --
	IFEQ	SPEED_MODE
	s_set_alvar		W,x,al_sword1,#140+5
	ELSEIF
	s_set_alvar		W,x,al_sword1,#280+10
	ENDC
	s_set_alvar		B,x,al_sbyte1,#1
	s_set_alsflag		x,sflag2
clshipUNDERa_strat
	s_start_strat

	s_achase_alvar		W,x,al_worldx,#-70,4	  

	s_set_var		W,svar_word2,#-100	; Z
	s_set_var		W,svar_word3,#20	; Y
	s_jmp			clshipUNDER_cont	

	


clshipUNDERb_Istrat
	s_start_strat
	s_set_alsflag		x,shadow
	s_set_strat		x,clshipUNDERb_strat
	s_setnoremove_behind	x
	s_set_alvar		B,x,al_rotz,#deg90	
	s_set_alvar		B,x,al_roty,#-deg45
;	-- 30fps Speed Mode Scaling (15fps baseline: 2x frame timers, 50% per-frame velocity) --
	IFEQ	SPEED_MODE
	s_set_alvar		W,x,al_sword1,#140+10
	ELSEIF
	s_set_alvar		W,x,al_sword1,#280+20
	ENDC
	s_set_alvar		B,x,al_sbyte1,#2
	s_clr_alsflag		x,sflag2
clshipUNDERb_strat
	s_start_strat

	s_achase_alvar		W,x,al_worldx,#70,4	  

	s_set_var		W,svar_word2,#-200	; Z
	s_set_var		W,svar_word3,#20	; Y
	s_jmp			clshipUNDER_cont	

clshipUNDERc_Istrat
	s_start_strat
	s_set_alsflag		x,shadow
	s_set_strat		x,clshipUNDERc_strat
	s_setnoremove_behind	x
;	-- 30fps Speed Mode Scaling (15fps baseline: 2x frame timers, 50% per-frame velocity) --
	IFEQ	SPEED_MODE
	s_set_alvar		W,x,al_sword1,#140+15
	ELSEIF
	s_set_alvar		W,x,al_sword1,#280+30
	ENDC
	s_set_alsflag		x,sflag2
clshipUNDERc_strat
	s_start_strat
	s_achase_alvar		W,x,al_worldx,#0,4	  
	s_set_var		W,svar_word2,#-300	; Z
	s_set_var		W,svar_word3,#30	; Y
	s_jmp			clshipUNDER_cont	



clshipUNDER_cont					    
	s_beqdec_alvar		W,x,al_sword1,clshipUNDERboost_Istrat
	s_set_objtobeplayer	y

	s_copy_alvar2var.w	W,y,svar_word1,al_worldz
	s_add_var		W,svar_word1,svar_word2
	s_achase_alvar		W,x,al_worldz,svar_word1,4

	s_copy_alvar2var.w	W,y,svar_word1,al_worldy
	s_add_var		W,svar_word1,svar_word3
	s_achase_alvar		W,x,al_worldy,svar_word1,5


	s_achase_alvar2alvar	B,x,al_rotx,y,al_rotx,5

	s_jmp_notdelay		1,.ny
	s_achase_alvar2alvar	B,x,al_rotz,y,al_rotz,5
	s_achase_alvar2alvar	B,x,al_roty,y,al_roty,4
.ny

	s_add_playerZ		x	
	s_add_alvar		W,x,al_worldz,psvar_word2
	s_end_strat



clshipUNDERboost_Istrat
	s_set_strat	x,clshipUNDERboost_strat
;	set_sound1		x,#$0d
	s_jmp_alsflag		x,sflag2,.nsnd2
;	set_sound2		x,#$01
.nsnd2
clshipUNDERboost_strat
	s_start_strat

	IFEQ	SPEED_MODE
	s_speedto	x,#40,1
	ELSEIF
	s_jmp_notANDframe	#3,.nspd
	s_speedto	x,#20,1
.nspd
	ENDC
	s_gen_vecs	x,al_roty,al_vel
	s_add_vecs2pos	x

	s_jmp_alvarZERO	B,x,al_sbyte1,.nnz

	s_jmp_alvarNE	B,x,al_sbyte1,#1,.nl
	IFNE	SPEED_MODE
	s_jmp_notANDframe	#1,.nnz
	ENDC
	s_add_alvar	B,x,al_rotz,#1
	s_jmp_notdelay	1,.nnz
	s_add_alvar	B,x,al_roty,#1
	s_brl		.nnz
.nl
	IFNE	SPEED_MODE
	s_jmp_notANDframe	#1,.nnz
	ENDC
	s_sub_alvar	B,x,al_rotz,#1
	s_jmp_notdelay	1,.nnz
	s_sub_alvar	B,x,al_roty,#1


.nnz
	s_add_playerZ		x	
	s_end_strat


;*****************************************************************************
pshipDIVEGND_Istrat
	s_start_strat
	s_set_alvar	B,x,al_rotx,#deg90
	s_set_strat	x,pshipDIVEGND_strat
	IFEQ	SPEED_MODE
	s_set_speed	x,#50
	s_set_alvar	W,x,al_worldy,#-2853+105+planet_viewCY
	ELSEIF
	s_set_speed	x,#25
	s_set_alvar	W,x,al_worldy,#-2853+86+105+planet_viewCY
	ENDC
	s_set_alsflag		x,shadow
	s_setnoremove_behind	x
	s_set_alvar	B,x,al_sbyte1,#50-16+20

pshipDIVEGND_strat
	s_start_strat
	 
;	d_print_alvar		W,x,al_worldy,1


	s_set_objtobealvar	y,x,al_sword1
	s_jmp_Zdistless		x,y,#outviewdist,.npchg
	s_set_strat		y,remove_Istrat
	s_set_strat		x,remove_Istrat

	s_set_objtobeplayer	y
	s_set_strat		y,playeronplanet_Istrat
	phx
	pstrat	playeronplanet
	plx     
	
	s_set_var		B,viewtype,#viewtype_norm
	s_set_var		W,pviewvelz,#medpspeed
	s_set_var		W,player_tospeed,#medpspeed
	s_set_var		W,outdist,#outviewdist
	s_set_var		W,viewdist,#outviewdist
	s_set_var		B,player_medspeed,#medpspeed
	s_set_speed		y,#medpspeed
	s_copy_pos		y,x
;	lda			#pshipnum_norm		
;	s_jsl			select_ship_l
 	s_clr_alsflag		y,invisible


	s_end_strat
.npchg


	s_gen_3dvecs	x,al_roty,al_rotx,al_vel
	s_add_vecs2pos	x

	IFEQ	SPEED_MODE
	s_beqdec_alvar	B,x,al_sbyte1,.fin2
	s_jmp_alvarLESS	B,x,al_sbyte1,#20,.fin
	s_sub_alvar	B,x,al_rotz,#8
	s_speedto	x,#20,1
	ELSEIF
	s_jmp_alvarZERO	B,x,al_sbyte1,.fin2
	s_jmp_notdelay	0,.ndecp
	s_dec_alvar	B,x,al_sbyte1
.ndecp	s_jmp_alvarLESS	B,x,al_sbyte1,#20,.fin
	s_sub_alvar	B,x,al_rotz,#4
	s_jmp_notdelay	1,.nspdp1
	s_speedto	x,#10,1
.nspdp1
	ENDC
	s_end_strat

.fin2
	s_set_var	B,viewtype,#viewtype_toobj

.fin	
	s_AND_var	B,gameflags,#~gf_nozremove
	IFEQ	SPEED_MODE
	s_achase_alvar	B,x,al_rotx,#0,5
	s_speedto	x,#medpspeed,1
	s_achase_alvar	B,x,al_rotz,#0,4
	ELSEIF
	s_jmp_notdelay	0,.nrotp
	s_achase_alvar	B,x,al_rotx,#0,5
	s_achase_alvar	B,x,al_rotz,#0,4
.nrotp	s_jmp_notdelay	1,.nspdp2
	s_speedto	x,#medpspeed,1
.nspdp2
	ENDC
    	s_end_strat


;*****************************************************************************
viewDIVEGND_Istrat
	s_start_strat
	s_set_strat	x,viewDIVEGND_strat
	s_setnoremove_behind	x
	IFEQ	SPEED_MODE
	s_set_alvar	W,x,al_worldy,#-2692+105+planet_viewCY
	s_set_speed	x,#20
	ELSEIF
	s_set_alvar	W,x,al_worldy,#-2692+72+105+planet_viewCY
	s_set_speed	x,#10
	ENDC
	s_set_alvar	B,x,al_rotx,#deg90
	s_set_alvar	B,x,al_sbyte1,#90

	s_set_var	W,outvx,#-deg90*256
	s_set_var	W,outvz,#0

viewDIVEGND_strat
	s_start_strat

	s_set_objtobealvar	y,x,al_sword1

	s_add_alvars		W,x,al_worldz,y,al_vz
	s_gen_3dvecs		x,al_roty,al_rotx,al_vel
	s_add_alvars		W,x,al_worldy,x,al_vy

	s_copy_alvar2var	W,x,pviewposx,al_worldx
	s_copy_alvar2var	W,x,pviewposy,al_worldy
	s_copy_alvar2var	W,x,pviewposz,al_worldz

	s_set_objtobeplayer	y
	s_copy_pos		y,x


;	d_print_alvar		W,x,al_worldy,2


	IFEQ	SPEED_MODE
	s_beqdec_alvar	B,x,al_sbyte1,.fin2
	s_jmp_alvarLESS	B,x,al_sbyte1,#40,.fin
	s_sub_var	W,outvz,#4*256
	ELSEIF
	s_jmp_alvarZERO	B,x,al_sbyte1,.fin2
	s_jmp_notdelay	0,.ndecv
	s_dec_alvar	B,x,al_sbyte1
.ndecv	s_jmp_alvarLESS	B,x,al_sbyte1,#40,.fin
	s_sub_var	W,outvz,#2*256
	ENDC
    	s_end_strat

.fin2
	IFEQ	SPEED_MODE
	s_sub_alvar	W,x,al_worldz,#3
	ELSEIF
	s_sub_alvar	W,x,al_worldz,#2
	ENDC
.fin	IFEQ	SPEED_MODE
	s_achase_alvar	B,x,al_rotx,#0,5
	s_speedto	x,#medpspeed,1
	s_achase_var	W,outvz,#0,3
	ELSEIF
	s_achase_var	W,outvz,#0,4
	s_jmp_notdelay	0,.nrotv
	s_achase_alvar	B,x,al_rotx,#0,5
.nrotv	s_jmp_notdelay	1,.nspdv
	s_speedto	x,#medpspeed,1
.nspdv
	ENDC
    	s_end_strat



;*******************************************************************************
lseqdoor1_Istrat		; last sequence entrance.
	s_start_strat
	s_set_alsflag	x,colldisable

	s_jmp_alsflag		x,sflag1,.open
	s_set_objtobeplayer	y
	IFEQ	SPEED_MODE
	s_jmp_Zdistmore		x,y,#medpspeed*9,.close
	ELSEIF
	s_jmp_Zdistmore		x,y,#medpspeed*18,.close
	ENDC
	s_set_alsflag		x,sflag1
.open	
	s_cmp_anim		x,#0
	s_bne		.nsnd
	trigse		$55
.nsnd
	IFEQ	SPEED_MODE
	s_cmp_anim		x,#9
	s_beq			.end
	s_add_anim		x,#1,#10
	ELSEIF
	s_cmp_anim		x,#18
	s_beq			.end
	s_add_anim		x,#1,#19
	ENDC
	s_brl			.end
.close
	s_init_anim		x,#0
.end
    	s_end_strat

;*******************************************************************************
lseqdoor2_Istrat		; last sequence exit.
	s_start_strat
	s_set_alsflag	x,colldisable

	s_set_objtobevar	y,viewtoobj
	s_jmp_alsflag		x,sflag1,.open
	s_jmp_Ydistmore		x,y,#400,.nexps
	s_OR_var		B,gameflags2,#gf2_stratflag1
.nexps	s_jmp_Ydistmore		x,y,#200,.close
	s_set_alsflag		x,sflag1
.open	
	s_cmp_anim		x,#0
	s_bne		.nsnd
	trigse		$55
.nsnd
	IFEQ	SPEED_MODE
	s_cmp_anim		x,#10
	s_beq			.end
	s_add_anim		x,#1,#11
	ELSEIF
	s_cmp_anim		x,#20
	s_beq			.end
	s_add_anim		x,#1,#21
	ENDC
	s_brl			.end
.close
	s_init_anim		x,#0
.end
    	s_end_strat



;*******************************************************************************
shiplb1_Istrat
	s_start_strat
	s_set_alsflag	x,colldisable


	s_jmp_ifnotstate	x,0,.nstart
	IFEQ	SPEED_MODE
	s_set_speed		x,#20
	ELSEIF
	s_set_speed		x,#10
	ENDC
	jsr			shiplb1ychase_srou
	s_set_alvar		B,x,al_rotz,#deg45
	s_set_alvar		B,x,al_roty,#deg90
	IFEQ	SPEED_MODE
	s_jmp_notdelay		0,.nstart
	ELSEIF
	lda			al_sbyte4,x
	bit			#1
	rlbne			.nstart
	ENDC
	s_decbne_alvar		B,x,al_sbyte1,.nstart
	IFEQ	SPEED_MODE
	s_set_alvar		B,x,al_sbyte1,#((deg180+deg11+deg5)-deg90)/3
	ELSEIF
	s_set_alvar		B,x,al_sbyte1,#(((deg180+deg11+deg5)-deg90)/3)*2
	ENDC
	s_next_state		x
.nstart

	s_jmp_ifnotstate	x,1,.nturn1
	jsr			shiplb1ychase_srou
	IFEQ	SPEED_MODE
	s_jmp_notdelay		0,.nturn1
	s_add_alvar		B,x,al_roty,#3
	ELSEIF
	jsr			outlb_add_roty1p5_srou
	ENDC
	s_decbne_alvar		B,x,al_sbyte1,.nturn1
	IFEQ	SPEED_MODE
	s_set_alvar		B,x,al_sbyte1,#40
	ELSEIF
	s_set_alvar		B,x,al_sbyte1,#80
	ENDC
	s_next_state		x
.nturn1

	s_jmp_ifnotstate	x,2,.nturn2cont
;	s_speedto		x,#15,1
	s_decbne_alvar		B,x,al_sbyte1,.nturn2
	s_set_alvar		B,x,al_sbyte1,#1
	IFEQ	SPEED_MODE
	s_jmp_notdelay		1,.nturn2cont
	ELSEIF
	lda			al_sbyte4,x
	and			#3
	rlbne			.nturn2cont
	ENDC
	s_sub_alvar		B,x,al_rotx,#1
	s_brl			.nturn2cont
.nturn2
	jsr			shiplb1ychase_srou
.nturn2cont

	s_gen_3dvecs	x,al_roty,al_rotx,al_vel
	IFNE	SPEED_MODE
	inc		al_sbyte4,x
	ENDC
	s_add_vecs2pos	x
	s_end_strat


shiplb1ychase_srou
	s_set_objtobevar	y,viewtoobj
	s_copy_alvar2var	W,y,svar_word1,al_worldy
	s_varadd_alvar.w	W,x,svar_word1,al_sword1
	IFEQ	SPEED_MODE
	s_achase_alvar		W,x,al_worldy,svar_word1,5
	ELSEIF
	s_achase_alvar		W,x,al_worldy,svar_word1,6
	ENDC
	rts

	IFNE	SPEED_MODE
; Shared +1.5 deg/frame 30fps yaw helper using al_sbyte1 parity (+1 even, +2 odd).
outlb_add_roty1p5_srou
	lda	al_sbyte1,x
	bit	#1
	bne	.odd
	s_add_alvar	B,x,al_roty,#1
	rts
.odd
	s_add_alvar	B,x,al_roty,#2
	rts

; Smooth 30fps 8.8 fixed-point chase toward 0 on (al_rotz:al_sbyte2) at rate /16
; with $0080 (0.5 deg/frame) minimum step and clean zero snap below $0080.
outlb_chase_rotz_srou
	lda	al_sbyte2,x
	sta	tpx
	lda	al_rotz,x
	sta	tpx+1
	a16
	lda	tpx
	beq	.done16
	bmi	.val_neg
	cmp	#$0081
	bcc	.zero16
	nega
	cmp	#-$0800
	bcs	.stepm80
	asra
	asra
	asra
	asra
	bra	.add16
.stepm80
	lda	#-$0080
	bra	.add16
.val_neg
	cmp	#$FF80
	bcs	.zero16
	nega
	cmp	#$0800
	bcc	.stepp80
	asra
	asra
	asra
	asra
	bra	.add16
.stepp80
	lda	#$0080
.add16
	clc
	adc	tpx
	bra	.store16
.zero16
	lda	#0
.store16
	sta	tpx
	a8
	lda	tpx
	sta	al_sbyte2,x
	lda	tpx+1
	sta	al_rotz,x
	rts
.done16
	a8
	rts
	ENDC

;*******************************************************************************
pshipOutofLB1_Istrat
	s_start_strat
	s_set_strat	x,pshipOutofLB1_strat
	s_set_alsflag	x,colldisable
	s_set_speed	x,#medpspeed
	s_set_alvar	B,x,al_rotx,#-deg90
	IFNE	SPEED_MODE
	s_set_alvar	B,x,al_sbyte2,#0
	s_set_alvar	B,x,al_sbyte4,#0
	ENDC
	s_set_vartobeobj	viewtoobj,x
	s_AND_var		B,gameflags,#~gf_stratdone1
pshipOutofLB1_strat
	s_start_strat

;	d_print_alvar		B,x,al_stratstate,1

;-----------------------------------------------------------------------
	s_jmp_ifnotstate	x,0,.nsup		; up out of base
	IFEQ	SPEED_MODE
	s_sub_alvar		B,x,al_rotz,#4
	s_jmp_lower		x,#-1000,.nsup
	s_speedto		x,#maxpspeed,1
	s_set_alvar		B,x,al_sbyte1,#5+18
	s_jmp_alvarNE	B,x,al_rotx,#-deg45,.nnewbgm
	startbgm	$7
	IFNE	MSU1
	s_msuplay	lastbossclear,norepeat
	ENDC
	s_jmp		nextstate
.nnewbgm
	s_add_alvar		B,x,al_rotx,#2
	ELSEIF
	s_sub_alvar		B,x,al_rotz,#2
	s_jmp_lower		x,#-1000,.nsup
	lda			al_sbyte4,x
	and			#3
	bne			.nspd0
	s_speedto		x,#maxpspeed-1,1
.nspd0	s_set_alvar		B,x,al_sbyte1,#(5+18)*2
	s_jmp_alvarNE	B,x,al_rotx,#-deg45,.nnewbgm
	startbgm	$7
	IFNE	MSU1
	s_msuplay	lastbossclear,norepeat
	ENDC
	s_jmp		nextstate
.nnewbgm
	s_add_alvar		B,x,al_rotx,#1
	ENDC
.nsup

;-----------------------------------------------------------------------
	s_jmp_ifnotstate	x,1,.nsgo
	s_decbne_alvar		B,x,al_sbyte1,.nfl
	s_set_alvar		B,x,al_sbyte1,#1
	s_set_alvar		W,x,al_shape,#my_demoBS
.nfl
	IFEQ	SPEED_MODE
	s_jmp_notdelay		0,.nsgo
	s_achase_alvar		B,x,al_rotz,#0,3
	ELSEIF
	jsr			outlb_chase_rotz_srou
	lda			al_sbyte4,x
	bit			#1
	rlbne			.nsgo
	ENDC
	s_achase_alvar		B,x,al_rotx,#0,5,.donelineup
	s_brl			.nsgo
.donelineup
	s_set_alvar		W,x,al_shape,#my_demoS
	IFEQ	SPEED_MODE
	s_set_alvar		B,x,al_sbyte1,#70
	ELSEIF
	s_set_alvar		B,x,al_sbyte1,#140
	ENDC
	s_next_state		x
.nsgo

;-----------------------------------------------------------------------
	s_jmp_ifnotstate	x,2,.nturn1		; wait for turn 
	s_decbne_alvar		B,x,al_sbyte1,.nturn1
	s_next_state		x
	IFEQ	SPEED_MODE
	s_set_alvar		B,x,al_sbyte1,#((deg180+deg11+deg5)/3)+1
	ELSEIF
	s_set_alvar		B,x,al_sbyte1,#(((deg180+deg11+deg5)/3)*2)+1
	ENDC
	s_brl			.nend
.nturn1
;-----------------------------------------------------------------------
	s_jmp_ifnotstate	x,3,.ns3		; remove base
	s_set_find		0
	s_find_obj		y,x,#last_b_0,.nf1
	s_remove_obj		y
.nf1
	s_find_obj		y,x,#last_b_3,.nf2
	s_remove_obj		y
.nf2
	s_jmp_varZERO		B,frog,.bad1
	s_make_obj		#my_demos,.bad1
	s_copy_pos		y,x
	s_copy_rots		y,x
	s_copy_vecs		y,x
	s_add_alvar		W,y,al_worldx,#450+400
	s_add_alvar		W,y,al_worldy,#-1000
	s_set_alvar		W,y,al_sword1,#30
	s_add_alvar		W,y,al_worldz,#250
	s_set_alvar		B,y,al_sbyte1,#30+20
	s_set_alvar		B,y,al_sbyte4,#0
	s_set_strat		y,shiplb1_Istrat
.bad1

	s_jmp_varZERO		B,cock,.bad2
	s_make_obj		#my_demos,.bad2
	s_copy_pos		y,x
	s_copy_rots		y,x
	s_copy_vecs		y,x
	s_add_alvar		W,y,al_worldx,#450+200+400
	s_add_alvar		W,y,al_worldy,#50
	s_set_alvar		W,y,al_sword1,#70
	s_add_alvar		W,y,al_worldz,#500
	s_set_alvar		B,y,al_sbyte1,#30+10+5+20+2
	s_set_alvar		B,y,al_sbyte4,#0
	s_set_strat		y,shiplb1_Istrat
.bad2

	s_jmp_varZERO		B,bunny,.bad3
	s_make_obj		#my_demos,.bad3
	s_copy_pos		y,x
	s_copy_rots		y,x
	s_copy_vecs		y,x
	s_add_alvar		W,y,al_worldx,#450+600
	s_add_alvar		W,y,al_worldy,#1000
	s_set_alvar		W,y,al_sword1,#50
	s_add_alvar		W,y,al_worldz,#400
	s_set_alvar		B,y,al_sbyte1,#30+30+2
	s_set_alvar		B,y,al_sbyte4,#0
	s_set_strat		y,shiplb1_Istrat
.bad3
	s_next_state		x
.ns3

;-----------------------------------------------------------------------

	s_jmp_ifnotstate	x,4,.nturn2		 ; do turn
	IFEQ	SPEED_MODE
	s_set_speed		x,#10
	ELSEIF
	s_set_speed		x,#5
	ENDC
	s_decbne_alvar		B,x,al_sbyte1,.nnext
	s_set_alvar		B,x,al_sbyte1,#110	; time until fade
	s_jmp			nextstate
.nnext	
	IFEQ	SPEED_MODE
	s_add_alvar		B,x,al_roty,#3
	ELSEIF
	jsr			outlb_add_roty1p5_srou
	ENDC
	s_jmp_alvarEQ		B,x,al_rotz,#deg45,.nturn2
	IFEQ	SPEED_MODE
	s_jmp_notdelay		1,.nturn2
	ELSEIF
	lda			al_sbyte4,x
	and			#3
	rlbne			.nturn2
	ENDC
	s_add_alvar		B,x,al_rotz,#1
.nturn2

;-----------------------------------------------------------------------

	s_jmp_ifnotstate	x,5,.nboost
	IFEQ	SPEED_MODE
	s_set_speed		x,#15
	ELSEIF
	s_set_speed		x,#8
	lda			al_sbyte4,x
	bit			#1
	rlbne			.nboost
	ENDC
	s_jmp_alvarMORE		B,x,al_sbyte1,#60,.nxup
	IFEQ	SPEED_MODE
	s_jmp_notdelay		1,.nxup
	ELSEIF
	lda			al_sbyte4,x
	and			#3
	rlbne			.nxup
	ENDC
	s_sub_alvar		B,x,al_rotx,#1
.nxup	s_set_var		B,viewtype,#viewtype_fpos
	s_decbne_alvar		B,x,al_sbyte1,.nboost
	s_OR_var		B,gameflags,#gf_stratdone1
.nboost

	s_jmp_ifnotstate	x,6,.ndone1
	s_OR_var		B,gameflags,#gf_stratdone1
.ndone1



.nend
	s_gen_3dvecs	x,al_roty,al_rotx,al_vel
	IFNE	SPEED_MODE
	inc		al_sbyte4,x
	ENDC
	s_add_vecs2pos	x

	s_end_strat



;*******************************************************************************
viewOutofLB1_Istrat	; player out of base
	s_start_strat
	s_set_strat	x,viewOutofLB1_strat
	s_set_alsflag	x,colldisable
	s_set_alvar	W,x,al_sword1,outdist	; Z offset
	s_set_alvar	W,x,al_sword2,#0	; Y offset
	s_set_alvar	W,x,al_ptr,#0		; X offset

	s_set_var		B,viewtype,#viewtype_fpos!viewtype_toobj

	s_set_alvar		B,x,al_rotx,#-deg45
	IFNE	SPEED_MODE
	s_set_alvar		B,x,al_sbyte4,#0
	ENDC
		
	s_AND_var		B,gameflags2,#~gf2_stratflag1

viewOutofLB1_strat
	s_start_strat
	

	s_jmp_alsflag		x,sflag3,.nexp
	s_jmpNOT_varAND		B,gameflags2,#gf2_stratflag1,.nexp
	IFEQ	SPEED_MODE
;	s_jmp_notdelay		1,.nexp
	ELSEIF
	s_jmp_notANDframe	#1,.nexp
	ENDC
	phx
	s_set_objtobevar	x,mapvar1
	jsl			makeLexpobj_srou
	s_add_rnd2pos		y,127,127,127
;	jsl			addrnd2posy_srou
	s_clr_alsflag		y,relexplode
	s_set_alsflag		y,nopolyexp
	s_add_alvar		W,y,al_worldy,#-400
;	s_set_alvar		W,y,al_vy,#-100

	jsl			makeLexpobj_srou
	s_clr_alsflag		y,relexplode
;	s_clr_alsflag		y,noexpsnd      
	s_set_alsflag		y,nopolyexp
	jsl			addrnd2posxyz2_srou
	s_add_alvar		W,y,al_worldy,#-800
	plx
.nexp


	s_set_objtobevar	y,viewtoobj
	s_jmp_ifnotstate	y,0,.nsgo1
	IFEQ	SPEED_MODE
	s_speedto		x,#maxpspeed-5,2
	ELSEIF
	lda			al_sbyte4,x
	bit			#1
	bne			.nsgo1
	s_speedto		x,#medpspeed,1
	ENDC
.nsgo1      
	s_jmp_ifnotstate	y,1,.nsgo2
	IFEQ	SPEED_MODE
	s_jmp_notdelay		0,.nsgo2
	ELSEIF
	lda			al_sbyte4,x
	bit			#1
	rlbne			.nsgo2
	ENDC
	s_achase_alvar		B,x,al_rotx,#0,5
.nsgo2
	s_jmp_ifnotstate	y,4,.nsgo3
	s_set_alsflag		x,sflag3
	s_set_speed		x,#0
.nsgo3
	IFNE	SPEED_MODE
	s_jmpNOT_alsflag	x,sflag2,.init_cam
	lda			viewtype
	bit			#viewtype_toobj
	beq			.done_cam
	ora			#viewtype_smooth
	sta			viewtype
	bra			.done_cam
.init_cam
	s_set_alsflag		x,sflag2
.done_cam
	inc			al_sbyte4,x
	ENDC


	ifeq	1
	s_jmp_ifnotstate	y,3,.nturn2
	s_set_alsflag		x,sflag3
	a16
	lda			al_worldx,x
	sec
	sbc.w			al_worldx,y
	sta			al_sword1,x

	lda			al_worldy,x
	sec
	sbc.w			al_worldy,y
	sta			al_sword2,x

	lda			al_worldz,x
	sec
	sbc.w			al_worldz,y
	sta			al_ptr,x
	a8
	s_set_alsflag		x,sflag2
.nturn2


	s_jmp_ifnotstate	y,4,.nturn3
	s_achase_alvar		W,x,al_sword1,#100,4
	s_achase_alvar		W,x,al_sword2,#50,4
	s_achase_alvar		W,x,al_ptr,#0,4
.nturn3

	s_jmp_ifnotstate	y,6,.nturn4
	s_achase_alvar		W,x,al_sword1,#0,4
	s_achase_alvar		W,x,al_sword2,#50,4
	s_achase_alvar		W,x,al_ptr,#-300,4
.nturn4



	s_jmp_ifnotstate	y,7,.nboost
	s_clr_alsflag		x,sflag2
.nboost




	s_jmpNOT_alsflag	x,sflag2,.nrel
	s_copy_pos		x,y
	s_add_alvars		W,x,al_worldx,x,al_sword1
	s_add_alvars		W,x,al_worldy,x,al_sword2
	s_add_alvars		W,x,al_worldz,x,al_ptr
	s_set_speed		x,#0
.nrel


	endc




	ifeq	0
	s_jmp_alsflag		x,sflag1,.nbexp
	s_set_objtobevar	y,viewtoobj
	s_jmp_lower		y,#-1000,.nbexp2
	s_set_alsflag		x,sflag1
	phx
	s_set_objtobevar	x,mapvar1
	s_make_obj		#nullshape,.badobj
	s_set_vartobeobj	circleobj,y
	s_copy_pos		y,x
;	bigFOexp_sprite
	a16
	lda			#laststage_circle
	sta			circleanim
	a8

	trigse		$1d

.badobj	plx
.nbexp
	s_set_objtobevar	y,circleobj
	s_add_alvars		W,y,al_worldy,x,al_vy
.nbexp2
	endc





	s_copy_alvar2var	W,x,viewposx,al_worldx
	s_copy_alvar2var	W,x,viewposy,al_worldy
	s_copy_alvar2var	W,x,viewposz,al_worldz

	s_gen_3dvecs		x,al_roty,al_rotx,al_vel
	s_add_vecs2pos		x
	s_end_strat


;**********************************************************************************
shipoutofLB3_Istrat		; player in space fly past.
	s_start_strat	
	s_set_strat	x,shipoutofLB3_strat
	s_set_alvar	B,x,al_sbyte1,#150
	s_set_altype	x,gnd
shipoutofLB3_strat
	s_start_strat

;----------------------------------------------
	s_jmp_ifnotstate	x,0,.nnorms
	IFEQ	SPEED_MODE
	s_beqdec_alvar		B,x,al_sbyte1,nextstate
	s_add_alvar		W,x,al_worldz,#medpspeed+35
	ELSEIF
	s_jmp_notdelay		0,.ndecs0
	s_beqdec_alvar		B,x,al_sbyte1,nextstate
	s_add_alvar		W,x,al_worldz,#1
.ndecs0	s_add_alvar		W,x,al_worldz,#medpspeed+17
	ENDC
	s_brl			.end
.nnorms
;----------------------------------------------
	s_jmp_ifnotstate	x,1,.nposs
	s_set_alvar		B,x,al_rotz,#0
	s_copy_alvar2alvar	W,x,al_worldz,x,al_ptr
	s_add_alvar		W,x,al_worldz,viewposz
	s_next_state		x
.nposs

;----------------------------------------------
	s_jmp_ifnotstate	x,2,.nwaits
	s_jmp_varAND		B,gameflags2,#gf2_stratflag1,nextstate
.dowait	s_set_objtobevar	y,viewtoobj
	s_copy_alvar2alvar	W,x,al_worldx,x,al_sword1
	s_add_alvars		W,x,al_worldx,y,al_worldx
	s_copy_alvar2alvar	W,x,al_worldy,x,al_sword2
	s_add_alvars		W,x,al_worldy,y,al_worldy
	IFEQ	SPEED_MODE
	s_add_alvar		W,x,al_worldz,#medpspeed+15
	ELSEIF
	s_add_alvar		W,x,al_worldz,#medpspeed+7
	s_jmp_notdelay		0,.end
	s_add_alvar		W,x,al_worldz,#1
	ENDC
	s_brl			.end
.nwaits

;----------------------------------------------
	s_jmp_ifnotstate	x,3,.nboostw
	s_decbne_alvar		B,x,al_sbyte2,.dowait
	s_set_vartobeobj	boostobj,x
	boost_sprite		#10
	trigse			$32		; BOOST SOUND.
	s_set_var		B,boostZoff,#-80
	s_next_state		x
	s_set_alvar		B,x,al_sbyte1,#15
.nboostw

;----------------------------------------------
	s_jmp_ifnotstate	x,4,.ngo
	IFEQ	SPEED_MODE
	s_add_alvar		W,x,al_worldz,#medpspeed+15
	s_add_vecs2pos		x
	s_jmp_alvarMORE		W,x,al_vz,#150,.maxz
	s_add_alvar		W,x,al_vz,#15
	ELSEIF
	s_add_alvar		W,x,al_worldz,#medpspeed+7
	s_add_vecs2pos		x
	s_jmp_notdelay		0,.nup
	s_add_alvar		W,x,al_worldz,#1
	s_jmp_alvarMORE		W,x,al_vz,#75,.maxz
	s_add_alvar		W,x,al_vz,#8
	ENDC
.maxz	
	s_decbne_alvar		B,x,al_sbyte1,.nup
	s_set_alvar		B,x,al_sbyte1,#1
	IFEQ	SPEED_MODE
	s_jmp_alvarEQ		W,x,al_vy,#-40,.nm
	s_add_alvar		W,x,al_vy,#-5
	ELSEIF
	s_jmp_alvarLESS		W,x,al_vy,#-20,.nm
	s_add_alvar		W,x,al_vy,#-3
	ENDC
.nm	s_achase_alvar		B,x,al_rotx,#-deg22,3
.nup
;	s_add_alvar		W,x,al_worldz,#150
.ngo

     	
.end
	s_end_strat

;**********************************************************************************
pshipoutofLB3_Istrat
	s_start_strat	
	s_set_strat	x,pshipoutofLB3_strat
	s_set_vartobeobj	viewtoobj,x
	s_set_var		B,viewtype,#viewtype_fpos!viewtype_toobj
	s_AND_var		B,gameflags,#~gf_stratdone1
	s_set_altype	x,gnd
pshipoutofLB3_strat
	s_start_strat

;----------------------------------------------
	s_jmp_ifnotstate	x,0,.nnorm
	s_jmp_varEQ		B,viewtype,#viewtype_norm,nextstate
	IFEQ	SPEED_MODE
	s_add_alvar		W,x,al_worldz,#medpspeed+19
	ELSEIF
	s_add_alvar		W,x,al_worldz,#medpspeed+9
	s_jmp_notdelay		0,.noez0
	s_add_alvar		W,x,al_worldz,#1
.noez0
	ENDC
	s_set_objtobevar	y,viewpt
	s_jmp_alsflag		x,sflag1,.nnear
	s_jmp_Zdistless		x,y,#500,.slow
	IFEQ	SPEED_MODE
	s_add_alvar		W,x,al_worldz,#11
	ELSEIF
	s_add_alvar		W,x,al_worldz,#5
	s_jmp_ifdelay		0,.nnear
	s_add_alvar		W,x,al_worldz,#1
	ENDC
	s_brl			.nnear
.slow 	s_set_alsflag		x,sflag1
.nnear

	s_jmp_Zdistmore		x,y,#3000,.nnorm
	s_jmp_notdelay		0,.nnorm
	s_add_alvar		W,x,al_worldx,#1
.nnorm

;----------------------------------------------
	s_jmp_ifnotstate	x,1,.nwaitb
	s_jmp_varAND		B,gameflags2,#gf2_stratflag1,nextstate
	IFEQ	SPEED_MODE
	s_add_alvar		W,x,al_worldz,#medpspeed+19
	s_add_alvars		W,x,al_worldz,x,al_sword1
	s_set_var		W,pviewvelz,#medpspeed+19-3
	s_jmp_alvarEQ		W,x,al_sword1,#-3,.nwaitb
	ELSEIF
	s_add_alvar		W,x,al_worldz,#medpspeed+10
	s_add_alvars		W,x,al_worldz,x,al_sword1
	s_set_var		W,pviewvelz,#medpspeed+8
	s_jmp_alvarEQ		W,x,al_sword1,#-2,.nwaitb
	ENDC
	s_jmp_notdelay		2,.nwaitb
	s_dec_alvar		W,x,al_sword1
.nwaitb
;----------------------------------------------
	s_jmp_ifnotstate	x,2,.nboostw
	IFEQ	SPEED_MODE
	s_add_alvar		W,x,al_worldz,#medpspeed+19-3
	ELSEIF
	s_add_alvar		W,x,al_worldz,#medpspeed+8
	ENDC
	s_decbne_alvar		B,x,al_sbyte2,.nboostw
	s_and_var		B,pshipflags3,#~psf3_enginesnd
	startbgm		bgm_fadeout
	s_set_vartobeobj	boostobj,x
	boost_sprite		#10
	trigse			$32		; BOOST SOUND.
	s_next_state		x
	s_set_alvar		B,x,al_sbyte1,#15
	s_brl			.end
.nboostw

;----------------------------------------------
	s_jmp_ifnotstate	x,3,.ngo
	IFEQ	SPEED_MODE
	s_add_alvar		W,x,al_worldz,#medpspeed+19-3
	s_add_vecs2pos		x
	s_jmp_alvarEQ		W,x,al_vz,#150,.maxz
	s_add_alvar		W,x,al_vz,#15
	ELSEIF
	s_add_alvar		W,x,al_worldz,#medpspeed+8
	s_add_vecs2pos		x
	s_jmp_notdelay		0,.nup
	s_jmp_alvarMORE		W,x,al_vz,#75,.maxz
	s_add_alvar		W,x,al_vz,#8
	ENDC
.maxz

	s_decbne_alvar		B,x,al_sbyte1,.nup
	s_set_alvar		B,x,al_sbyte1,#1
	IFEQ	SPEED_MODE
	s_jmp_alvarEQ		W,x,al_vy,#-40,.nm
	s_add_alvar		W,x,al_vy,#-5
	ELSEIF
	s_jmp_alvarLESS		W,x,al_vy,#-20,.nm
	s_add_alvar		W,x,al_vy,#-3
	ENDC
.nm	s_achase_alvar		B,x,al_rotx,#-deg22,3
.nup
	s_set_objtobevar	y,viewpt
	s_jmp_Zdistless		x,y,#2000,.nfpos
	s_AND_var		B,gameflags,#~gf_noZremove
	IFEQ	SPEED_MODE
	s_set_state		x,4
	ELSEIF
	; Match vanilla: stay in state 3 so boost/climb finishes after Z>=2000
	s_OR_var		B,gameflags,#gf_stratdone1
	ENDC
.nfpos	
;	s_set_var		B,viewtype,#viewtype_fpos!viewtype_toobj
.donev	
.ngo

	s_jmp_ifnotstate	x,4,.ndone2
	s_OR_var		B,gameflags,#gf_stratdone1
.ndone2

.end
	s_end_strat

;**********************************************************************************
viewoutofLB3_Istrat	; player out of base
	s_start_strat	
	s_set_strat	x,viewoutofLB3_strat
	s_set_speed	x,#medpspeed
	IFEQ	SPEED_MODE
	s_set_alvar	B,x,al_sbyte1,#50
	ELSEIF
	s_set_alvar	B,x,al_sbyte1,#100
	ENDC
	s_AND_var	B,gameflags2,#~gf2_stratflag1
	s_setnoremove_behind	x
viewoutofLB3_strat
	s_start_strat
	s_set_objtobevar	y,viewtoobj

;-----------------------------------------------------------
	s_jmp_ifnotstate	x,0,.nclose

	s_gen_3dvecs		x,al_roty,al_rotx,al_vel
	s_add_vecs2pos		x
	s_copy_alvar2var	W,x,viewposx,al_worldx
	s_copy_alvar2var	W,x,viewposy,al_worldy
	s_copy_alvar2var	W,x,viewposz,al_worldz

	s_jmp_Zdistmore		x,y,#250,.nclose
	IFEQ	SPEED_MODE
	s_speedto		x,#medpspeed+15,1
	ELSEIF
	s_jmp_notdelay		1,.nspd0
	s_speedto		x,#medpspeed+8,1
.nspd0
	ENDC
	s_decbne_alvar		B,x,al_sbyte1,.nclose
	s_next_state		x
	s_set_var		W,outdist,#280		;343-2
	s_set_var		W,outvy,#(-234*256)+256		;-(234*256)-256
	s_set_var		B,viewtype,#viewtype_norm
	IFEQ	SPEED_MODE
	s_set_alvar		W,x,al_sword1,#230
	ELSEIF
	s_set_alvar		W,x,al_sword1,#460
	s_set_alvar		B,x,al_sbyte4,#0
	ENDC
.nclose

;-----------------------------------------------------------
	s_jmp_ifnotstate	x,1,.nswing
	IFEQ	SPEED_MODE
	s_add_alvar		B,x,al_sbyte3,#1
	s_set_var2alvartab	B,B,B,svar_word1+1,x,al_sbyte3,sintab,-2
	s_set_var		B,svar_word1,#0
	s_achase_var		W,outvx,svar_word1,3
	s_sub_var		W,outvy,#256
	jsr			viewlb3move_srou
	
	s_jmp_alvarLESS		W,x,al_sword1,#100,.nfar
	s_jmp_varMORE		W,outdist,#600,.donedist
	s_add_var		W,outdist,#2
	s_brl			.donedist
.nfar
	s_sub_var		W,outdist,#1
.donedist
	ELSEIF
	jsr			viewlb3vx_srou
	s_sub_var		W,outvy,#128
	jsr			viewlb3move_srou
	s_jmp_alvarLESS		W,x,al_sword1,#200,.nfar
	s_jmp_varMORE		W,outdist,#600,.donedist
	s_add_var		W,outdist,#1
	s_brl			.donedist
.nfar
	s_jmp_notdelay		0,.donedist
	s_sub_var		W,outdist,#1
.donedist
	ENDC

	s_decbne_alvar		W,x,al_sword1,.nswing
	s_next_state		x
	IFEQ	SPEED_MODE
	s_set_alvar		B,x,al_sbyte1,#70
	ELSEIF
	s_set_alvar		B,x,al_sbyte1,#140
	ENDC
.nswing


;-----------------------------------------------------------
	s_jmp_ifnotstate	x,2,.ngone
	IFEQ	SPEED_MODE
	s_achase_var		W,outvx,#0,5
	s_achase_var		W,outvy,#0,5
	ELSEIF
	s_achase_var		W,outvx,#0,6
	s_achase_var		W,outvy,#0,6
	ENDC
	s_decbne_alvar		B,x,al_sbyte1,.nfin
     	s_set_var		B,levelfinished,#le_endofgame
	s_next_state		x
.nfin
	jsr			viewlb3move_srou
.ngone

;-----------------------------------------------------------
	s_jmp_ifnotstate	x,3,.nwait

	IFEQ	SPEED_MODE
	s_achase_var		W,outvx,#0,3
	s_achase_var		W,outvy,#0,3
	ELSEIF
	s_achase_var		W,outvx,#0,4
	s_achase_var		W,outvy,#0,4
	ENDC

	jsr			viewlb3move_srou
	s_jmp_varNE		B,levelfinished,#le_endtotalscore,.nwait
	s_next_state		x		    
	s_set_alvar		B,x,al_sbyte1,#deg360-deg45
	s_set_alvar		B,x,al_sbyte3,#0
	IFNE	SPEED_MODE
	s_set_alvar		B,x,al_sbyte4,#0
	ENDC
.nwait

;-----------------------------------------------------------
	s_jmp_ifnotstate	x,4,.nturn2

	IFEQ	SPEED_MODE
	s_dec_alvar		B,x,al_sbyte1
	s_jmp_alvarEQ		B,x,al_sbyte1,#deg22,nextstate
	s_jmp_alvarNE		B,x,al_sbyte1,#deg360-deg45-deg90,.nsnd
	trigse			$d	; START SPEECH ; come in corneria
.nsnd

	s_add_var		W,outdist,#1

	s_add_alvar		B,x,al_sbyte3,#1
	s_set_var2alvartab	B,B,B,svar_word1+1,x,al_sbyte3,sintab,-2
	s_set_var		B,svar_word1,#0
	s_achase_var		W,outvx,svar_word1,3
	s_sub_var		W,outvy,#256
	jsr			viewlb3move_srou
	ELSEIF
	lda			al_sbyte4,x
	bit			#1
	bne			.nturn2_odd
	s_dec_alvar		B,x,al_sbyte1
	s_jmp_alvarEQ		B,x,al_sbyte1,#deg22,nextstate
	s_jmp_alvarNE		B,x,al_sbyte1,#deg360-deg45-deg90,.nsnd
	trigse			$d	; START SPEECH
.nsnd
	s_add_var		W,outdist,#1
.nturn2_odd
	jsr			viewlb3vx_srou
	s_sub_var		W,outvy,#128
	jsr			viewlb3move_srou
	ENDC

.nturn2

;----------------------------------------------------------
	s_jmp_ifnotstate	x,5,.nzoominI
	IFEQ	SPEED_MODE
	s_set_alvar		B,x,al_sbyte1,#60
	ELSEIF
	s_set_alvar		B,x,al_sbyte1,#120
	ENDC
	s_next_state		x
.nzoominI

;----------------------------------------------------------
	s_jmp_ifnotstate	x,6,.nzoomin
	IFEQ	SPEED_MODE
	s_achase_var		W,outvx,#0,5
	s_achase_var		W,outvy,#0,5
	s_achase_var		W,outdist,#100,5
	ELSEIF
	s_achase_var		W,outvx,#0,6
	s_achase_var		W,outvy,#0,6
	s_achase_var		W,outdist,#100,6
	ENDC
;	s_jmp_varEQ		B,viewtype,#viewtype_fpos,.nrot

	jsr			viewlb3move_srou
	IFEQ	SPEED_MODE
	s_add_var		W,viewposz,#medpspeed+15
	ELSEIF
	s_add_var		W,viewposz,#medpspeed+8
	ENDC

	s_decbne_alvar		B,x,al_sbyte1,.nzoomin
	s_set_alvar		B,x,al_sbyte1,#1
	s_or_var		B,gameflags2,#gf2_stratflag1
	s_set_var		B,viewtype,#viewtype_fpos
.nzoomin


;----------------------------------------------------------
	ifeq	1
	d_print_alvar		B,x,al_stratstate,1
	a16
	lda.w			al_worldx,y
	sec
	sbc			al_worldx,x
	sta			svar_word1
	lda.w			al_worldz,y
	sec
	sbc			al_worldz,x
	sta			svar_word2
	a8

	d_print_var		W,svar_word1,1
	d_print_var		W,svar_word2,2
	d_print_var		W,outvx,3

	s_obj2obj_3dangle	x,y,al_sbyte3,al_sbyte4,0
	d_print_alvar		B,x,al_sbyte3,2
	endc

	s_end_strat

viewlb3move_srou
	s_copy_alvar2var	W,y,pviewposx,al_worldx
	s_copy_alvar2var	W,y,pviewposy,al_worldy
	s_copy_alvar2var	W,y,pviewposz,al_worldz
	IFEQ	SPEED_MODE
	s_add_var		W,pviewposz,#medpspeed+15
	ELSEIF
	s_add_var		W,pviewposz,#medpspeed+8
	ENDC
	rts

	IFNE	SPEED_MODE
; Smooth 30fps vertical pitch sine target for viewoutofLB3 states 1 & 4:
; advances al_sbyte3 at 0.5 indices/frame using 16-bit sintab16 (>>2) with linear
; midpoint interpolation on odd half-steps, chasing outvx at rate 4 every frame.
viewlb3vx_srou
	phy
	phx
	lda	al_sbyte4,x
	bit	#1
	bne	.vlbx_lookup
	s_add_alvar	B,x,al_sbyte3,#1
.vlbx_lookup
	a16
	lda.w	al_sbyte4,x
	tay
	lda.w	al_sbyte3,x
	and	#$00ff
	asl	a
	tax
	lda.l	sintab16,x
	asra
	asra
	sta	svar_word1
	tya
	and	#$0001
	beq	.vlbx_done
	lda.l	sintab16+2,x
	asra
	asra
	clc
	adc	svar_word1
	asra
	sta	svar_word1
.vlbx_done
	a8
	plx
	ply
	s_achase_var	W,outvx,svar_word1,4
	s_add_alvar	B,x,al_sbyte4,#1
	rts
	ENDC

;**********************************************************************************
pshipcolony_Istrat
	s_start_strat
	s_set_alvar	B,x,al_sbyte1,#1
	s_set_strat	x,pshipcolony_strat
	s_set_speed	x,#medpspeed
	s_set_alsflag	x,shadow
pshipcolony_strat
	s_start_strat
	
	s_copy_alvar2var	B,x,svar_byte1,al_rotx
	s_scale_var		B,svar_byte1,1
	IFEQ	SPEED_MODE
	s_achase_alvar		B,x,al_rotz,svar_byte1,4
	s_achase_var		B,outvz+1,svar_byte1,4

	s_copy_alvar2var	B,x,svar_byte1,al_rotx
	s_neg_var		B,svar_byte1
	s_achase_var		B,outvx+1,svar_byte1,2
	ELSEIF
	s_achase_alvar		B,x,al_rotz,svar_byte1,5
	s_achase_var		B,outvz+1,svar_byte1,5

	s_copy_alvar2var	B,x,svar_byte1,al_rotx
	s_neg_var		B,svar_byte1
	s_achase_var		B,outvx+1,svar_byte1,3
	ENDC

	IFNE	SPEED_MODE
	s_jmp_notANDframe	#1,.nnext
	ENDC
	s_decbne_alvar		B,x,al_sbyte1,.nnext
	s_set_alvar2alvartab	B,B,B,x,al_sbyte1,x,al_sbyte2,pshipcolonyrot_tab
	s_set_alvar2alvartab	B,B,B,x,al_sbyte3,x,al_sbyte2,pshipcolonyrot_tab+1
	s_add_alvar		B,x,al_sbyte2,#2
	s_jmp_alvarZERO		B,x,al_sbyte1,.straight
.nnext
	IFEQ	SPEED_MODE
	s_achase_alvar2alvar	B,x,al_rotx,x,al_sbyte3,3
	ELSEIF
	s_achase_alvar2alvar	B,x,al_rotx,x,al_sbyte3,4
	ENDC

.cont	
	s_copy_alvar2var	W,x,pviewposx,al_worldx
	s_copy_alvar2var	W,x,pviewposy,al_worldy
	s_copy_alvar2var	W,x,pviewposz,al_worldz
	s_add_var		W,bgsscrollZ,#medpspeed

	s_gen_3dvecs		x,al_roty,al_rotx,al_vel
	s_add_vecs2pos		x
	s_end_strat


.straight
	s_set_strat	x,.straightstrat
	s_set_vartobeobj	boostobj,x
	boost_sprite
	trigse		$32
	IFEQ	SPEED_MODE
	s_set_speed		x,#120
	s_set_alvar		B,x,al_sbyte1,#30
	ELSEIF
	s_set_speed		x,#60
	s_set_alvar		B,x,al_sbyte1,#60
	ENDC
.straightstrat
	s_start_strat
	s_achase_var		B,outvz+1,#0,4
	s_achase_var		B,outvx+1,#0,4
	s_achase_alvar		B,x,al_rotz,#0,4
	s_achase_alvar		B,x,al_rotx,#0,4
	IFEQ	SPEED_MODE
	s_add_alvar		W,x,al_worldz,#150
	ELSEIF
	s_add_alvar		W,x,al_worldz,#75
	ENDC
	s_achase_alvar		W,x,al_worldy,#Ltunnel_viewCY,4
	s_decbne_alvar		B,x,al_sbyte1,.cont
	s_set_objtobeplayer	y
	s_set_strat		y,playerinLtunnel_Istrat
	stz			dozrot
	s_clr_alsflag		y,invisible
	s_set_alvar		W,y,al_worldx,#0
	s_set_alvar		W,y,al_worldy,#Ltunnel_viewCy
	s_copy_alvar2alvar	W,y,al_worldz,x,al_worldz
	IFEQ	SPEED_MODE
	s_add_alvar		W,y,al_worldz,#120
	ELSEIF
	s_add_alvar		W,y,al_worldz,#60
	ENDC
	s_set_strat		x,remove_Istrat
	s_brl			.cont	



pipescale	=	16
		  
pshipcolonyrot_tab
	db	((120/2)<<4)/medpspeed,0

	db	((40*pipescale)/medpspeed)-5,(deg360/12)*0
	db	((40*pipescale)/medpspeed),(deg360/12)*-1
	db	((40*pipescale)/medpspeed)+5,(deg360/12)*-2
	db	((40*pipescale)/medpspeed),(deg360/12)*-1
	db	((40*pipescale)/medpspeed),(deg360/12)*0
	db	((40*pipescale)/medpspeed),(deg360/12)*1
	db	((40*pipescale)/medpspeed),(deg360/12)*2
	db	((40*pipescale)/medpspeed)+4,(deg360/12)*3
	db	((40*pipescale)/medpspeed),(deg360/12)*3

	db	((40*pipescale)/medpspeed)+3,(deg360/12)*2
	db	((40*pipescale)/medpspeed)+3,(deg360/12)*1
	db	((40*pipescale)/medpspeed),(deg360/12)*0
	db	((40*pipescale)/medpspeed),(deg360/12)*-1
	db	((40*pipescale)/medpspeed),(deg360/12)*-2

	db	((40*pipescale)/medpspeed),(deg360/12)*-3
	db	((40*pipescale)/medpspeed),(deg360/12)*-2
	db	((40*pipescale)/medpspeed)-5,(deg360/12)*-1

	db	((40*pipescale)/medpspeed),(deg360/12)*0


	db	((100*pipescale)/medpspeed),(deg360/12)*0
	db	0
	db	((100*pipescale)/medpspeed),(deg360/12)*0
	db	((100*pipescale)/medpspeed),(deg360/12)*0
	db	((100*pipescale)/medpspeed),(deg360/12)*0
	db	((100*pipescale)/medpspeed),(deg360/12)*0
	db	((100*pipescale)/medpspeed),(deg360/12)*0

	db	0
;**********************************************************************************
; AUTOGUIDE: Space Armada Core Navigation Entry - Choreographed bank-and-pitch flight path guiding the Arwing down the flagship core shaft.
pshipwashent_Istrat
	s_start_strat
	s_set_alvar	B,x,al_sbyte1,#1
	s_set_strat	x,pshipwashent_strat
	s_set_speed	x,#medpspeed
	s_set_alsflag	x,shadow
	IFNE	SPEED_MODE
	s_set_alvar	W,x,al_sword1,#0
	s_set_alvar	W,x,al_sword2,#0
	s_set_var	B,outvx,#0
	s_set_var	B,outvz,#0
	ENDC
; AUTOGUIDE: Core S-Curve Execution - Steers the ship along the S-curve trajectory into the boss chamber.
pshipwashent_strat
	s_start_strat
	
	IFEQ	SPEED_MODE
	s_copy_alvar2var	B,x,svar_byte1,al_rotx
	s_scale_var		B,svar_byte1,1
	s_achase_alvar		B,x,al_rotz,svar_byte1,4
	s_achase_var		B,outvz+1,svar_byte1,4

	s_copy_alvar2var	B,x,svar_byte1,al_rotx
	s_neg_var		B,svar_byte1
	s_achase_var		B,outvx+1,svar_byte1,2
	ELSEIF
	s_copy_alvar2var	W,x,svar_word1,al_sword1
	s_scale_var		W,svar_word1,1
	s_achase_alvar		W,x,al_sword2,svar_word1,5
	s_copy_alvar2alvar	B,x,al_rotz,x,al_sword2+1
	s_achase_var		W,outvz,svar_word1,5

	s_copy_alvar2var	W,x,svar_word1,al_sword1
	s_neg_var		W,svar_word1
	s_achase_var		W,outvx,svar_word1,3
	ENDC

	s_decbne_alvar		B,x,al_sbyte1,.nnext
	s_set_alvar2alvartab	B,B,B,x,al_sbyte1,x,al_sbyte2,pshipwashentrot_tab
	s_set_alvar2alvartab	B,B,B,x,al_sbyte3,x,al_sbyte2,pshipwashentrot_tab+1
	s_add_alvar		B,x,al_sbyte2,#2
	s_jmp_alvarZERO		B,x,al_sbyte1,.straight
.nnext
	IFEQ	SPEED_MODE
	s_achase_alvar2alvar	B,x,al_rotx,x,al_sbyte3,3
	ELSEIF
	s_set_var		B,svar_word1,#0
	s_copy_alvar2var	B,x,svar_word1+1,al_sbyte3
	s_achase_alvar		W,x,al_sword1,svar_word1,4
	s_copy_alvar2alvar	B,x,al_rotx,x,al_sword1+1
	ENDC

.cont	
	s_copy_alvar2var	W,x,pviewposx,al_worldx
	s_copy_alvar2var	W,x,pviewposy,al_worldy
	s_copy_alvar2var	W,x,pviewposz,al_worldz

	s_gen_3dvecs		x,al_roty,al_rotx,al_vel
	s_add_vecs2pos		x
	s_end_strat


.straight
	s_set_strat	x,.straightstrat
;	-- 30fps Speed Mode Scaling (15fps baseline: 2x frame timers, 50% per-frame velocity) --
	IFEQ	SPEED_MODE
	s_set_alvar		B,x,al_sbyte1,#30
	ELSEIF
	s_set_alvar		B,x,al_sbyte1,#60
	ENDC
	trigse			$33
;	s_set_speed		x,#20
.straightstrat
	s_start_strat

	IFEQ	SPEED_MODE
	s_achase_var		W,outdist,#0,3

	s_achase_alvar		W,x,al_worldy,#nucleus_viewCy,3
	s_achase_var		B,outvz+1,#0,4
	s_achase_var		B,outvx+1,#0,4
	s_achase_alvar		B,x,al_rotz,#0,4
	s_achase_alvar		B,x,al_rotx,#0,4
	ELSEIF
	s_achase_var		W,outdist,#0,4

	s_achase_alvar		W,x,al_worldy,#nucleus_viewCy,4
	s_achase_var		W,outvz,#0,4
	s_achase_var		W,outvx,#0,4
	s_achase_alvar		W,x,al_sword2,#0,4
	s_copy_alvar2alvar	B,x,al_rotz,x,al_sword2+1
	s_achase_alvar		W,x,al_sword1,#0,4
	s_copy_alvar2alvar	B,x,al_rotx,x,al_sword1+1
	ENDC
	s_set_objtobeplayer	y
	s_copy_alvar2alvar	W,y,al_worldz,x,al_worldz
	s_decbne_alvar		B,x,al_sbyte1,.cont
	s_set_strat		y,playerinnucleus_Istrat
	stz			dozrot
	IFNE	SPEED_MODE
	s_set_3vars		W,outvx,outvz,outdist,#0,#0,#0
	ENDC
;	jsl			vofsoffplease_l
	s_clr_alsflag		y,invisible
	s_set_alvar		W,y,al_worldx,#0
;	s_set_alvar		W,y,al_worldy,#nucleus_viewCy
	s_add_alvar		W,y,al_worldz,#medpspeed
	s_remove_obj		x
	s_brl			.cont	



pipescale	=	16
		  
pshipwashentrot_tab
;	-- 30fps Speed Mode Scaling (15fps baseline: 2x frame timers, 50% per-frame velocity) --
	IFEQ	SPEED_MODE
	db	((120/2)<<4)/medpspeed,0

	db	((40*pipescale)/medpspeed)-5,(deg360/12)*0
	db	((40*pipescale)/medpspeed),(deg360/12)*-1
	db	((40*pipescale)/medpspeed)+5,(deg360/12)*-2
	db	((40*pipescale)/medpspeed),(deg360/12)*-1
	db	((40*pipescale)/medpspeed),(deg360/12)*0
	db	((40*pipescale)/medpspeed),(deg360/12)*1
	db	((40*pipescale)/medpspeed)+7,(deg360/12)*2
	db	((40*pipescale)/medpspeed)-5,(deg360/12)*1

	db	((40*pipescale)/medpspeed),(deg360/12)*0
	db	((40*pipescale)/medpspeed),(deg360/12)*0
	db	((40*pipescale)/medpspeed),(deg360/12)*0

	db	0
	ELSEIF
	db	(((120/2)<<4)/medpspeed)+4,0

	db	((40*pipescale)/medpspeed)-11,(deg360/12)*0
	db	((40*pipescale)/medpspeed)-1,(deg360/12)*-1
	db	((40*pipescale)/medpspeed)+8,(deg360/12)*-2
	db	((40*pipescale)/medpspeed)-1,(deg360/12)*-1
	db	((40*pipescale)/medpspeed)+1,(deg360/12)*0
	db	((40*pipescale)/medpspeed)-1,(deg360/12)*1
	db	((40*pipescale)/medpspeed)+15,(deg360/12)*2
	db	((40*pipescale)/medpspeed)-11,(deg360/12)*1

	db	((40*pipescale)/medpspeed)-1,(deg360/12)*0
	db	((40*pipescale)/medpspeed)-1,(deg360/12)*0
	db	((40*pipescale)/medpspeed)-1,(deg360/12)*0

	db	0
	ENDC
;	db	((40*pipescale)/medpspeed),(deg360/12)*0
;	db	((40*pipescale)/medpspeed),(deg360/12)*0

	db	0



;**********************************************************************************
ship0cdown_Istrat
	s_set_alsflag		x,colldisable
	s_set_strat		x,ship0cdown_strat
	IFEQ	SPEED_MODE
	s_set_alvar		B,x,al_sbyte1,#60
	s_set_lifecnt		x,#60+35+20
	ELSEIF
	s_set_alvar		B,x,al_sbyte1,#120
	s_set_lifecnt		x,#(60+35+20)*2
	ENDC
ship0cdown_strat
	s_start_strat
	s_dec_lifecnt		x
	IFEQ	SPEED_MODE
	s_achase_alvar		B,x,al_rotx,#deg45,5
	ELSEIF
	s_achase_alvar		B,x,al_rotx,#deg45,6
	ENDC

	IFNE	SPEED_MODE
	s_jmp_notANDframe	#1,.doneexp0
	ENDC
	s_jmpNOT_alsflag	x,sflag1,.normexp
	jsl			makeFOLexpobj_srou
	jsl			addrnd2posxyz2_srou
	s_set_alsflag		y,nopolyexp
	s_add_alvar		W,y,al_worldz,#300
.normexp
	jsl			makeLexpobj_srou
	jsl			addrnd2posxyz2_srou
	s_set_alsflag		y,nopolyexp
	s_add_alvar		W,y,al_worldz,#300

.doneexp0
	s_jmp_alsflag		x,sflag1,.doneexp
	s_decbne_alvar		B,x,al_sbyte1,.nexp
	s_set_alsflag		x,sflag1
	s_set_vartobeobj	circleobj,x
	a16
	lda			#laststage_circle
	sta			circleanim
	a8
	trigse	$1d

	s_make_obj		#nullshape,.badobj
	s_set_strat		y,BIGparticleexplode_Istrat
	s_copy_pos		y,x
.badobj

.nexp	
	IFEQ	SPEED_MODE
	s_add_alvar		W,x,al_worldz,#medpspeed-10
	s_add_alvar		W,x,al_worldy,#5
	ELSEIF
	s_add_alvar		W,x,al_worldz,#(medpspeed-10)/2
	s_add_alvar		W,x,al_worldy,#2
	ENDC
.doneexp

	s_end_strat

;**************************************************************************************
floatCLship_l
	IFNE	SPEED_MODE
	s_jmp_notANDframe	#1,.pfzptrok
	ENDC
	s_inc_alvar		B,x,al_sbyte3
	s_jmp_alvarNE		B,x,al_sbyte3,#pZrotfloattab_len,.pfzptrok
	s_set_alvar		B,x,al_sbyte3,#0
.pfzptrok	s_set_alvar2alvartab	B,B,B,x,al_rotz,x,al_sbyte3,pZrotfloattab,1


	IFNE	SPEED_MODE
	s_jmp_notANDframe	#1,.ninc_y
	ENDC
	s_inc_alvar		B,x,al_sbyte4
.ninc_y
	s_scale_alvar		B,x,al_sbyte4,1
	s_jmp_alvarNE		B,x,al_sbyte4,#viewfloattab_len,.nmaxy
	s_set_alvar		B,x,al_sbyte4,#0
.nmaxy

	s_set_alvar2alvartab	B,B,W,x,al_worldy,x,al_sbyte4,viewfloattab,1
	s_scale_alvar		B,x,al_sbyte4,-1
	rtl


;**************************************************************************************
floatCLship2_l
	s_inc_alvar		B,x,al_sbyte3
	s_jmp_alvarNE		B,x,al_sbyte3,#pZrotfloattab_len,.pfzptrok
	s_set_alvar		B,x,al_sbyte3,#0
.pfzptrok	s_set_var2alvartab	B,B,B,smvar_byte1,x,al_sbyte3,pZrotfloattab,-2

	s_add_alvar		B,x,al_rotz,smvar_byte1


	s_inc_alvar		B,x,al_sbyte4
	s_scale_alvar		B,x,al_sbyte4,1
	s_jmp_alvarNE		B,x,al_sbyte4,#viewfloattab_len,.nmaxy
	s_set_alvar		B,x,al_sbyte4,#0
.nmaxy

	s_set_var2alvartab	B,B,W,smvar_word1,x,al_sbyte4,viewfloattab,-2
	s_Add_alvar		W,x,al_worldy,smvar_word1
	s_scale_alvar		B,x,al_sbyte4,-1

	rtl






