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
;*   File: KSTRATS.ASM                                                     *
;*                                                                         *
;*                                                                         *
;*_________________________________________________________________________*
;*                                                                         *
;*  Descr: Krister's STRATEGY ROUTINES.                                    *
;*                                                                         *
;*                                                                         *
;*_________________________________________________________________________*
;*                                                                         *
;*   Date: 3/9/92                                                          *
;*                                                                         *
;*                                                                         *
;*_________________________________________________________________________*
;*                                                                         *
;* Author:						                                           *
;*                                                                         *
;*		Krister Wombell    		                                           *
;*                                                                         *
;***************************************************************************

	incpublics	EXT\kstrats.ext

	strats_start

zaco3HP	equ	2
zaco3AP	equ	8
zaco0HP	equ	2
zaco0AP	equ	8
carrierHP	equ	16
carrierAP	equ	10
tank1HP	equ	2
tank1AP	equ	16
; --- Ground Tank Firing Rate: Scaled from 50 -> 100 frames (~3.33s interval at 30fps) ---
	IFEQ	SPEED_MODE
tank1firerate equ	50
	ELSEIF
tank1firerate equ	100
	ENDC
houdai5HP	equ	4
houdai5AP	equ	6
pillar3fHP	equ	8
pillar3ffallHP equ	4
pillar3fAP	equ	8
pillar3fDIST equ	500
	IFEQ	SPEED_MODE
carrierrate	equ	30
	ELSEIF
carrierrate	equ	60
	ENDC

fogdist	equ	2000

; Local SPEED_MODE helpers for KSTRATS.ASM (dithered 30fps steps & 15Hz-paced 3D accel)
s_add_alvar_dither	MACRO	size,var,evenv,oddv
	s_jmp_notANDframe	#1,.odd\@
	s_add_alvar	\1,x,\2,#\3
	s_brl		.done\@
.odd\@
	s_add_alvar	\1,x,\2,#\4
.done\@
	ENDM

s_move3d_obj_sm	MACRO	spd0,spd1
	IFEQ	SPEED_MODE
	s_move3d_obj	x,\1,2,0
	ELSEIF
	s_jmp_notANDframe	#1,.nspd\@
	s_speedto		x,\2,1
.nspd\@
	s_gen_3Dvecs		x,al_roty,al_rotx,al_vel
	s_add_vecs2pos		x
	ENDC
	ENDM

s_add_alvar_sb1_dither	MACRO	size,var,evenv,oddv
	a8
	lda		al_sbyte1,x
	and		#1
	bne		.odd\@
	s_add_alvar	\1,x,\2,#\3
	s_brl		.done\@
.odd\@
	s_add_alvar	\1,x,\2,#\4
.done\@
	a8
	ENDM

s_theend_init_sbyte1	MACRO
	IFEQ	SPEED_MODE
	s_set_alvar	B,x,al_sbyte1,#51
	ELSEIF
	s_set_alvar	B,x,al_sbyte1,#102
	ENDC
	ENDM

s_theend_step_sm	MACRO	dx,dy,dxe,dxo,dye,dyo
	IFEQ	SPEED_MODE
	s_add_alvar	W,x,al_worldx,#\1
	s_add_alvar	W,x,al_worldy,#\2
	s_add_alvar	B,x,al_rotx,#5
	s_add_alvar	B,x,al_roty,#5
	ELSEIF
	s_add_alvar_sb1_dither	W,al_worldx,\3,\4
	s_add_alvar_sb1_dither	W,al_worldy,\5,\6
	s_add_alvar_sb1_dither	B,al_rotx,3,2
	s_add_alvar_sb1_dither	B,al_roty,3,2
	ENDC
	ENDM



s_initfog	MACRO
	a16
	lda	al_shape,x
	sta	al_sword1,x
	a8
	ENDM

s_dofog	MACRO
	lda	infog
	beq	.ok\@
	s_set_objtobeplayer	y
	s_jmp_Zdistmore	x,y,#fogdist,.setfog\@
	a16
	lda	al_sword1,x
	sta	al_shape,x
	a8
	bra		.ok\@
.setfog\@	s_set_alvar		W,x,al_shape,#nullshape
.ok\@
	ENDM


deg30	equ	deg60/2





;-----------------------------------------------------------------------------
; AUTOGUIDE: Venomian Kamikaze Dive-Bomber - Fast attack craft that attempts to ram directly into the Arwing cockpit.
zaco4_Istrat		;find a pillar, shoot it, fly away
	s_start_strat
	s_set_find		0
	s_set_alvar		B,x,al_sbyte3,#4
	s_find_nearobj	y,x,#pillar3,#0,#10000,z34exit
	s_jmp		zaco34_Istrat
z34exit	s_end_strat
; AUTOGUIDE: Venomian Stinger Fighter (Zaco 3) - Aggressive attack craft that matches the player altitude and fires single plasma bolts.
zaco3_Istrat		;find a houdai, shoot it, fly away   .......  just like all the rest of the strats
	s_start_strat
	s_set_find		0
	s_set_alvar		B,x,al_sbyte3,#3
	s_find_nearobj	y,x,#houdai_0,#0,#10000,z34exit
zaco34_Istrat
	set_sound2	x,1
	s_set_alvartobeobj	x,al_ptr,y
	s_set_alptrs	x,zaco3_strat,hitflash_Istrat,zaco3die_istrat
	s_set_aldata	x,#zaco3HP,#zaco3AP
	s_set_alvar		B,x,al_rotz,#deg90
	s_set_alvar		B,x,al_sbyte1,#2
	s_set_alvar		B,x,al_sbyte2,#140
	IFNE	SPEED_MODE
	s_set_alvar		B,x,al_sbyte4,#3
	s_set_alvar		B,x,al_sbyte5,#2
	ENDC
	s_set_colltype	x,enemy1
	s_end_strat

zaco3_strat	s_start_strat
	s_set_objtobealvar	y,x,al_ptr
	s_chk_objptr	y,.noobj
	IFEQ	SPEED_MODE
	s_obj2obj_3Dangle	x,y,al_roty,al_rotx,4
	s_jmp_distless	y,x,#1300,.fire
	s_jmp		.nofire
.fire	s_jmp_notANDframe	#7,.nofire
	ELSEIF
	jsr		kami_step20hz
	lbcc		.nrot_z3a
	s_obj2obj_3Dangle	x,y,al_roty,al_rotx,4
.nrot_z3a
	s_jmp_distless	y,x,#1300,.fire
	s_jmp		.nofire
.fire	s_decbne_alvar	B,x,al_sbyte4,.nofire
	s_set_alvar		B,x,al_sbyte4,#12
	ENDC
	s_beqdec_alvar	B,x,al_sbyte1,.circle
	s_weapon_pos	#0,#0,#0
	s_weapon_rot	#0,#0
	s_fire_weapon	x,relslowelaser
.nofire
	IFEQ	SPEED_MODE
	s_move3D_obj	x,#40,2,0
	ELSEIF
	s_speedto	x,#27,1
	s_gen_3Dvecs	x,al_roty,al_rotx,al_vel
	s_add_vecs2pos	x
	ENDC
	s_end_strat
	IFEQ	SPEED_MODE
.noobj	s_achase_alvar	B,x,al_rotx,#-deg45,3
	s_jmp		.nofire
