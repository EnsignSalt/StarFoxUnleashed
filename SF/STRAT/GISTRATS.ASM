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
;*   File: GISTRATS.ASM                                                    *
;*                                                                         *
;*                                                                         *
;*_________________________________________________________________________*
;*                                                                         *
;*  Descr: GILES INTRO DEMO STRATS.                                        *
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

	shorta
	longi

	incpublics	EXT\gistrats.ext

	strats_start

;*******************************************************************************
intro1pfall_Istrat
	s_start_strat
	s_set_strat	x,intro1pfall_strat
	s_set_alsflag	x,colldisable
intro1pfall_strat
	s_start_strat
	s_beqdec_alvar	B,x,al_Sbyte1,intro1pfalling_init
	s_end_strat
	

intro1pfalling_init
	s_set_strat	x,intro1pfalling_strat
	s_jsl		makeMEDexpobj_srou
	s_add_alvar	W,y,al_worldy,#-60
intro1pfalling_strat
	
	s_start_strat
	s_jmp_alvarEQ	B,x,al_sbyte2,#6,.nadd
	s_jmp_notdelay	1,.nadd
	s_inc_alvar	B,x,al_sbyte2
.nadd
	s_jmp_alvarMORE	B,x,al_rotx,#deg90,.nfall
	s_add_alvars	B,x,al_rotx,x,al_sbyte2
.nfall
	s_end_strat



;*******************************************************************************
;tunnel6_Istrat
;	s_start_strat
;	s_set_alptrs	x,tunnel6_strat,0,0
;	s_set_alsflag	x,colldisable
;	s_init_anim	x,#0
;tunnel6_strat
;	s_start_strat
;	s_jmp_alvarMI	B,x,al_sbyte1,.nanim
;	s_beqdec_alvar	B,x,al_sbyte1,.anim
;     	s_brl		.nanim
;.anim
;	s_cmp_anim	x,#9
;	s_beq		.nanim
;	s_add_anim	x,#1,#10
;.nanim
;	s_end_strat
	



;*****************************************************************************
;friendF1_Istrat
;	s_start_strat
;	s_set_alvar		B,x,al_sbyte1,#15
;	set_sound2		x,#$01
;             	s_jmp			friendF_init
;friendF2_Istrat
;	s_start_strat
;	s_set_alvar		B,x,al_sbyte1,#25
;;	set_sound1		x,#$0d
;
;friendF_init
;	s_set_aldata		x,#1,#0
;	s_set_alptrs		x,friendF_strat,hitflash_Istrat,explode_Istrat
;	s_set_speed		x,#20
;	s_gen_Zvec		x,al_vel
;friendF_strat		
;	s_start_strat
;	s_decbne_alvar		B,x,al_sbyte1,.noboost
;	s_set_speed		x,#100
;	s_gen_Zvec		x,al_vel
;	boost_sprite
;	s_set_vartobeobj	boostobj,x
;	trigse			$32
;.noboost
;	s_add_alvar		B,x,al_rotz,#deg45/4
;	s_add_vecs2pos		x
;	s_add_playerZ		x
;	s_jmp_alvarless		W,x,al_worldz,#4000,.nkf
;	s_remove_obj		x
;.nkf
;	s_end_strat





	ifeq	1
;*******************************************************************************
tsumami_Istrat
	s_start_strat
	s_set_alptrs	x,tsumami_strat,0,0
	s_set_alsflag	x,colldisable
	s_init_anim	x,#0
	s_end_strat
tsumami_strat
	s_start_strat

	s_beqdec_alvar	B,x,al_sbyte1,.anim
	s_brl		.nanim
.anim
	s_cmp_anim	x,#1
	s_bne		.nsnd
	trigse		$66
.nsnd
	

	s_cmp_anim	x,#14
	s_beq		.tsumami2_init
	IFNE	SPEED_MODE
	s_jmp_notdelay	2,.tsumami2_init
	ENDC
	s_add_anim	x,#1,#15
.nanim	s_end_strat

.tsumami2_init
	s_set_strat	x,.tsumami2_strat	
	s_set_alvar	W,x,al_shape,#tsu_1
	s_init_anim	x,#0
.tsumami2_strat	
	s_start_strat

	s_cmp_anim	x,#14
	s_beq		.nanim2
	IFNE	SPEED_MODE
	s_jmp_notdelay	2,.nanim2
	ENDC
	s_add_anim	x,#1,#15
.nanim2	s_end_strat

	endc

;*******************************************************************************
	ifeq	1

friendstart1_istrat
	s_start_strat
	s_set_strat		x,friendstart1_strat
	s_set_alsflag		x,shadow
	s_set_alsflag		x,colldisable
	s_end_strat

friendstart1_strat
	s_start_strat
	s_beqdec_alvar		B,x,al_sbyte1,friendstart1up_init
	s_end_strat


friendstart1up_init
	s_set_strat		x,friendstart1up_strat
	s_set_alvar		B,x,al_sbyte1,#32+1
friendstart1up_strat
	s_start_strat
	s_beqdec_alvar		B,x,al_sbyte1,friendstart1go_init
	s_jmp_alvarLESS		B,x,al_sbyte1,#16+1,.nup
	s_add_alvar		W,x,al_worldy,#-5
	s_brl			.end
.nup	
	s_set_var2alvartab	B,W,W,svar_word1,x,al_sbyte2,startiYtab
	s_add_alvar		W,x,al_worldy,svar_word1
	s_set_var2alvartab	B,W,W,svar_word1,x,al_sbyte2,startiZtab
	s_add_alvar		B,x,al_rotz,svar_word1
	s_add_alvar		B,x,al_sbyte2,#2
	s_jmp_alvarNE		B,x,al_sbyte2,#32,.nmax
	s_set_alvar		B,x,al_sbyte2,#0
.nmax


.end	s_end_strat

startiYtab	
	dw			2,2,1,1,1,0,1,0
	dw			0,-1,-1,-1,-2,-2,-1,0

startiZtab	
	dw			1,1,1,0,-1,-1,-1,0
	dw			1,1,1,0,-1,-1,-1,0



friendstart1go_init
	s_set_vartobeobj	boostobj,x
	boost_sprite
	trigse			$32
friendstart1go2_init
	s_set_lifecnt		x,#50
	s_set_strat		x,friendstart1go_strat
friendstart1go_strat
	s_start_strat

	s_jmp_notdelay		1,.nm
	s_achase_alvar		W,x,al_worldy,viewcy,3