.circle	s_set_strat		x,zaco3circle_strat
	s_set_alvar		B,x,al_sbyte1,#30
	s_set_alvar		B,x,al_rotx,#0
zaco3circle_strat
	s_start_strat
	s_set_objtobealvar	y,x,al_ptr
	s_obj2obj_angle	x,y,al_roty,4
	s_Achase_alvar	B,x,al_rotx,#0,2
	s_decbeq_alvar	B,x,al_sbyte1,.flyaway
	lda		al_sbyte3,x
	cmp		#3
	beq		.z3
	s_Achase_alvar	W,x,al_worldy,#-200,1
	bra		.z4
.z3	s_Achase_alvar	W,x,al_worldy,#-60,1
.z4	s_move3D_obj	x,#30,2,0
	s_end_strat
.flyaway
	s_start_strat
	s_set_strat		x,.flyaway
	s_set_objtobealvar	y,x,al_ptr
	s_chk_objptr	y,.left
	s_jmp_rightofview	x,.left
	s_achase_alvar	B,x,al_roty,#-30,4
	s_jmp		.done
.left	s_achase_alvar	B,x,al_roty,#30,4
.done	s_achase_alvar	B,x,al_rotx,#-30,2
	s_move3D_obj	x,#20,2,0
	s_add_playerZ	x
	s_decbeq_alvar	B,x,al_sbyte2,.kill
	ELSEIF
.noobj	jsr		kami_step20hz
	lbcc		.nofire
	s_achase_alvar	B,x,al_rotx,#-deg45,3
	s_jmp		.nofire
.circle	s_set_strat		x,zaco3circle_strat
	s_set_alvar		B,x,al_sbyte1,#30
	s_set_alvar		B,x,al_rotx,#0
	s_set_alvar		B,x,al_sbyte5,#2
zaco3circle_strat
	s_start_strat
	s_set_objtobealvar	y,x,al_ptr
	jsr		kami_step20hz
	lbcc		.nrot_z3b
	s_obj2obj_angle	x,y,al_roty,4
	s_Achase_alvar	B,x,al_rotx,#0,2
	s_decbeq_alvar	B,x,al_sbyte1,.flyaway
	lda		al_sbyte3,x
	cmp		#3
	beq		.z3
	s_Achase_alvar	W,x,al_worldy,#-200,1
	bra		.nrot_z3b
.z3	s_Achase_alvar	W,x,al_worldy,#-60,1
.nrot_z3b
	s_speedto	x,#20,1
	s_gen_3Dvecs	x,al_roty,al_rotx,al_vel
	s_add_vecs2pos	x
	s_end_strat
.flyaway
	s_start_strat
	s_set_alvar		B,x,al_sbyte5,#2
	s_set_strat		x,.flyaway_loop
.flyaway_loop
	s_start_strat
	jsr		kami_step20hz
	lbcc		.nspd_z3c
	s_set_objtobealvar	y,x,al_ptr
	s_chk_objptr	y,.left
	s_jmp_rightofview	x,.left
	s_achase_alvar	B,x,al_roty,#-30,4
	s_jmp		.done
.left	s_achase_alvar	B,x,al_roty,#30,4
.done	s_achase_alvar	B,x,al_rotx,#-30,2
	s_decbeq_alvar	B,x,al_sbyte2,.kill
.nspd_z3c
	s_speedto	x,#13,1
	s_gen_3Dvecs	x,al_roty,al_rotx,al_vel
	s_add_vecs2pos	x
	s_add_playerZ	x
	ENDC
	s_end_strat
.kill	s_remove_obj	x
	s_end_strat

	IFNE	SPEED_MODE
kami_step20hz
	lda		al_sbyte5,x
	dec		a
	bmi		.kskip
	sta		al_sbyte5,x
	sec
	rts
.kskip	lda		#2
	sta		al_sbyte5,x
	clc
	rts
	ENDC

;---- Giles kamidie strat - changed
zaco3die_istrat
	s_start_strat
	s_set_expstrat	x,zaco3DIE_strat
	s_jsl		makeMEDexpobj_srou
zaco3DIE_strat
	s_start_strat
	s_jmp_NOTdelay	1,.nsm
	s_jsl		makesmoke_srou_l
	IFEQ	SPEED_MODE
.nsm	s_speedto		x,#40,1
	s_jmp_lower		x,#-100,zaco3go_init
	s_jmp_alvarMORE	B,x,al_rotx,#deg45,.maxx
	s_add_alvar		B,x,al_rotx,#4
.maxx	s_gen_3dvecs	x,al_roty,al_rotx,al_vel
	s_add_alvar		B,x,al_rotz,#4
	s_add_playerZ	x
	s_brl		zaco3cont
zaco3GO_init
	s_set_strat		x,zaco3GO_strat
	s_set_collstrat	x,explode_istrat
	s_set_alvar		B,x,al_HP,#hardHP
zaco3GO_strat
	s_start_strat
	s_speedto		x,#60,1
	s_add_alvar		B,x,al_rotz,#4
	s_jmp_NOTdelay	2,.nsm
	s_jsl		makesmoke_srou_l
	s_set_alvar		W,y,al_vz,#40
.nsm	s_set_objtobeplayer	y
	s_jmp_Zdistless	x,y,#3000,.nmaxd
	s_set_alvar		B,x,al_rotx,#0
	s_set_alvar		B,x,al_roty,#deg180
	s_brl		.far
.nmaxd
	s_jmp_Zdistless	x,y,#400,zaco3cont
	s_obj2obj_3dangle	x,y,al_roty,al_rotx,2
	ELSEIF
.nsm	s_jmp_notANDframe	#3,.nspd_z3d
	s_speedto		x,#20,1
.nspd_z3d
	s_jmp_lower		x,#-100,zaco3go_init
	s_jmp_alvarMORE	B,x,al_rotx,#deg45,.maxx
	s_add_alvar		B,x,al_rotx,#2
.maxx	s_gen_3dvecs	x,al_roty,al_rotx,al_vel
	s_add_alvar		B,x,al_rotz,#2
	s_add_playerZ	x
	s_brl		zaco3cont
zaco3GO_init
	s_set_strat		x,zaco3GO_strat
	s_set_collstrat	x,explode_istrat
	s_set_alvar		B,x,al_HP,#hardHP
zaco3GO_strat
	s_start_strat
	s_jmp_notANDframe	#3,.nspd_z3g
	s_speedto		x,#30,1
.nspd_z3g
	s_add_alvar		B,x,al_rotz,#2
	s_jmp_NOTdelay	2,.nsm
	s_jsl		makesmoke_srou_l
	s_set_alvar		W,y,al_vz,#20
.nsm	s_set_objtobeplayer	y
	s_jmp_Zdistless	x,y,#3000,.nmaxd
	s_set_alvar		B,x,al_rotx,#0
	s_set_alvar		B,x,al_roty,#deg180
	s_brl		.far
.nmaxd
	s_jmp_Zdistless	x,y,#400,zaco3cont
	s_jmp_notANDframe	#1,zaco3cont
	s_obj2obj_3dangle	x,y,al_roty,al_rotx,2
	ENDC
.far	s_gen_3dvecs	x,al_roty,al_rotx,al_vel
zaco3cont	s_add_playerZ	x
	s_add_vecs2pos	x
	s_end_strat