.nm

	s_add_alvar		W,x,al_worldz,#70
	s_dec_lifecnt		x
	s_end_strat


friendstart2_Istrat
	s_start_strat
	s_setnoremove_behind	x
	s_set_alsflag		x,colldisable
	s_beqdec_alvar		B,x,al_sbyte1,friendstart2go_init
	s_end_strat

friendstart2go_init
	s_start_strat	
	s_set_strat		x,friendstart2go_strat
	IFEQ	SPEED_MODE
	s_set_lifecnt		x,#50
	s_set_speed		x,#70
	ELSEIF
	s_set_lifecnt		x,#100
	s_set_speed		x,#35
	ENDC
	s_set_alvar		B,x,al_rotx,#deg11
	s_set_alvar		B,x,al_rotz,#deg90
friendstart2go_strat
	s_start_strat

	s_set_objtobeplayer	y
	s_jmp_objinfront	y,x,.nb
	s_jmp_alsflag		x,sflag1,.nb
	s_set_alsflag		x,sflag1
	s_set_vartobeobj	boostobj,x
	boost_sprite
	trigse			$32
.nb


	IFEQ	SPEED_MODE
	s_achase_alvar		B,x,al_rotz,#0,4
	ELSEIF
	s_achase_alvar		B,x,al_rotz,#0,5
	ENDC
	s_jmp_notdelay		1,.nch
	s_achase_alvar		B,x,al_rotx,#0,4
	s_achase_alvar		W,x,al_worldx,#0,4
	s_achase_alvar		W,x,al_worldy,viewcy,3
.nch	s_gen_3dvecs		x,al_roty,al_rotx,al_vel
	s_add_vecs2pos		x
	s_dec_lifecnt		x
	s_end_strat


	endc


friendstart3_Istrat
	s_start_strat
	s_setnoremove_behind	x
	s_set_alsflag		x,colldisable
	s_set_strat		x,friendstart3go_strat
	IFEQ	SPEED_MODE
	s_set_lifecnt		x,#70
	s_set_speed		x,#30
	ELSEIF
	s_set_lifecnt		x,#140
	s_set_speed		x,#15
	ENDC
	s_set_alvar		B,x,al_rotz,#-deg90
friendstart3go_strat
	s_start_strat

	s_set_objtobeplayer	y
	s_jmp_objinfront	y,x,.nch
	s_jmp_alsflag		x,sflag1,.nb
	s_set_alsflag		x,sflag1
	s_set_vartobeobj	boostobj,x
	boost_sprite
	trigse			$32
.nb
	IFEQ	SPEED_MODE
	s_achase_alvar		B,x,al_rotz,#0,4
	ELSEIF
	s_achase_alvar		B,x,al_rotz,#0,5
	ENDC
	s_jmp_notdelay		2,.nch
	s_achase_alvar		B,x,al_rotx,#-deg90,4
.nch	


	s_gen_3dvecs		x,al_roty,al_rotx,al_vel
	s_add_vecs2pos		x
	s_add_playerZ		x
	s_dec_lifecnt		x
	s_end_strat



friendkill_Istrat
	s_start_strat
	remove_shadow		
	s_jmp		explode_Istrat

;*******************************************************************************
friendexitbase_Istrat
	s_set_alsflag	x,colldisable
	s_set_lifecnt	x,#1500/pexitbasespeed
	s_set_strat	x,friendexitbase_strat
	s_set_alsflag	x,shadow
	s_set_alsflag	x,invisible
	IFEQ	SPEED_MODE
	s_set_alvar		B,x,al_sbyte2,#11	; time until left snd
	ELSEIF
	s_set_alvar		B,x,al_sbyte2,#22	; time until left snd
	ENDC
friendexitbase_strat
	s_start_strat
	s_decbne_alvar	B,x,al_sbyte1,.nowt
	s_set_alvar	B,x,al_sbyte1,#1

	s_beqdec_alvar	B,x,al_sbyte2,.left
	lda	#%10110001
	s_brl	.sndcont
.left
	lda	#%01010001
.sndcont
	sta.l	alx_snd1,x

	s_add_alvar	W,x,al_worldz,#pexitbasespeed
	s_clr_alsflag	x,invisible
	s_dec_lifecnt	x
.nowt	s_end_strat

;*******************************************************************************
pshipIntoLB1_Istrat
	s_start_strat
	s_set_strat	x,pshipIntoLB1_strat
	s_set_alsflag	x,colldisable
	IFEQ	SPEED_MODE
	s_set_speed	x,#medpspeed
	s_set_alvar	B,x,al_sbyte1,#deg90/2
	ELSEIF
	s_set_speed	x,#medpspeed
	s_set_alvar	B,x,al_sbyte1,#deg90
	ENDC
pshipIntoLB1_strat
	s_start_strat


	s_jmp_ifnotstate	x,0,.nsup
	IFEQ	SPEED_MODE
	s_speedto	x,#minpspeed,1
	s_sub_alvar	B,x,al_rotx,#2
	ELSEIF
	s_jmp_notdelay	1,.nspd0
	s_speedto	x,#minpspeed,1
.nspd0	s_sub_alvar	B,x,al_rotx,#1
	ENDC
	s_decbne_alvar	B,x,al_sbyte1,.nsup
	s_set_state		x,#1
	IFEQ	SPEED_MODE
	s_set_alvar	B,x,al_sbyte1,#deg180/2
	ELSEIF
	s_set_alvar	B,x,al_sbyte1,#deg180
	ENDC
.nsup

	s_jmp_ifnotstate	x,1,.nsdown
	IFEQ	SPEED_MODE
	s_jmp_alvarNE		B,x,al_sbyte1,#10,.nsopen
	ELSEIF
	s_jmp_alvarNE		B,x,al_sbyte1,#20,.nsopen
	ENDC
	s_OR_var		B,gameflags2,#gf2_stratflag1
.nsopen
	IFEQ	SPEED_MODE
	s_add_alvar		B,x,al_rotz,#8
	s_speedto	x,#minpspeed,1
	s_add_alvar	B,x,al_rotx,#2
	s_decbne_alvar	B,x,al_sbyte1,.nsdown
	s_set_state		x,#2
	s_set_speed	x,#maxpspeed
	s_set_alvar		B,x,al_Sbyte1,#40
	ELSEIF
	s_add_alvar		B,x,al_rotz,#4
	s_jmp_notdelay	1,.nspd1
	s_speedto	x,#minpspeed,1