;-----------------------------------------------------------------------------
zaco0_istrat
	s_start_strat
	set_sound2	x,3
	s_set_alptrs	x,zaco0_strat,hitflash_Istrat,explode_istrat
	s_set_aldata	x,#zaco0HP,#zaco0AP
	s_set_alvar		B,x,al_roty,#deg270
	s_set_alvar		B,x,al_rotx,#deg90
	IFEQ	SPEED_MODE
	s_set_alvar		B,x,al_sbyte1,#10
	ELSEIF
	s_set_alvar		B,x,al_sbyte1,#20
	ENDC
	s_set_colltype	x,enemy1
zaco0_strat
	s_start_strat		;search player x and y
	s_set_objtobeplayer	y
	s_cmp_alvars	W,x,al_worldy,y,al_worldy
	s_bcs		.noadd
	IFEQ	SPEED_MODE
	s_add_alvar		W,x,al_worldy,#20
	ELSEIF
	s_add_alvar		W,x,al_worldy,#10
	ENDC
	a16
	lda	al_worldy,x
	cmp	#-30
	bcc	.ok
	lda	#-30
	sta	al_worldy,x
.ok	a8
.noadd
	IFEQ	SPEED_MODE
	s_add_alvar		W,x,al_worldx,#43
	ELSEIF
	s_jmp_notANDframe	#1,.wx21
	s_add_alvar		W,x,al_worldx,#22
	s_brl			.wxdone
.wx21	s_add_alvar		W,x,al_worldx,#21
.wxdone
	ENDC
	s_cmp_alvars	W,x,al_worldx,y,al_worldx
	s_bpl		zaco0b_istrat
	s_end_strat
zaco0b_istrat			;turn face player
	s_set_strat		x,zaco0b_strat
zaco0b_strat
	s_start_strat
	IFEQ	SPEED_MODE
	s_sub_alvar		B,x,al_rotx,#8
	s_sub_alvar		B,x,al_roty,#8
	ELSEIF
	s_sub_alvar		B,x,al_rotx,#4
	s_sub_alvar		B,x,al_roty,#4
	ENDC
	s_cmp_alvar		B,x,al_roty,#deg180
	s_beq		zaco0c_Istrat
	s_end_strat
zaco0c_istrat			;fire 3 times
	s_set_strat		x,zaco0c_istrat
	s_jmp_notdelay		2,.nfire,al1pt
	s_set_objtobeplayer	y
	s_weapon_pos	#0,#0,#0
	s_weapon_rndrots2obj	y,3,3
	s_fire_weapon	x,relslowelaser

.nfire	s_decbeq_alvar	B,x,al_sbyte1,zaco0c2_istrat
.end
	s_set_objtobeplayer	y
	s_jmp_Zdistless	x,y,#300,zaco0c2_istrat
	s_end_strat
zaco0c2_istrat
	s_set_strat		x,zaco0c_strat
zaco0c_strat			;turn again
	s_start_strat
	IFEQ	SPEED_MODE
	s_add_alvar		B,x,al_rotx,#8
	s_add_alvar		B,x,al_roty,#8
	ELSEIF
	s_add_alvar		B,x,al_rotx,#4
	s_add_alvar		B,x,al_roty,#4
	ENDC
	s_cmp_alvar		B,x,al_roty,#deg270
	s_beq		zaco0d_Istrat
	s_end_strat
zaco0d_istrat
	s_set_strat		x,zaco0d_strat
zaco0d_strat
	s_start_strat		;fly away
	IFEQ	SPEED_MODE
	s_sub_alvar		W,x,al_worldy,#19
	s_add_alvar		W,x,al_worldx,#40
	s_move3d_obj	x,#50,2,0
	ELSEIF
	s_jmp_notANDframe	#1,.wy9
	s_sub_alvar		W,x,al_worldy,#10
	s_brl			.wydone
.wy9	s_sub_alvar		W,x,al_worldy,#9
.wydone
	s_add_alvar		W,x,al_worldx,#20
	s_jmp_notANDframe	#1,.nspd_z0d
	s_speedto		x,#25,1
.nspd_z0d
	s_gen_3Dvecs		x,al_roty,al_rotx,al_vel
	s_add_vecs2pos		x
	ENDC
	s_end_strat


;----------------------------------------------------------------------------
; AUTOGUIDE: Boss - Attack Carrier (Corneria) - Heavy orbital mothership featuring dual opening launch bays, plasma beam turrets, and fighter deployment.
carrier_istrat
	s_start_strat
	set_sound2	x,14
	s_set_alptrs	x,carrier_strat,hitflash_Istrat,explode_istrat
	s_set_aldata	x,#carrierHP,#carrierAP
; AUTOGUIDE: Attack Carrier Combat Loop - Coordinates hangar opening cycles, missile volleys, and defensive flight maneuvers.
carrier_strat
	s_start_strat
	s_set_objtobeplayer	y
	IFEQ	SPEED_MODE
	s_add_alvar		B,x,al_roty,#3
	s_add_alvar		W,x,al_worldy,#2
	s_add_alvar		W,x,al_worldz,#30
	ELSEIF
	s_add_alvar_dither	B,al_roty,2,1
	s_add_alvar		W,x,al_worldy,#1
	s_add_alvar		W,x,al_worldz,#15
	ENDC
	s_set_objtobeplayer	y
	s_jmp_Zdistmore	x,y,#3000,carrierb_istrat
	s_add_playerZ	x
	s_end_strat
carrierb_istrat
	s_set_strat		x,carrierb_strat
	IFEQ	SPEED_MODE
	s_set_alvar		B,x,al_sbyte1,#32
	ELSEIF
	s_set_alvar		B,x,al_sbyte1,#64
	ENDC
	s_set_alvar		B,x,al_sbyte2,#1
carrierb_strat
	s_start_strat
	s_decbne_alvar	B,x,al_sbyte2,.notscatter

	s_set_alvar		B,x,al_sbyte2,#carrierrate
	s_make_obj		#para_0,.notscatter
	s_set_strat		y,para_istrat
	s_copy_pos		y,x
	s_add_alvar		W,y,al_worldy,#90
	s_make_immune
.notscatter
	s_set_objtobeplayer	y
	IFEQ	SPEED_MODE
	s_achase_alvar2alvar	W,x,al_worldx,y,al_worldx,3
	s_achase_alvar	B,x,al_rotx,#0,4
	s_achase_alvar	W,x,al_worldy,#-320,5
	s_add_alvar		B,x,al_roty,#4

	s_move3d_obj	x,#30,1,0
	s_add_playerZ	x
	s_sub_alvar		W,x,al_worldz,#15
	ELSEIF
	s_achase_alvar2alvar	W,x,al_worldx,y,al_worldx,4
	s_jmp_notANDframe	#1,.nach_cb
	s_achase_alvar	B,x,al_rotx,#0,4
	s_achase_alvar	W,x,al_worldy,#-320,5
.nach_cb
	s_add_alvar		B,x,al_roty,#2

	s_jmp_notANDframe	#3,.nspd_cb
	s_speedto		x,#15,1