.nspd1	s_add_alvar	B,x,al_rotx,#1
	s_decbne_alvar	B,x,al_sbyte1,.nsdown
	s_set_state		x,#2
	s_set_speed	x,#maxpspeed
	s_set_alvar		B,x,al_Sbyte1,#80
	ENDC
	s_set_vartobeobj	boostobj,x
	boost_sprite
	trigse		$32
.nsdown



	s_jmp_ifnotstate	x,2,.nsdown2
	s_set_objtobevar	y,mapvar1
	IFEQ	SPEED_MODE
	s_achase_alvar2alvar	W,x,al_worldz,y,al_worldz,4
	s_achase_alvar2alvar	W,x,al_worldx,y,al_worldx,4
	s_achase_alvar		B,x,al_rotz,#0,3
	ELSEIF
	s_achase_alvar2alvar	W,x,al_worldz,y,al_worldz,5
	s_achase_alvar2alvar	W,x,al_worldx,y,al_worldx,5
	s_jmp_notdelay		0,.nrot2
	s_achase_alvar		B,x,al_rotz,#0,3
.nrot2
	ENDC
	s_decbne_alvar		B,x,al_sbyte1,.nsdown2
	s_set_state		x,#4
.nsdown2
		

	s_jmp_ifnotstate	x,4,.nend
	s_set_objtobeplayer	y
	s_set_strat		y,playerinLtunnel_Istrat
	s_clr_alsflag		y,invisible
	s_set_vartobeobj	viewtoobj,y

	s_set_var		B,viewtype,#viewtype_norm
	s_set_var		W,pviewvelz,#maxpspeed
	s_set_var		W,player_tospeed,#maxpspeed
	s_set_var		W,outdist,#inviewdist
	s_set_var		W,viewdist,#inviewdist
	s_set_var		B,player_medspeed,#medpspeed
	s_set_speed		y,#maxpspeed
	s_set_alvar		B,y,al_sbyte2,#1	; boost delay

	s_set_alvar		W,y,al_worldy,#Ltunnel_viewCY-5
	s_set_alvar		W,y,al_worldx,#0

	s_copy_alvar2var	W,y,player_posz,al_worldz
	s_copy_alvar2var	W,y,pviewposz,al_worldz
	s_sub_var		W,pviewposz,#maxpspeed
	s_set_var		W,pviewposy,#Ltunnel_viewCY
	s_set_var		W,pviewposx,#0

	s_set_var		W,outvx,#0
	s_set_var		W,outvy,#0
	s_set_var		W,outvz,#0

	s_AND_var		B,gameflags,#~gf_noZremove

	s_set_var		B,floatvar1,#0
	s_set_var		B,floatvar2,#0


	s_remove_obj		x
	s_end_strat

.nend


	s_gen_3dvecs	x,al_roty,al_rotx,al_vel
	s_add_vecs2pos	x

	s_end_strat



;*******************************************************************************
viewIntoLB1_Istrat
	s_start_strat
	s_set_strat	x,viewIntoLB1_strat
	s_set_alsflag	x,colldisable
	s_set_speed	x,#medpspeed
	s_set_alvar	B,x,al_sbyte1,#deg90/3

	s_set_alvar	W,x,al_sword1,outdist	; Z offset
	s_set_alvar	W,x,al_sword2,#0	; Y offset
	s_set_alvar	W,x,al_ptr,#0		; X offset

	s_jmp_random	.left
	s_set_alsflag	x,sflag1
.left

viewIntoLB1_strat
	s_start_strat

	s_set_objtobevar	y,viewtoobj
	

	s_jmp_ifNOTstate	y,0,.nsup
	IFEQ	SPEED_MODE
	s_add_alvar		W,x,al_sword1,#4
	ELSEIF
	s_add_alvar		W,x,al_sword1,#2
	ENDC

	s_jmp_alsflag		x,sflag1,.right
	IFEQ	SPEED_MODE
	s_add_alvar		W,x,al_ptr,#2
	ELSEIF
	s_add_alvar		W,x,al_ptr,#1
	ENDC
	s_brl			.nsup
.right
	IFEQ	SPEED_MODE
	s_add_alvar		W,x,al_ptr,#-2
	ELSEIF
	s_add_alvar		W,x,al_ptr,#-1
	ENDC
.nsup

	s_jmp_ifNOTstate	y,1,.nsdown1	; going down
	IFEQ	SPEED_MODE
	s_achase_alvar		W,x,al_sword1,#5,4
	s_add_alvar		W,x,al_sword2,#-8
	ELSEIF
	s_achase_alvar		W,x,al_sword1,#5,5
	s_add_alvar		W,x,al_sword2,#-4
	ENDC
.nsdown1

	s_jmp_ifnotstate	y,2,.nsdown2  	; boost
;	s_sub_var		W,outvz,#4*256
	IFEQ	SPEED_MODE
	s_achase_alvar		W,x,al_sword2,#maxpspeed-(inviewdist+maxpspeed),4
	s_achase_alvar		W,x,al_ptr,#0,3
	ELSEIF
	s_achase_alvar		W,x,al_sword2,#maxpspeed-(inviewdist+maxpspeed),5
	s_achase_alvar		W,x,al_ptr,#0,4
	ENDC
.nsdown2


	s_jmp_ifnotstate	y,3,.nnorm	; chase Z to norm
;	s_achase_var		W,outvz,#0,3
.nnorm


	s_jmp_ifnotstate	y,4,.nend
	s_remove_obj		x
.nend

	s_copy_pos		x,y
	s_sub_alvars		W,x,al_worldz,x,al_sword1
	s_add_alvars		W,x,al_worldy,x,al_sword2
	s_add_alvars		W,x,al_worldx,x,al_ptr

	s_copy_alvar2var	W,x,viewposx,al_worldx
	s_copy_alvar2var	W,x,viewposy,al_worldy
	s_copy_alvar2var	W,x,viewposz,al_worldz

	s_copy_alvar2var	W,x,bgsscrollZ,al_worldy


;	s_set_objtobeplayer	y
;	s_copy_pos		y,x
	s_end_strat


;*******************************************************************************
lastb2_Istrat		; tunnel.
	s_start_strat
	s_set_alsflag	x,colldisable

	s_jmpNOT_varAND	B,pstratflags,#pstf_inseq,.invis
	s_clr_alsflag	x,invisible
	s_jmp_varAND	B,gameflags2,#gf2_stratflag1,.isvis
.invis	s_set_alsflag	x,invisible
.isvis
	s_end_strat