.nspd_cb
	s_gen_3Dvecs		x,al_roty,al_rotx,al_vel
	s_add_vecs2pos		x
	s_add_playerZ	x
	s_add_alvar_dither	W,al_worldz,-8,-7
	ENDC
	s_decbeq_alvar	B,x,al_sbyte1,carrierc_istrat
	s_end_strat
carrierc_istrat
	s_set_strat		x,carrierc_strat
carrierc_strat
	s_start_strat
	IFEQ	SPEED_MODE
	s_sub_alvar		W,x,al_worldz,#10
	s_sub_alvar		W,x,al_worldy,#3
	s_add_alvar		B,x,al_roty,#4
	ELSEIF
	s_sub_alvar		W,x,al_worldz,#5
	s_add_alvar_dither	W,al_worldy,-2,-1
	s_add_alvar		B,x,al_roty,#2
	ENDC
	s_add_playerZ	x
	s_end_strat



;------------------------------------------------------------------
hard90YR_Istrat
	s_start_strat
	s_set_alvar		B,x,al_roty,#deg180
	s_hardvars		x
	s_set_strat		x,0
	s_end_strat

hard90YRfog_Istrat
	s_start_strat
	s_set_alvar		B,x,al_roty,#deg180
	s_hardvars		x
	s_set_strat		x,fog_strat
	s_end_strat

hard180YRfog_Istrat
	s_start_strat
	s_initfog
	s_set_alvar		B,x,al_roty,#deg180
	s_hardvars		x
	s_set_strat		x,fog_strat
	s_end_strat
fog_strat	s_start_strat
	s_dofog
	s_end_strat


;-----------------------------------------------------------------------------
base0_istrat
	s_start_strat
	s_set_colltype	x,enemy1
	s_set_alptrs	x,base0_strat,base0_strat,base0_strat
	s_set_aldata	x,#hardhp,#2
	s_set_alvar		B,x,al_roty,#deg270
	s_init_anim		x,#0
base0_strat	s_start_strat
	s_set_objtobeplayer	y
	s_jmp_Zdistless	x,y,#2500,.start
	s_end_strat
.start	s_set_strat		x,base0b_strat
base0b_strat
	s_start_strat
	IFEQ	SPEED_MODE
	s_cmp_anim		x,#8
	s_beq		.no
	s_add_anim		x,#1,#9
	ELSEIF
	s_cmp_anim		x,#16
	s_beq		.no
	s_add_anim		x,#1,#17
	ENDC
.no	s_end_strat

;------------------------------------------------------------------
base1_istrat
	s_start_strat
	s_set_alptrs	x,base1_strat,0,0
	s_set_aldata	x,#hardhp,#2
	s_set_alvar		B,x,al_roty,#deg180
	s_init_anim		x,#0
	s_end_strat
base1_strat
	s_start_strat
	s_test_hitflags	x,#HF1
	s_bne		.anim_istrat
	s_end_strat
.anim_istrat
	s_clr_hitflags	x,#HF1
	jsl	dooropensound_l
	s_set_strat		x,.anim_strat
.anim_strat	s_start_strat
	IFEQ	SPEED_MODE
	s_cmp_anim		x,#8
	s_beq		.wait_istrat
	s_add_anim		x,#1,#9
	ELSEIF
	s_cmp_anim		x,#16
	s_beq		.wait_istrat
	s_add_anim		x,#1,#17
	ENDC
	s_end_strat
.wait_istrat
	s_set_strat		x,.wait_strat
	IFEQ	SPEED_MODE
	s_set_alvar		B,x,al_sbyte1,#5
	ELSEIF
	s_set_alvar		B,x,al_sbyte1,#10
	ENDC
.wait_strat
	s_start_strat
	s_jmp_alvareq	B,x,al_sbyte1,#0,.close
	s_dec_alvar		B,x,al_sbyte1
	s_end_strat
.close	jsl	doorclosesound_l
	s_set_strat		x,.closeit
.closeit	s_start_strat
	s_cmp_anim		x,#0
	s_beq		base1_istrat
	IFEQ	SPEED_MODE
	s_add_anim		x,#-1,#9
	ELSEIF
	s_add_anim		x,#-1,#17
	ENDC
	s_end_strat


;-----------------------------------------------------------------------------
tank1a_istrat
	s_start_strat
	set_sound2	x,#4
	s_initfog
	s_set_aldata	x,#tank1HP,#tank1AP
	s_set_colltype	x,enemy1
	s_set_alvar		B,x,al_roty,#deg270
	s_set_objtobeplayer	y
	s_jmp_Zdistless	x,y,#5000,tank1a2_istrat
	s_end_strat
tank1a2_istrat
	set_sound2	x,#4
	s_set_alptrs	x,tank1a_strat,hitflash_istrat,explode_istrat
	s_set_alvar		B,x,al_sbyte2,#tank1firerate
	s_set_alvar		B,x,al_sbyte3,#15	;left right time.
tank1a_strat
	s_start_strat
	s_move3d_obj_sm	#30,#15
	IFEQ	SPEED_MODE
	s_beqdec_alvar	B,x,al_sbyte1,.chase
	s_end_strat
.chase	s_achase_alvar	B,x,al_roty,#0,2,.forward
	s_end_strat
	ELSEIF
	s_jmp_notANDframe	#1,.ns1_t1a
	s_beqdec_alvar	B,x,al_sbyte1,.chase
.ns1_t1a
	s_end_strat
.chase
	s_jmp_notANDframe	#1,.nrot_t1a
	s_achase_alvar	B,x,al_roty,#0,2,.forward
.nrot_t1a
	s_end_strat
	ENDC
.forward	s_set_strat		x,.goforward
.goforward	s_start_strat
	s_set_objtobeplayer	y
	s_jmp_Zdistmore	x,y,#3000,.back
	jsr		tank1lr
	jsr		tank1fire
	s_move3d_obj_sm	#medpspeed+20,#medpspeed+10
	IFEQ	SPEED_MODE
	s_add_alvar		W,x,al_worldz,#17
	ELSEIF
	s_add_alvar_dither	W,al_worldz,9,8
	ENDC
	s_end_strat
.back	s_set_strat		x,.goback
.goback	s_start_strat
	IFEQ	SPEED_MODE
	s_sub_alvar		W,x,al_worldz,#7
	ELSEIF
	s_add_alvar_dither	W,al_worldz,-4,-3
	ENDC
	s_end_strat


tank0_istrat
	s_start_strat
	set_sound2	x,#4
	s_initfog
	s_set_alptrs	x,tank0_istrat,hitflash_istrat,explode_istrat
	s_set_aldata	x,#tank1HP,#tank1AP
	s_set_alvar		B,x,al_roty,#0
	s_set_objtobeplayer	y
	s_jmp_Zdistless	x,y,#2000,tank1_strat.forward
	s_set_alvar		B,x,al_sbyte2,#tank1firerate
	s_set_alvar		B,x,al_sbyte3,#15
	s_end_strat

; AUTOGUIDE: Venomian Heavy Ground Tank (Type 1) - Armored all-terrain combat vehicle equipped with high-angle plasma cannons.
tank1_istrat
	set_sound2	x,#4
	s_set_alptrs	x,tank1_strat,hitflash_istrat,explode_istrat
	s_set_alvar		B,x,al_sbyte2,#tank1firerate
	s_set_alvar		B,x,al_sbyte3,#15	;left right time.