;*******************************************************************************
lastb3_Istrat		; top entrance door.
	s_start_strat
	s_set_alsflag	x,colldisable

	s_jmpNOT_varAND		B,pstratflags,#pstf_inseq,.close
	s_JMPNOT_varAND		B,gameflags2,#gf2_stratflag1,.close
	s_jmp_alsflag		x,sflag1,.open
	s_set_objtobevar	y,viewtoobj
	s_jmp_objptrbad		y,.close
	s_jmp_Hdistmore		x,y,#500,.close
	s_OR_var		B,gameflags2,#gf2_stratflag2
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

;*****************************************************************************
lastb4_Istrat	; second door
	s_start_strat
	s_set_alvar	B,x,al_rotx,#deg90

	s_set_alsflag	x,colldisable
	s_set_alsflag	x,invisible

	s_jmpNOT_varAND	B,pstratflags,#pstf_inseq,.close
	s_jmpNOT_varAND	B,gameflags2,#gf2_stratflag2,.close
	s_clr_alsflag	x,invisible

	s_jmp_alsflag		x,sflag1,.open
	s_set_objtobevar	y,viewtoobj
	s_jmp_objptrbad		y,.end
	s_jmp_Hdistmore		x,y,#700,.close
	s_OR_var		B,gameflags,#gf_stratdone1
	s_jmp_Hdistmore		x,y,#300,.close
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
;*****************************************************************************
	IFNE	RUMBLE
partyboostrumbletab
	db	$11,$11,$22,$22,$33,$33,$44,$44,$44,$44,$44,$44,$44,$44,$44,$44,$44,$44,$44,$44,$44,rmblend
	ENDC
;*****************************************************************************
; AUTOGUIDE: Scramble Wingman Escort - Hangar launch strategy controlling teammate Arwing taxi, idle hover, and booster ignition during the SCRAMBLE sequence.
shipintro_Istrat
	s_start_strat
	s_set_strat	x,shipintro_strat
	s_set_alvar2rnd	x,al_sbyte3,#15
	s_set_alvar2rnd	x,al_sbyte4,#7
	s_scale_alvar	B,x,al_sbyte2,1
	s_AND_var		B,gameflags,#~gf_stratdone2
	s_set_alsflag	x,shadow
	IFEQ	SPEED_MODE
	s_set_lifecnt	x,#40
	ELSEIF
	s_set_lifecnt	x,#104
	ENDC
	s_setnoremove_behind	x
shipintro_strat
	s_start_strat


	s_jmpNOT_varAND		B,gameflags,#gf_stratdone2,.nboost
	IFEQ	SPEED_MODE
	s_jmp_alvarMI		B,x,al_sbyte1,.declife
	ELSEIF
	s_jmp_alvarEQ		B,x,al_sbyte1,#-1,.declife
	ENDC
	s_decbne_alvar		B,x,al_sbyte1,.nboost
	s_set_alvar		B,x,al_sbyte1,#1
	IFEQ	SPEED_MODE
	s_add_alvar		W,x,al_worldz,#50
	ELSEIF
	s_add_alvar		W,x,al_worldz,#20
	ENDC
.declife	s_dec_lifecnt		x
.nboost

	s_jmp_alvarNE		B,x,al_sbyte1,#2,.nspr
	s_set_vartobeobj	boostobj,x
	boost_sprite
	IFNE	RUMBLE
	s_queue_rumble_table	partyboostrumbletab
	ENDC
	trigse			$32
.nspr

	jsl			floatCLship_l
	s_add_alvars	W,x,al_worldy,x,al_sword1


	s_add_alvar	W,x,al_worldz,#scramspeed
	s_end_strat

;******************************************************************************
; AUTOGUIDE: Scramble Cinematic Camera Controller - Dynamic camera tracker panning over the Corneria hangar runway and trailing behind Star Fox team during booster launch.
viewopening_Istrat
	s_start_strat
	s_set_alsflag	x,invisible
	s_setnoremove_behind	x
	s_set_strat	x,viewopening_strat
	s_add_alvar		W,x,al_worldx,#-600*2
	s_add_alvar		W,x,al_worldy,#-1000*2
	s_add_alvar		W,x,al_worldz,#3500
	s_set_alvar		B,x,al_roty,#deg180
	s_set_alvar		B,x,al_rotx,#deg5
	IFEQ	SPEED_MODE
	s_set_alvar		B,x,al_sbyte1,#90
	ELSEIF
	s_set_alvar		B,x,al_sbyte1,#235
	s_set_alvar		B,x,al_sbyte2,#0
	s_set_alvar		B,x,al_sbyte3,#0
	s_set_alvar		B,x,al_sbyte4,#0
	ENDC
	s_AND_var		B,gameflags,#~gf_stratdone1
	s_and_var		B,pshipflags3,#~psf3_enginesnd
viewopening_strat
	s_start_strat

	s_set_var		W,svar_word1,player_posx
	s_set_var		W,svar_word2,#-30
;	s_set_var		W,svar_word2,player_posy
	s_set_var		W,svar_word3,player_posz


;-------------------------------------------------------------------------
	s_jmp_ifnotstate	x,0,.ns0
	s_add_var		W,svar_word1,#-400
	s_add_var		W,svar_word2,#-700
	s_add_var		W,svar_word3,#-700
	IFEQ	SPEED_MODE
	s_achase_alvar		W,x,al_worldx,svar_word1,5
	s_achase_alvar		W,x,al_worldy,svar_word2,5
	s_achase_alvar		W,x,al_worldz,svar_word3,5
	ELSEIF
	a16
	ldy	#5
	jsr	viewopen_chase_x
	ldy	#5
	jsr	viewopen_chase_y
	ldy	#5
	jsr	viewopen_chase_z
	a8
	ENDC
	s_decbne_alvar		B,x,al_sbyte1,.ns0
	s_next_state		x
	IFEQ	SPEED_MODE
	s_set_alvar		B,x,al_sbyte1,#80
	ELSEIF
	s_set_alvar		B,x,al_sbyte1,#208
	ENDC
	s_or_var		B,gameflags,#gf_stratdone2
	s_or_var		B,pshipflags3,#psf3_enginesnd
.ns0

;-------------------------------------------------------------------------
	s_jmp_ifnotstate	x,1,.ns1
	
	s_decbne_alvar		B,x,al_sbyte1,.ndone
	s_or_var		B,gameflags,#gf_stratdone1