tank1_strat	s_start_strat			;move out of hanger
	s_move3d_obj_sm	#30,#15
	IFEQ	SPEED_MODE
	s_beqdec_alvar	B,x,al_sbyte1,.chase
	s_end_strat
.chase	s_achase_alvar	B,x,al_roty,#0,2,.forward
	s_end_strat
	ELSEIF
	s_jmp_notANDframe	#1,.ns1_t1
	s_beqdec_alvar	B,x,al_sbyte1,.chase
.ns1_t1
	s_end_strat
.chase
	s_jmp_notANDframe	#1,.nrot_t1
	s_achase_alvar	B,x,al_roty,#0,2,.forward
.nrot_t1
	s_end_strat
	ENDC

.forward	local
	s_set_strat		x,.goforward
.goforward	s_start_strat
	s_set_objtobeplayer	y
	s_jmp_Zdistmore	x,y,#3000,.back
	jsr		tank1lr
	s_dofog
	jsr		tank1fire
	s_move3d_obj_sm	#medpspeed,#medpspeed
	IFEQ	SPEED_MODE
	s_add_alvar		W,x,al_worldz,#17
	ELSEIF
	s_add_alvar_dither	W,al_worldz,9,8
	ENDC
	s_end_strat

.back	s_set_strat		x,.goback
.goback	s_start_strat
	jsr		tank1lr
	s_dofog
	jsr		tank1fire
	s_move3d_obj_sm	#medpspeed,#medpspeed
	IFEQ	SPEED_MODE
	s_sub_alvar		W,x,al_worldz,#7
	ELSEIF
	s_add_alvar_dither	W,al_worldz,-4,-3
	ENDC
	s_end_strat

tank1lr
	IFNE	SPEED_MODE
	s_jmp_notANDframe	#1,.tlr_done
	ENDC
	lda		al_sbyte3,x
	bpl		.dec
	inc		a
	beq		.left
	sta		al_sbyte3,x
	s_achase_alvar	B,x,al_roty,#-20,3
.tlr_done
	rts
.left	lda		#15
	sta		al_sbyte3,x
	rts
.dec	dec		a
	beq		.right
	sta		al_sbyte3,x
	s_achase_alvar	B,x,al_roty,#20,3
	rts
.right	lda		#-15
	sta		al_sbyte3,x
	rts

tank1fire	s_dec_alvar		B,x,al_sbyte2
	IFEQ	SPEED_MODE
	s_cmp_alvar		B,x,al_sbyte2,#20
	s_beq		.fire
	s_cmp_alvar		B,x,al_sbyte2,#10
	s_beq		.fire
	ELSEIF
	s_cmp_alvar		B,x,al_sbyte2,#40
	s_beq		.fire
	s_cmp_alvar		B,x,al_sbyte2,#20
	s_beq		.fire
	ENDC
	s_cmp_alvar		B,x,al_sbyte2,#0
	s_beq		.fireset
	rts
.fireset	s_set_alvar		B,x,al_sbyte2,#tank1firerate
.fire	s_set_objtobeplayer	y
	s_jmp_Zdistless	x,y,#500,.nofire
	s_jmp_Xdistmore	x,y,#300,.nofire
	s_weapon_pos	#0,#-15,#0
	s_weapon_rot	#0,#deg180
;	s_weapon_rots2obj	y
	s_fire_weapon	x,Hplasma
	s_set_alvar		W,y,al_ptr,playpt
.nofire	rts


;------------------------------------------------------------------------------
; AUTOGUIDE: Venomian Mortar Tank (Type 3) - Stationary heavy artillery tank lobbing high-explosive plasma rounds.
tank3_istrat
	s_start_strat
	set_sound2	x,#4
	s_initfog
	s_set_alptrs	x,tank3_istrat,hitflash_istrat,explode_istrat
	s_set_aldata	x,#tank1HP,#tank1AP
	s_set_alvar		B,x,al_roty,#0
	s_set_objtobeplayer	y
	s_jmp_Zdistless	x,y,#1800,.forward
	IFEQ	SPEED_MODE
	s_set_alvar		B,x,al_sbyte2,#11
	ELSEIF
	s_set_alvar		B,x,al_sbyte2,#21
	ENDC
	s_set_alvar		B,x,al_sbyte3,#15
	s_end_strat

.forward	s_set_strat		x,.goforward
.goforward	s_start_strat
	s_set_objtobeplayer	y
	s_jmp_Zdistmore	x,y,#fogdist+100,.back
	jsr		tank1lr
	s_dofog
	jsr		tank1fire
	s_move3d_obj_sm	#medpspeed+20,#medpspeed+10
	IFEQ	SPEED_MODE
	s_add_alvar		W,x,al_worldz,#25
	ELSEIF
	s_add_alvar_dither	W,al_worldz,13,12
	ENDC
	s_end_strat

.back	s_set_strat		x,.goback
.goback	s_start_strat
	jsr		tank1lr
	s_dofog
	jsr		tank1fire
	s_move3d_obj_sm	#medpspeed-20,#medpspeed-10
	s_set_objtobeplayer	y
	s_jmp_Zdistless	x,y,#fogdist-40,.forwardb
	s_end_strat

.forwardb	s_set_strat		x,.goforwardb
.goforwardb	s_start_strat
	s_set_objtobeplayer	y
	s_jmp_Zdistmore	x,y,#fogdist+100,.backb
	jsr		tank1lr
	s_dofog
	jsr		tank1fire
	s_move3d_obj_sm	#medpspeed+20,#medpspeed+10
	IFEQ	SPEED_MODE
	s_add_alvar		W,x,al_worldz,#25
	ELSEIF
	s_add_alvar_dither	W,al_worldz,13,12
	ENDC
	s_end_strat

.backb	s_set_strat		x,.gobackb
.gobackb	s_start_strat
	s_dofog
	s_end_strat


;-----------------------------------------------------------------------------
; AUTOGUIDE: Fortress Plasma Turret (Fog Variant) - Ground defense battery stationed in fog-covered canyon sectors.
houdai5f_Istrat
	s_start_strat
	s_initfog
	s_set_alptrs	x,houdai5f_strat,hitflash_Istrat,smarkexplode_Istrat
	s_set_aldata	x,#houdai5HP,#houdai5AP
	s_init_anim		x,#0
; AUTOGUIDE: Plasma Turret Aiming & Firing Loop - Tracks player position, rotates cannon barrel, and fires plasma bolts.
houdai5f_strat
	s_start_strat

	s_dofog
	IFEQ	SPEED_MODE
	s_add_anim		x,#1,#12
	ELSEIF
	s_add_anim		x,#1,#24
	ENDC

; --- Tower Firing Interval: Scaled mask from 31 -> 63 (fires every 64 frames / 2.13s at 30fps) ---
	IFEQ	SPEED_MODE
	s_jmp_notANDframe	#31,.nf
	ELSEIF
	s_jmp_notANDframe	#63,.nf
	ENDC
	s_set_objtobeplayer	y
	s_jmp_Zdistless	x,y,#400,.nf
	s_weapon_rot	#0,#deg180
	s_weapon_pos	#0,#(-59<<2)>>weapon_scale,#0
	s_fire_weapon	x,HPLASMA
	s_set_alvar		W,y,al_ptr,playpt
;	-- 30fps Speed Mode Scaling (15fps baseline: 2x frame timers, 50% per-frame velocity) --
	IFEQ	SPEED_MODE
	s_set_lifecnt	y,#100	
	s_set_speed		y,#100
	ELSEIF
	s_set_lifecnt	y,#200	
	s_set_speed		y,#50
	ENDC
.nf	s_end_strat


;-----------------------------------------------------------------------------
; AUTOGUIDE: Fortress Ground Defense Turret - Rotating armored artillery turret firing high-velocity plasma bursts.
houdai5_Istrat
	s_start_strat
	s_set_alptrs	x,houdai5_strat,hitflash_Istrat,smarkexplode_Istrat
	s_set_aldata	x,#houdai5HP,#houdai5AP
	s_init_anim		x,#0
houdai5_strat
	s_start_strat
	IFEQ	SPEED_MODE
	s_add_anim		x,#1,#12
	ELSEIF
	s_add_anim		x,#1,#24
	ENDC
; --- Tower Firing Interval: Scaled mask from 31 -> 63 (fires every 64 frames / 2.13s at 30fps) ---
	IFEQ	SPEED_MODE
	s_jmp_notANDframe	#31,.nf
	ELSEIF
	s_jmp_notANDframe	#63,.nf
	ENDC
	s_set_objtobeplayer	y
	s_jmp_Zdistless	x,y,#400,.nf
	s_jmp_Xdistmore	x,y,#400,.nf
	s_weapon_rots2obj	y
	s_weapon_pos	#0,#-100,#-10
	s_fire_weapon	x,PLASMA
;	-- 30fps Speed Mode Scaling (15fps baseline: 2x frame timers, 50% per-frame velocity) --
	IFEQ	SPEED_MODE
	s_set_lifecnt	y,#100	
	s_set_speed		y,#100
	ELSEIF
	s_set_lifecnt	y,#200	
	s_set_speed		y,#50
	ENDC
.nf	s_end_strat


;-----------------------------------------------------------------------------
; AUTOGUIDE: Collapsing Cave Pillar / Stalactite - Giant rock column that crumbles and falls across the canyon when approached.
pillar3f_istrat
	s_start_strat
	s_initfog
	s_set_alptrs	x,pillar3f_strat,hitflash_istrat,explode_istrat
	s_set_aldata	x,#pillar3fHP,#pillar3fAP
pillar3f_strat
	s_start_strat
	s_dofog
	s_set_objtobeplayer	y
	s_jmp_Zdistless	x,y,#pillar3fDIST,pillar3ffall_i
	s_jmp_alvarless	B,x,al_hp,#pillar3ffallHP,pillar3ffall_i
	s_test_hitflags	x,#HF2
	s_bne		pillar3ffall_i
	s_end_strat
pillar3ffall_i
	s_set_strat		x,pillar3ffall_strat
	s_set_alsflag	x,shadow
	IFEQ	SPEED_MODE
	s_set_alvar		B,x,al_sbyte1,#4
	s_rightview_strat	x,.misset
	s_set_alvar		B,x,al_sbyte1,#-4
.misset	s_set_alvar		B,x,al_sbyte2,#16
	ELSEIF
	s_set_alvar		B,x,al_sbyte1,#2
	s_rightview_strat	x,.misset
	s_set_alvar		B,x,al_sbyte1,#-2
.misset	s_set_alvar		B,x,al_sbyte2,#32
	ENDC
	s_make_obj		#bouncyball,.end
	s_copy_pos		y,x
	s_set_alptrs	y,explode_istrat,explode_istrat,explode_istrat
	s_kill_obj		y
.end	s_end_strat
pillar3ffall_strat
	s_start_strat
	s_copy_alvar2var	B,x,svar_byte1,al_sbyte1
	s_add_alvar		B,x,al_rotz,svar_byte1
	s_dec_alvar		B,x,al_sbyte2
	s_beq		pillar3fstay_istrat
	s_end_strat

pillar3fstay_istrat
	s_start_strat
	s_clr_alsflag	x,shadow
	s_set_strat		x,.wait
.wait	s_start_strat
	s_end_strat




;------------------------------------------------------------------
bholeexit1_istrat
	lda	#le_bhole1
	jmp	bholecoll_istrat
bholeexit2_istrat
	lda	#le_bhole2
	jmp	bholecoll_istrat
bholeexit3_istrat
	lda	#le_bhole3

bholecoll_istrat
	sta	al_sbyte2,x
	s_start_strat
	s_set_strat	x,bholecoll_strat
	s_set_alsflag	x,colldisable
	s_init_colanim	x,#4
bholecoll_strat
	s_start_strat
;	-- 30fps Speed Mode Scaling (15fps baseline: 2x frame timers, 50% per-frame velocity) --
	IFEQ	SPEED_MODE
	s_add_alvar		B,x,al_rotz,#12
	ELSEIF
	s_add_alvar		B,x,al_rotz,#6
	ENDC
	s_set_objtobeplayer	y
	s_jmp_Zdistmore		x,y,#200,.ntouch
	s_jmp_outxydistrng	x,y,#0,#(25<<2),.ntouch
	s_set_alsflag		x,sflag1

	s_set_strat		x,blackholeexit_istrat
	s_setnoremove_behind	x
.badobj
.ntouch
	s_end_strat




blackholeexit_Istrat
	s_start_strat
	IFEQ	SPEED_MODE
	s_set_alvar		B,x,al_sbyte1,#8
	ELSEIF
	s_set_alvar		B,x,al_sbyte1,#16
	ENDC
	s_set_alvar		B,x,al_sbyte3,#10
	s_set_strat		x,.strat
	startbgm	$f5
	IFNE	MSU1
	s_msuplay	blackholeexit,norepeat
	ENDC
	s_and_var	B,pshipflags3,#~psf3_enginesnd
.strat
	s_start_strat
	s_decbne_alvar		B,x,al_sbyte1,.ninto
	IFEQ	SPEED_MODE
	s_set_alvar		B,x,al_sbyte1,#8
	ELSEIF
	s_set_alvar		B,x,al_sbyte1,#16
	ENDC

	lda			al_sbyte3,x
	cmp			#4
	bne			.nf
	lda			#-1
	sta			fadedir
	startbgm	$f1
.nf	s_decbne_alvar		B,x,al_sbyte3,.nc
	lda			al_sbyte2,x
	sta			levelfinished
	s_and_var		B,pshipflags3,#~psf3_nocollisions
	brl			.badobj
.nc
	s_playerctrl		off
	s_or_var		B,pshipflags3,#psf3_nocollisions

	s_make_obj		#blackhole,.badobj
	s_sprite_obj		y,#0
	s_set_alsflag		y,colldisable
	s_set_alvar		W,y,al_worldx,player_posx
	s_set_alvar		W,y,al_worldy,player_posy
	s_set_alvar		W,y,al_worldz,player_posz
	s_add_alvar		W,y,al_worldz,#600
	s_set_strat		y,.strat2
	IFNE	RUMBLE
	s_queue_rumble	5,5,15
	ENDC
	trigse		$2c
.badobj
.ninto
	s_end_strat