.ndone

	s_AND_var		B,gameflags,#~gf_nozremove

	s_add_var		W,svar_word2,#20
	s_add_var		W,svar_word3,#-300

	IFEQ	SPEED_MODE
	s_achase_alvar		W,x,al_worldy,svar_word2,4
	s_achase_alvar		W,x,al_worldx,svar_word1,3,.zoom
	s_brl			.nfrick
.zoom	s_add_alvar		W,x,al_worldz,#10
	s_brl			.ns1
.nfrick
	s_achase_alvar		W,x,al_worldz,svar_word3,4
	ELSEIF
	a16
	ldy	#4
	jsr	viewopen_chase_y
	ldy	#3
	jsr	viewopen_chase_x
	bcs	.zoom
	ldy	#4
	jsr	viewopen_chase_z
	a8
	s_brl	.ns1
.zoom
	longa
	lda	al_sbyte4,x
	and	#$00ff
	clc
	adc	#980		; 10 * 98/256 = 3.828/frame (2.6x scaled vanilla +10)
	pha
	and	#$00ff
	a8
	sta	al_sbyte4,x
	a16
	pla
	xba
	and	#$00ff
	clc
	adc	al_worldz,x
	sta	al_worldz,x
	a8
	s_brl	.ns1
	ENDC
.ns1


;-------------------------------------------------------------------------



.end	s_add_alvar		W,x,al_worldz,#scramspeed
	s_copy_alvar2var	W,x,viewposx,al_worldx
	s_copy_alvar2var	W,x,viewposy,al_worldy
	s_copy_alvar2var	W,x,viewposz,al_worldz
	s_end_strat

	IFNE	SPEED_MODE
; 16.8 fixed-point 98/256-scaled achase helpers for SCRAMBLE camera (a16i16, X preserved)
	longa
	longi
viewopen_chase_x
	lda	al_worldx,x
	sta	tpx
	lda	al_sbyte2,x
	and	#$00ff
	sta	tpy
	lda	svar_word1
	jsr	viewopen_chase
	sta	al_worldx,x
	a8
	lda	tpy
	sta	al_sbyte2,x
	a16
	rts

viewopen_chase_y
	lda	al_worldy,x
	sta	tpx
	lda	al_sbyte3,x
	and	#$00ff
	sta	tpy
	lda	svar_word2
	jsr	viewopen_chase
	sta	al_worldy,x
	a8
	lda	tpy
	sta	al_sbyte3,x
	a16
	rts

viewopen_chase_z
	lda	al_worldz,x
	sta	tpx
	lda	al_sbyte4,x
	and	#$00ff
	sta	tpy
	lda	svar_word3
	jsr	viewopen_chase
	sta	al_worldz,x
	a8
	lda	tpy
	sta	al_sbyte4,x
	a16
	rts

viewopen_chase
	cmp	tpx
	bne	.do
	stz	tpy
	sec
	rts
.do
	sta	tpz		; tpz = target
	sec
	sbc	tpx		; A = diff = target - var
	pha			; 1,s = diff (for sign)
.shlp
	cmp	#$8000
	ror	a
	bpl	.shpos
	adc	#0
.shpos
	dey
	bne	.shlp
	cmp	#0
	bne	.hasstep
	lda	1,s
	bmi	.neg1
	lda	#1
	bra	.hasstep
.neg1
	lda	#-1
.hasstep
	; Multiply signed vstep by 98 = 2 + 32 + 64
	asl	a		; 2*v (preserves sign of diff)
	sta	1,s		; 1,s = 2*v
	asl	a
	asl	a
	asl	a
	asl	a		; 32*v
	tay
	asl	a		; 64*v
	clc
	adc	1,s		; 66*v
	pha
	tya
	clc
	adc	1,s		; 98*v
	ply
	clc
	adc	tpy		; total = frac + 98*v
	tay
	and	#$00ff
	sta	tpy		; new frac
	tya
	xba
	and	#$00ff
	bit	#$0080
	beq	.posext
	ora	#$ff00
.posext
	clc
	adc	tpx		; A = new_var
	tay
	pla			; A = 2*v (sign of move)
	bmi	.chkneg
	tya
	sec
	sbc	tpz
	bmi	.noover
	beq	.noover
	lda	tpz
	stz	tpy
	clc
	rts
.chkneg
	tya
	sec
	sbc	tpz
	bpl	.noover
	lda	tpz
	stz	tpy
	clc
	rts
.noover
	tya
	clc
	rts
	shorta
	longi
	ENDC

	IFNE	RUMBLE
shiprumbletab
	db	$22,$22,$33,$33,$33,$33,$22,$22,rmblend
	ENDC

;***********************************************************************************
; AUTOGUIDE: Opening Cinematic Lead Arwing - Center ship in the "Nintendo Presents" intro formation that flies downward, takes enemy fire, and explodes in mid-space.
playerdownintro_Istrat
	s_start_strat

	s_set_alsflag	x,colldisable
	s_set_alvar	B,x,al_rotx,#deg22
	s_setnoremove_behind	x
	IFNE	RUMBLE
	s_queue_rumble_table	shiprumbletab
	ENDC
	s_set_strat	x,playerdownintro_strat
	s_copy_alvar2alvar	B,x,al_sbyte3,x,al_roty
	s_copy_alvar2alvar	B,x,al_sbyte4,x,al_rotx

	IFEQ	SPEED_MODE
	s_set_alvar		B,x,al_sbyte1,#33
	s_set_alvar		B,x,al_sword2,#16	; time until hit 1
	ELSEIF
	s_set_alvar		B,x,al_sbyte1,#72
	s_set_alvar		B,x,al_sword2,#35
	s_set_alvar		B,x,al_sbyte2,#0
	ENDC
 
	s_set_debrisdata	x,#old_typp
	IFEQ	SPEED_MODE
	s_set_speed	x,#120
	ELSEIF
	s_set_speed	x,#55
	ENDC
	
	s_set_aldata		x,#1,#hardAP

	set_sound2		x,#1
playerdownintro_strat
	s_start_strat

;---------------------------------------------------------------
	s_jmp_ifnotstate	x,0,.nsdown
	s_beqdec_alvar		B,x,al_sbyte1,nextstate
	IFEQ	SPEED_MODE
	s_add_alvar		B,x,al_rotz,#1
	s_jmp_notdelay		2,.nsdown
	s_add_alvar		B,x,al_rotx,#-1
	ELSEIF
	lda			al_sbyte2,x
	bit			#1
	bne			.norotz
	s_add_alvar		B,x,al_rotz,#1