.strat2	s_start_strat
	IFEQ	SPEED_MODE
	s_add_alvar		W,x,al_worldz,#-60
	ELSEIF
	s_add_alvar		W,x,al_worldz,#-30
	ENDC
	s_add_playerZ		x
	IFEQ	SPEED_MODE
	s_add_var		W,outvz,#10*256
	ELSEIF
	s_add_var		W,outvz,#5*256
	ENDC
	s_end_strat

;------------------------------------------------------------
theend_t_istrat
	s_start_strat
	s_set_alptrs	x,theend_t_strat,theend_t_strat,explode_istrat
	s_theend_init_sbyte1
	s_set_alvar	B,x,al_sbyte3,#1
	s_set_alvar	B,x,al_roty,#128
	s_set_alvar	B,x,al_rotz,#64
	s_set_alvar	W,x,al_sword1,#font_t
	s_set_alvar	W,x,al_sword2,#font_t2
	s_set_aldata	x,#255,#4
theend_t_strat	s_start_strat
	s_theend_step_sm	-22,19,-11,-11,10,9
	s_add_playerz	x
	s_keeprelto_player	x
	s_decbeq_alvar	B,x,al_sbyte1,.here
	s_end_strat
.here	s_make_obj	#nullshape,.fail
	s_set_alptrs	y,theend_check_istrat,theend_check_istrat,theend_check_istrat
	s_set_aldata	y,#255,#4
	s_setnoremove_behind	y
	s_set_var	B,numendok,#0
	phx
	s_set_objtobeplayer x
	s_copy_pos	y,x
	s_add_alvar	W,y,al_worldx,#1000
	s_add_alvar	W,y,al_worldz,#7000
	plx
.fail	s_jmp		theend_zoom_istrat

theend_h_istrat
	s_start_strat
	s_set_alptrs	x,theend_h_strat,theend_h_strat,explode_istrat
	s_theend_init_sbyte1
	s_set_alvar	B,x,al_sbyte3,#2
	s_set_alvar	B,x,al_roty,#128
	s_set_alvar	B,x,al_rotz,#192
	s_set_alvar	W,x,al_sword1,#font_h
	s_set_alvar	W,x,al_sword2,#font_h2
	s_set_aldata	x,#255,#4
theend_h_strat	s_start_strat
	s_theend_step_sm	20,-27,10,10,-14,-13
	s_add_playerz	x
	s_keeprelto_player	x
	s_decbeq_alvar	B,x,al_sbyte1,theend_zoom2_istrat
	s_end_strat

theend_e_istrat
	s_start_strat
	s_set_alptrs	x,theend_e_strat,theend_e_strat,explode_istrat
	s_theend_init_sbyte1
	s_set_alvar	B,x,al_sbyte3,#1
	s_set_alvar	B,x,al_roty,#128
	s_set_alvar	B,x,al_rotz,#64
	s_set_alvar	W,x,al_sword1,#font_e
	s_set_alvar	W,x,al_sword2,#font_e2
	s_set_aldata	x,#255,#4
theend_e_strat	s_start_strat
	s_theend_step_sm	19,30,10,9,15,15
	s_add_playerz	x
	s_keeprelto_player	x
	s_decbeq_alvar	B,x,al_sbyte1,theend_zoom_istrat
	s_end_strat

theend_e2_istrat
	s_start_strat
	s_set_alptrs	x,theend_e2_strat,theend_e2_strat,explode_istrat
	s_theend_init_sbyte1
	s_set_alvar	B,x,al_sbyte3,#2
	s_set_alvar	B,x,al_roty,#128
	s_set_alvar	B,x,al_rotz,#128
	s_set_alvar	W,x,al_sword1,#font_e
	s_set_alvar	W,x,al_sword2,#font_e3
	s_set_aldata	x,#255,#4
theend_e2_strat
	s_start_strat
	s_theend_step_sm	-20,26,-10,-10,13,13
	s_add_playerz	x
	s_keeprelto_player	x
	s_decbeq_alvar	B,x,al_sbyte1,theend_zoom_istrat
	s_end_strat

theend_n_istrat
	s_start_strat
	s_set_alptrs	x,theend_n_strat,theend_n_strat,explode_istrat
	s_theend_init_sbyte1
	s_set_alvar	B,x,al_sbyte3,#0
	s_set_alvar	B,x,al_roty,#128
	s_set_alvar	B,x,al_rotz,#192
	s_set_alvar	W,x,al_sword1,#font_n
	s_set_alvar	W,x,al_sword2,#font_n2
	s_set_aldata	x,#255,#4
theend_n_strat	s_start_strat
	s_theend_step_sm	-29,-27,-15,-14,-14,-13
	s_add_playerz	x
	s_keeprelto_player	x
	s_decbeq_alvar	B,x,al_sbyte1,theend_zoom2_istrat
	s_end_strat

theend_d_istrat
	s_start_strat
	s_set_alptrs	x,theend_d_strat,theend_d_strat,explode_istrat
	s_theend_init_sbyte1
	s_set_alvar	B,x,al_sbyte3,#3
	s_set_alvar	B,x,al_roty,#128
	s_set_alvar	B,x,al_rotz,#192
	s_set_alvar	W,x,al_sword1,#font_d
	s_set_alvar	W,x,al_sword2,#font_d2
	s_set_aldata	x,#255,#4
theend_d_strat	s_start_strat
	s_theend_step_sm	21,-28,11,10,-14,-14
	s_add_playerz	x
	s_keeprelto_player	x
	s_decbeq_alvar	B,x,al_sbyte1,theend_zoom_istrat
	s_end_strat


;---------------------------------------------------------------------
theend_zoom_istrat
	s_start_strat
	s_set_alptrs	x,theend_zoom_strat,theend_zoom_strat,explode_istrat
	jsr		theend_zoom_init_srou
theend_zoom_strat
	s_start_strat
	jsr		theend_zoom_step_srou
	s_decbeq_alvar	B,x,al_sbyte1,theend_fin_istrat
	s_end_strat

theend_zoom2_istrat
	s_start_strat
	s_set_alptrs	x,theend_zoom2_strat,theend_zoom2_strat,explode_istrat
	jsr		theend_zoom_init_srou
theend_zoom2_strat
	s_start_strat
	jsr		theend_zoom_step_srou
	s_decbeq_alvar	B,x,al_sbyte1,theend_fin2_istrat
	s_end_strat

theend_zoom_init_srou
	s_set_alvar	B,x,al_rotx,#0
	s_set_alvar	B,x,al_roty,#0
	IFEQ	SPEED_MODE
	s_set_alvar	B,x,al_sbyte1,#33
	ELSEIF
	s_set_alvar	B,x,al_sbyte1,#66
	ENDC
	rts

theend_zoom_step_srou
	IFEQ	SPEED_MODE
	s_add_alvar	B,x,al_roty,#4
	s_add_alvar	W,x,al_worldz,#-19
	ELSEIF
	s_add_alvar	B,x,al_roty,#2
	s_add_alvar_sb1_dither	W,al_worldz,-10,-9
	ENDC
	s_add_playerz	x
	s_keeprelto_player	x
	rts

;---------------------------------------------------------------
theend_check_istrat
	s_start_strat
	lda	numendok
	cmp	#6
	bne	.skip
	s_set_strat	x,.wait
	startbgm	6
	IFNE	MSU1
	s_msuplay	clearootd,repeat
	ENDC