.norotz
	lda			al_sbyte2,x
	bit			#7
	bne			.nsdown
	s_add_alvar		B,x,al_rotx,#-1
	ENDC
.nsdown

;---------------------------------------------------------------
	s_jmp_ifnotstate	x,1,.nexp1
	IFEQ	SPEED_MODE
	s_set_alvar		B,x,al_sword2,#20
	ELSEIF
	s_set_alvar		B,x,al_sword2,#44
	ENDC
	jsl			makeMEDexpobj_srou
	s_set_alsflag		x,hitflash
	s_clr_alsflag		y,noexpsnd
	s_next_state		x
.nexp1

;---------------------------------------------------------------
	s_jmp_ifnotstate	x,2,.nexp2
	s_beqdec_alvar		B,x,al_sword2,fastexplodedebris_Istrat
	IFNE	SPEED_MODE
	lda			al_sbyte2,x
	bit			#1
	rlbne			.nsmk
	ENDC
	s_make_smoke		0,.nsmk
	s_set_alvar		W,y,al_vx,#40
	s_add_rnd2pos		y,127,127,127
.nsmk
	IFNE	SPEED_MODE
	lda			al_sbyte2,x
	bit			#1
	rlbne			.nexp2
	ENDC
	s_achase_alvar		B,x,al_roty,#deg90,4
	s_achase_alvar		B,x,al_rotx,#0,4
	s_achase_alvar		B,x,al_rotz,#deg45,3
.nexp2
;---------------------------------------------------------------

playerdownintro_cont
	IFEQ	SPEED_MODE
	s_achase_alvar2alvar		B,x,al_sbyte3,x,al_roty,5
	s_achase_alvar2alvar		B,x,al_sbyte4,x,al_rotx,5
	ELSEIF
	lda			al_sbyte2,x
	bit			#1
	bne			.nachase_cont
	s_achase_alvar2alvar		B,x,al_sbyte3,x,al_roty,5
	s_achase_alvar2alvar		B,x,al_sbyte4,x,al_rotx,5
.nachase_cont
	inc			al_sbyte2,x
	ENDC
	s_gen_3dvecs	x,al_sbyte3,al_sbyte4,al_vel
	s_add_vecs2pos	x
	s_add_playerZ	x
	s_end_strat


;***********************************************************************************
; AUTOGUIDE: Opening Cinematic Right Wingman Arwing - Right flank escort in the intro dive that splits off banking hard right.
playerdown2intro_Istrat
	s_start_strat

	s_set_alsflag	x,colldisable
	s_set_alvar	B,x,al_rotx,#deg22
	s_setnoremove_behind	x
	IFNE	RUMBLE
	s_queue_rumble_table	shiprumbletab
	ENDC
	s_set_strat	x,playerdown2intro_strat
	s_copy_alvar2alvar	B,x,al_sbyte3,x,al_roty
	s_copy_alvar2alvar	B,x,al_sbyte4,x,al_rotx
	IFNE	RUMBLE
	s_queue_rumble_table	shiprumbletab
	ENDC
	IFEQ	SPEED_MODE
	s_set_alvar		B,x,al_sbyte1,#30      
	s_set_lifecnt		x,#70	
	s_set_speed	x,#120
	ELSEIF
	s_set_alvar		B,x,al_sbyte1,#66
	s_set_lifecnt		x,#154
	s_set_speed	x,#55
	s_set_alvar		B,x,al_sbyte2,#0
	ENDC

	s_set_aldata		x,#8,#hardAP
	set_sound2		x,#1

playerdown2intro_strat
	s_start_strat

	s_dec_lifecnt		x

;---------------------------------------------------------------
	s_jmp_ifnotstate	x,0,.nsdown
	s_beqdec_alvar		B,x,al_sbyte1,nextstate
	IFEQ	SPEED_MODE
	s_jmp_notdelay		2,.nsdown
	ELSEIF
	lda			al_sbyte2,x
	bit			#7
	bne			.nsdown
	ENDC
	s_add_alvar		B,x,al_rotx,#-1
	s_add_alvar		B,x,al_roty,#1
.nsdown

;---------------------------------------------------------------
	s_jmp_ifnotstate	x,1,.nturn1
	IFNE	SPEED_MODE
	lda			al_sbyte2,x
	bit			#1
	rlbne			.nturn1
	ENDC
	s_achase_alvar		B,x,al_roty,#deg90,4
	s_achase_alvar		B,x,al_rotx,#0,4
	s_achase_alvar		B,x,al_rotz,#deg45,3
.nturn1
;---------------------------------------------------------------

	s_brl			playerdownintro_cont


;***********************************************************************************
; AUTOGUIDE: Opening Cinematic Left Wingman Arwing - Left flank escort in the intro dive that splits off banking hard left.
playerdown3intro_Istrat
	s_start_strat

	s_set_alsflag	x,colldisable
	s_set_alvar	B,x,al_rotx,#deg22
	s_setnoremove_behind	x
	s_set_strat	x,playerdown3intro_strat
	s_copy_alvar2alvar	B,x,al_sbyte3,x,al_roty
	s_copy_alvar2alvar	B,x,al_sbyte4,x,al_rotx
	IFNE	RUMBLE
	s_queue_rumble_table	shiprumbletab
	ENDC
	IFEQ	SPEED_MODE
	s_set_alvar		B,x,al_sbyte1,#30      
	s_set_lifecnt		x,#70	
	s_set_speed	x,#120
	ELSEIF
	s_set_alvar		B,x,al_sbyte1,#66
	s_set_lifecnt		x,#154
	s_set_speed	x,#55
	s_set_alvar		B,x,al_sbyte2,#0
	ENDC

	s_set_aldata		x,#8,#hardAP

	set_sound2		x,#1
	
playerdown3intro_strat
	s_start_strat

	s_dec_lifecnt		x

;---------------------------------------------------------------
	s_jmp_ifnotstate	x,0,.nsdown
	s_beqdec_alvar		B,x,al_sbyte1,nextstate
	IFEQ	SPEED_MODE
	s_jmp_notdelay		2,.nsdown
	ELSEIF
	lda			al_sbyte2,x
	bit			#7
	bne			.nsdown
	ENDC
	s_add_alvar		B,x,al_rotx,#-1
	s_sub_alvar		B,x,al_roty,#1
.nsdown

;---------------------------------------------------------------
	s_jmp_ifnotstate	x,1,.nturn1
	IFNE	SPEED_MODE
	lda			al_sbyte2,x
	bit			#1
	rlbne			.nturn1
	ENDC
	s_achase_alvar		B,x,al_roty,#-deg90,4
	s_achase_alvar		B,x,al_rotx,#0,4
	s_achase_alvar		B,x,al_rotz,#-deg45,3