.skip	s_set_var	B,numendok,#0
	s_add_playerz	x
	s_keeprelto_player	x
	s_end_strat

.wait	s_start_strat
	lda	#-1
	sta	numendok
	s_add_playerz	x
	s_keeprelto_player	x
	s_end_strat

theenddead	php
	a8
	lda	numendok
	cmp	#-1
	beq	.dead
	plp
	clc
	rtl
.dead	plp
	sec
	rtl

;----------------------------------------------------------------
theend_fin_istrat			;this checks 0 degs
	s_start_strat
	s_set_strat	x,theend_fin_strat
	s_set_collstrat	x,theend_flip_istrat
	s_setnoremove_behind	x
theend_fin_strat
	s_start_strat
	s_cmp_alvar	B,x,al_rotz,#0
	s_beq		theendok
	s_copy_alvar2alvar W,x,al_shape,x,al_sword2
	s_add_playerz	x
	s_keeprelto_player	x
	s_end_strat

theend_fin2_istrat			;this checks 0 and 180 degs
	s_start_strat
	s_set_strat	x,theend_fin2_strat
	s_set_collstrat	x,theend_flip_istrat
	s_setnoremove_behind	x
theend_fin2_strat
	s_start_strat
	s_cmp_alvar	B,x,al_rotz,#0
	s_beq		theendok
	s_cmp_alvar	B,x,al_rotz,#128
	s_beq		theendok
	s_copy_alvar2alvar W,x,al_shape,x,al_sword2
	s_add_playerz	x
	s_keeprelto_player	x
	s_end_strat
theendok	lda	numendok
	bmi	theend_flyaway_istrat
	s_copy_alvar2alvar W,x,al_shape,x,al_sword1
	s_inc_var	B,numendok
	s_add_playerz	x
	s_keeprelto_player	x
	s_end_strat

theend_flyaway_istrat
	s_start_strat
	s_set_strat	x,theend_flyaway_strat
	s_set_collstrat	x,theend_flyaway_strat
	s_set_alsflag	x,colldisable
	s_setremove_behind	x
;	startbgm	7
theend_flyaway_strat
	s_start_strat
	IFEQ	SPEED_MODE
	s_add_alvar	B,x,al_rotx,#3
	s_add_alvar	B,x,al_roty,#2
	s_add_alvar	B,x,al_rotz,#6
	s_add_playerz	x
	s_sub_alvar	W,x,al_worldz,#20
	ELSEIF
	s_add_alvar_dither	B,al_rotx,2,1
	s_add_alvar	B,x,al_roty,#1
	s_add_alvar	B,x,al_rotz,#3
	s_add_playerz	x
	s_sub_alvar	W,x,al_worldz,#10
	ENDC
	s_end_strat

;-------------------------------------------------------------
theend_flip_istrat
	s_start_strat
	s_beqdec_alvar	B,x,al_sbyte3,.do
	jmp		.fail
.do	s_set_alvar	B,x,al_sbyte3,#2
	jsl	random_l
	cmp	#90
	lbcc	.3
	cmp	#146
	lbcc	.2
	cmp	#210
	lbcc	.1
	s_make_obj	#zaco_4,.fail
	s_set_strat	y,szaco0_istrat
	s_copy_pos	y,x
	s_add_alvar	W,y,al_worldx,#-100
	s_add_alvar	W,y,al_worldy,#1000
	s_add_alvar	W,y,al_worldz,#3500
	jmp		.fail
.1	s_make_obj	#tadpole,.fail
	s_set_strat	y,tadpole_istrat
	s_copy_pos	y,x
	s_add_alvar	W,y,al_worldx,#500
	s_add_alvar	W,y,al_worldy,#-200
	s_add_alvar	W,y,al_worldz,#3000
	jmp		.fail
.2	s_make_obj	#zaco_B,.fail
	s_copy_pos	y,x
	s_set_strat	y,szaco5_istrat
	s_set_aldata	y,#2,#6
	s_add_alvar	W,y,al_worldx,#-400
	s_add_alvar	W,y,al_worldy,#-400
	s_add_alvar	W,y,al_worldz,#2000
	bra		.fail
.3	s_make_obj	#big_m,.fail
	s_set_strat	y,misspod_istrat
	s_copy_pos	y,x
	s_add_alvar	W,y,al_worldx,#000
	s_add_alvar	W,y,al_worldy,#000
	s_add_alvar	W,y,al_worldz,#3000
.fail

	s_push_stratptr	x
	IFEQ	SPEED_MODE
	s_set_alvar	B,x,al_sbyte1,#32
	s_set_alsflag	x,colldisable
	s_set_strat	x,theend_flip_strat
	s_set_alvar	W,x,al_vy,#-45	;vel up
	s_set_alvar	W,x,al_vz,#45*4	;vel back
	ELSEIF
	s_set_alvar	B,x,al_sbyte1,#64
	s_set_alsflag	x,colldisable
	s_set_strat	x,theend_flip_strat
	s_set_alvar	W,x,al_vy,#-23	;vel up (mirrored 63-tick zero-drift arc)
	s_set_alvar	W,x,al_vz,#93	;vel back (+93..-93 over 63 ticks = 0 net Z)
	ENDC
	jsl	random_l
	sta	al_sbyte2,x
theend_flip_strat
	s_start_strat
	s_add_playerz	x
	IFEQ	SPEED_MODE
	s_add_alvar	B,x,al_rotx,#8
	s_add_alvar	B,x,al_roty,#8
	lda	al_sbyte2,x
	cmp	#86
	bcc	.rot0
	cmp	#172
	bcc	.rot1
	s_add_alvar	B,x,al_rotz,#2
	bra	.dr
.rot0	s_add_alvar	B,x,al_rotz,#4
	bra	.dr
.rot1	s_add_alvar	B,x,al_rotz,#6
	ELSEIF
	s_add_alvar	B,x,al_rotx,#4
	s_add_alvar	B,x,al_roty,#4
	lda	al_sbyte2,x
	cmp	#86
	bcc	.rot0
	cmp	#172
	bcc	.rot1
	s_add_alvar	B,x,al_rotz,#1
	bra	.dr
.rot0	s_add_alvar	B,x,al_rotz,#2
	bra	.dr
.rot1	s_add_alvar	B,x,al_rotz,#3
	ENDC
.dr
	s_decbeq_alvar	B,x,al_sbyte1,.end
	s_add_alvars	W,x,al_worldy,x,al_vy
	s_add_alvars	W,x,al_worldz,x,al_vz
	IFEQ	SPEED_MODE
	s_add_alvar	W,x,al_vy,#3
	s_add_alvar	W,x,al_vz,#-3*4
	ELSEIF
	a8
	lda		al_sbyte1,x
	cmp		#32
	bcs		.tfl_hi
	and		#3
	cmp		#2
	bra		.tfl_skipchk
.tfl_hi
	and		#3
	cmp		#3
.tfl_skipchk
	beq		.noy_tfl
	s_inc_alvar	W,x,al_vy
.noy_tfl
	s_add_alvar	W,x,al_vz,#-3
	ENDC
	s_keeprelto_player	x
	s_end_strat
.end	s_pull_stratptr	x
	s_clr_alsflag	x,colldisable
	s_keeprelto_player	x
	s_end_strat