.nturn1
;---------------------------------------------------------------

	s_brl			playerdownintro_cont


;**********************************************************************
; AUTOGUIDE: Opening Cinematic Enemy Laser Spawner - Invisible controller entity shooting rapid laser bolts from off-screen to intercept and destroy the lead Arwing.
playerfireintro_Istrat
	s_start_strat
	s_set_strat	x,playerfireintro_strat
	s_setnoremove_behind	x
	IFEQ	SPEED_MODE
	s_set_lifecnt	x,#35
	ELSEIF
	s_set_lifecnt	x,#77
	s_set_alvar	B,x,al_sbyte2,#0
	ENDC
playerfireintro_strat
	s_start_strat
	s_dec_lifecnt		x
	IFEQ	SPEED_MODE
	s_jmp_notdelay		2,.nfire,al1pt
	ELSEIF
	lda	al_sbyte2,x
	inc	al_sbyte2,x
	bit	#7
	rlbne	.nfire
	ENDC

	s_set_objtobealvar	y,x,al_sword1
	s_weapon_pos		#-50,#0,#0
	s_weapon_rots2obj	y
	s_fire_weapon		x,RELFASTELASER
	s_setnoremove_behind	y
	IFEQ	SPEED_MODE
	s_set_lifecnt		y,#60
	ELSEIF
	s_set_lifecnt		y,#120
	ENDC
	s_add_alvar		W,y,al_worldx,#-350

	s_set_objtobealvar	y,x,al_sword1
	s_weapon_pos		#50,#0,#0
	s_weapon_rots2obj	y
	s_fire_weapon		x,RELFASTELASER
	s_setnoremove_behind	y
	IFEQ	SPEED_MODE
	s_set_lifecnt		y,#60
	ELSEIF
	s_set_lifecnt		y,#120
	ENDC
	s_add_alvar		W,y,al_worldx,#350

.nfire
	s_add_playerZ		x
	s_end_strat

	IFNE	RUMBLE
idle1rumbletab
	db	$44,$00,$44,$00,$00,$00,$00,$00,rmblloop
idle2rumbletab
	db	$11,$00,$11,$00,$00,$00,$00,$00,rmblloop
	ENDC


;***********************************************************************************
boss7intro_Istrat
	s_start_strat
	s_set_alsflag	x,colldisable

	s_set_strat	x,boss7intro_strat
	s_setnoremove_behind	x

	IFEQ	SPEED_MODE
	s_set_vecs	x,#0,#5,#15
	ELSEIF
	s_set_vecs	x,#0,#2,#7
	s_set_alvar	B,x,al_sbyte1,#5	; 2.5/f initial vy in halves (5 -> 0)
	s_set_alvar	B,x,al_sbyte2,#0	; free-running 30fps frame counter
	ENDC
	s_nodepthcue	x
	IFNE	RUMBLE
	s_queue_rumble_table	idle1rumbletab
	ENDC
	s_make_childobj	#deboss_0,#1,boss7intropart_Istrat,enemy1	      
	s_nodepthcue	y
	s_make_childobj	#deboss_2,#2,boss7intropart_Istrat,enemy1	      
	s_nodepthcue	y

boss7intro_strat
	s_start_strat


	IFEQ	SPEED_MODE
	s_jmp_varless	W,bg2Yscroll,#160,.slow1
	s_jmp_varless	W,bg2Yscroll,#200,.slow2
	s_jmp_varmore	W,bg2Yscroll,#232,.nsc
.slow3
	s_jmp_notdelay	2,.nsc
	s_add_var	W,bg2Yscroll,#1
	s_brl		.nsc
.slow2	s_jmp_notdelay	1,.nsc
	s_add_var	W,bg2Yscroll,#1
	s_brl		.nsc
.slow1	;s_jmp_notdelay	1,.nsc
	s_add_var	W,bg2Yscroll,#1
.nsc
	ELSEIF
	s_jmp_varless	W,bg2Yscroll,#160,.slow1
	s_jmp_varless	W,bg2Yscroll,#200,.slow2
	s_jmp_varmore	W,bg2Yscroll,#232,.nsc
.slow3
	lda		al_sbyte2,x
	and		#7
	bne		.nsc
	s_add_var	W,bg2Yscroll,#1
	s_brl		.nsc
.slow2
	lda		al_sbyte2,x
	and		#3
	bne		.nsc
	s_add_var	W,bg2Yscroll,#1
	s_brl		.nsc
.slow1
	lda		al_sbyte2,x
	bit		#1
	bne		.nsc
	s_add_var	W,bg2Yscroll,#1
.nsc
	ENDC


	s_jmp_higher	x,#space_viewcy-400,.nstop
	s_jmp_notdelay	2,.nstop
	IFEQ	SPEED_MODE
	s_beqdec_alvar	W,x,al_vy,.nstop
	ELSEIF
	lda		al_sbyte1,x
	beq		.nstop
	dec		a
	sta		al_sbyte1,x
	lsr		a
	sta		al_vy,x
	stz		al_vy+1,x
	ENDC
.nstop
	IFNE	SPEED_MODE
	; Match 15fps vy (5->0 -> 2.5->0/f over 40 frames) and vz (15 -> 7.5/f)
	lda		al_sbyte2,x
	bit		#1
	bne		.nohalfstep
	s_add_alvar	W,x,al_worldz,#1
	lda		al_sbyte1,x
	bit		#1
	beq		.nohalfstep
	s_add_alvar	W,x,al_worldy,#1
.nohalfstep
	inc		al_sbyte2,x
	ENDC
;	s_set_objtobeplayer	y
;	s_jmp_Zdistless		x,y,#2000,.nf
;	s_jmp_notdelay		5,.nf
;	s_make_obj		#zaco_5,.nf
;	s_set_strat		y,zacointro_Istrat
;	s_copy_pos		y,x
;.nf

	s_add_vecs2pos	x
	s_add_playerZ	x
	s_end_strat

boss7intropart_Istrat
	s_start_strat
	s_set_alsflag	x,colldisable
	s_do_childrelpos	x,4
	s_end_strat
;***************************************************************************

zacointro_Istrat
	s_start_strat
	s_set_strat	x,zacointro_strat
	s_set_alsflag	x,colldisable
	s_set_alvar2rnd	x,al_rotx,#15
	s_add_alvar	B,x,al_rotx,#deg90-7
	s_set_alvar2rnd	x,al_roty
	s_set_alvar2rnd	x,al_rotz
	IFEQ	SPEED_MODE
	s_set_alvar	B,x,al_sbyte1,#10
	s_set_speed	x,#60
	s_set_lifecnt	x,#60
	ELSEIF
	s_set_alvar	B,x,al_sbyte1,#22
	s_set_speed	x,#27
	s_set_lifecnt	x,#132
	s_set_alvar	B,x,al_sbyte2,#0
	ENDC
	set_sound2	x,#3

	s_init_anim	x,#0
zacointro_strat
	s_start_strat

	IFEQ	SPEED_MODE
	s_add_anim	x,#1,#12
	ELSEIF
	s_add_anim	x,#1,#24
	ENDC

	s_dec_lifecnt	x
	s_decbne_alvar	B,x,al_sbyte1,.nturn
	s_set_alvar	B,x,al_sbyte1,#1
	IFNE	SPEED_MODE
	lda		al_sbyte2,x
	bit		#1
	rlbne		.nz
	ENDC
	s_achase_alvar	B,x,al_roty,#0,3
	s_achase_alvar	B,x,al_rotx,#0,3
	s_achase_alvar	B,x,al_rotz,#0,4
	IFEQ	SPEED_MODE
	s_speedto	x,#120,2
	ELSEIF
	s_speedto	x,#55,1
	ENDC
	s_brl		.nz
.nturn
	IFEQ	SPEED_MODE
	s_add_alvar	B,x,al_rotz,#6
	ELSEIF
	s_add_alvar	B,x,al_rotz,#3
	ENDC
.nz
	IFNE	SPEED_MODE
	inc		al_sbyte2,x
	ENDC

	s_gen_3dvecs	x,al_roty,al_rotx,al_vel
	s_add_vecs2pos	x
	s_add_playerZ	x
	s_end_strat

;***************************************************************************

zaco2intro_Istrat
	s_start_strat
	s_set_strat	x,zaco2intro_strat
	s_set_alsflag	x,colldisable
	IFEQ	SPEED_MODE
	s_set_speed	x,#45
	ELSEIF
	s_set_speed	x,#20
	ENDC
	IFNE	RUMBLE
	s_queue_rumble_table	idle2rumbletab
	ENDC
	s_set_alvar	B,x,al_rotx,#deg90
	IFEQ	SPEED_MODE
	s_set_alvar	B,x,al_sbyte1,#30
	s_set_alvar	B,x,al_sbyte2,#6	; time until end after near player.
	ELSEIF
	s_set_alvar	B,x,al_sbyte1,#68
	s_set_alvar	B,x,al_sbyte2,#0	; free-running 30fps cadence counter
	ENDC
	set_sound2	x,#3
	s_init_anim	x,#0

zaco2intro_strat
	s_start_strat

	IFEQ	SPEED_MODE
	s_add_anim	x,#1,#12
	ELSEIF
	s_add_anim	x,#1,#24
	ENDC

;--------------------------------------------------------
	s_jmp_ifnotstate	x,0,.ns0
	IFEQ	SPEED_MODE
	s_add_alvar	B,x,al_rotz,#6
	ELSEIF
	s_add_alvar	B,x,al_rotz,#3
	ENDC
	s_decbne_alvar	B,x,al_sbyte1,.ns0
	s_next_state	x
	IFEQ	SPEED_MODE
	s_set_alvar	B,x,al_sbyte1,#42
	ELSEIF
	s_set_alvar	B,x,al_sbyte1,#84
	ENDC
.ns0
;--------------------------------------------------------
	s_jmp_ifnotstate	x,1,.ns1
	IFEQ	SPEED_MODE
	s_add_alvar	B,x,al_rotx,#4
	s_add_alvar	B,x,al_roty,#9
	s_add_alvar	B,x,al_rotz,#6
	ELSEIF
	s_add_alvar	B,x,al_rotx,#2
	lda		al_sbyte2,x
	bit		#1
	bne		.z2roty4
	s_add_alvar	B,x,al_roty,#5
	s_brl		.z2roty_ok
.z2roty4
	s_add_alvar	B,x,al_roty,#4
.z2roty_ok
	s_add_alvar	B,x,al_rotz,#3
	ENDC
	s_decbne_alvar	B,x,al_sbyte1,.ns1
	s_next_state	x
	IFEQ	SPEED_MODE
	s_set_alvar	B,x,al_sbyte1,#20
	ELSEIF
	s_set_alvar	B,x,al_sbyte1,#44
	ENDC
.ns1

;--------------------------------------------------------
	s_jmp_ifnotstate	x,2,.ns2
	IFEQ	SPEED_MODE
	s_add_alvar	B,x,al_rotz,#6
	ELSEIF
	s_add_alvar	B,x,al_rotz,#3
	ENDC
	s_set_objtobeplayer	y

	s_jmp_Zdistless		x,y,#50,.nfire
	s_jmp_Zdistmore		x,y,#1000,.nfire
	IFEQ	SPEED_MODE
	s_jmp_notdelay		2,.ns2
	ELSEIF
	lda			al_sbyte2,x
	bit			#7
	rlbne			.ns2
	ENDC
	s_weapon_pos		#0,#0,#0
	s_weapon_rndrots2obj	y,7,7
	s_fire_weapon		x,RELFASTELASER
	IFNE	SPEED_MODE
	s_set_lifecnt		y,#80
	ENDC
.nfire
	s_set_objtobeplayer	y
	s_jmp_Zdistless		x,y,#500,.ns2
	IFEQ	SPEED_MODE
	s_obj2obj_3dangle	x,y,al_roty,al_rotx,2
	ELSEIF
	lda			al_sbyte2,x
	bit			#1
	rlbne			.ns2
	s_obj2obj_3dangle	x,y,al_roty,al_rotx,2
	ENDC
.ns2

	IFNE	SPEED_MODE
	inc			al_sbyte2,x
	ENDC


;--------------------------------------------------------

	s_gen_3dvecs	x,al_roty,al_rotx,al_vel
	s_add_vecs2pos	x
	s_add_playerZ	x

	s_set_objtobeplayer	y
	s_jmp_objinfront	x,y,.nexit
;	s_decbne_alvar		B,x,al_sbyte2,.nexit
	IFNE	RUMBLE
	s_end_rumble_table
	ENDC
	s_set_var		B,exitintro,#1
.nexit

	s_end_strat




	strats_end

































