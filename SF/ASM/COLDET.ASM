	shorta
	longi


; this macro does a collision detection check
; xcol,ycol,zcol = sh_maxx-z of shape #1
; xp,ys,zp = x,y,z of shape #1
; tpx,tpy,tpz = x,y,z of shape #2
; x points to shape header or collision box structure
coldet	MACRO	; notcollidedroutine,collidedroutine,offset value for x y and z

;offsetforx	=	\3	;sh_xmax
;offsetfory	=	\4	;sh_ymax
;offsetforz	=	\5	;sh_zmax


	lda.w	\5,x
	clc
	adc	zcol
	sta	rangexz
	lda	tpz	; alien's z
	sec
	sbc	zp
	bpl	.chkcoll5\@
	eor	#WM
	inc	a
.chkcoll5\@
	sec
	sbc	rangexz
	bmi	.chkcoll6\@
	jmp	\1
.chkcoll6\@
	lda.w	\3,x
	clc
	adc	xcol
	sta	rangexz
	lda	tpx		; alien's x
	sec
	sbc	xp
	bpl	.chkcoll2\@
	eor	#WM
	inc	a
.chkcoll2\@
	sec
	sbc	rangexz
	bmi	.chkcoll3\@
	jmp	\1
.chkcoll3\@

	lda.w	\4,x
	clc
	adc	ycol
	sta	rangexz
	lda	tpy	; alien's y + height
	sec
	sbc	ys
	bpl	.chkcoll51\@
	eor	#WM
	inc	a
.chkcoll51\@
	sec
	sbc	rangexz
	bmi	\2
	jmp	\1
	ENDM


scale_a	MACRO
	tax
	lda	scale
	and	#cbf_scale
	beq	.noscale\@
	jsr	scale_a_sub
	bra	.scaled\@
.noscale\@
	txa
.scaled\@
	ENDM



; tmpx,xp,ys,zp,x1,y1,z1,collradius

chkcoll_l
	jsr	chkcoll
	rtl


init_strats_ram_l
	phb
	php

	a8i16

	IFEQ	0
	ldx	allst
	beq	.nc_done
.ccf	lda	al_sflags,x
	bit	#asf_collide
	bne	.ncci
	lda	#1
	sta	al_collcount,x
	bra	.nclc
.ncci	and	#~asf_collide
	sta	al_sflags,x
	lda	al_sflags2,x
	ora	#asf_Lcollide
	sta	al_sflags2,x
.nclc	stz	al_collobjptr,x
	stz	al_collobjptr+1,x
.nc	ldy	_next,x
	tyx
	bne	.ccf
.nc_done

	ENDC

	a8
	lda	#$7e
	pha
	plb		; set data bank register
	a16
	stz	cb_cache_cnt
	stz	cb_pool_off
	a8
	stz	cb_ov_lock

;----------------------------------------------------
	lda	collistcnt
	cmp	#2
	bcc	.mmiss
	ldx	collist_outer_end
	beq	.mmiss

	ldx	#0
.dc
	phx
	jsr	chkcoll
	plx

	a16
	txa
	clc
	adc	#cl_sizeof
	tax
	cmp	collist_outer_end
	a8
	bcs	.mmiss

	dec	collistcnt
	lda	collistcnt
	cmp	#2
	bcs	.dc
.mmiss
	inc	collistcnt+1

	plp
	plb
	rtl


	shorta
	longi


chkcoll
	stx	tmpy

	ldy	cl_alien&WM,x
	tyx
	stx	tmpx

	test_alsflag	x,collide
	lbne	.finish

	ldy	al_shape,x
	sty	currshape

	stz	temphitflag
	lda	al_HP,x
	inc	a
	bne	.not_outer_stat
	ldy	al_stratptr,x
	bne	.not_outer_stat
	inc	temphitflag
.not_outer_stat
	lda	al_collflags,x
	and	#acf_colltype1!acf_colltype2!acf_colltype3!acf_colltype4!acf_colltype5
	sta	cur_collflags
	stz	cur_collflags+1
	ldy	tmpy

	stz	flagset
	stz	scale+1

	a16

.usexyz	lda.w	cl_colbox&WM,y
	lbeq	.normcol		; normal collision detection?
	tay				; Y = head cb ptr
	lda.w	cb_next,y
	lbne	.multi_cb

	; --- Single-box outer (cb != 0, cb_next == 0) via cb_cache ---
	ldx	tmpx
	jsr	_get_or_build_cb_cache	; X = slot_off
	lda.w	cb_slot_start&WM,x
	tax
	lda.w	cb_pool+cbx_xp&WM,x
	sta	xp
	lda.w	cb_pool+cbx_ys&WM,x
	sta	ys
	lda.w	cb_pool+cbx_zp&WM,x
	sta	zp
	lda.w	cb_pool+cbx_rx&WM,x
	sta	xcol
	lda.w	cb_pool+cbx_ry&WM,x
	sta	ycol
	lda.w	cb_pool+cbx_rz&WM,x
	sta	zcol
	a8
	lda.w	cb_pool+cbx_fs&WM,x
	sta	flagset
	a16
	jsr	.forcein
	brl	.finish

.multi_cb
	; Broad-phase Z + collflags + imm pre-check for multi-box outer objects
	phy				; push head cb ptr
	ldx	tmpx
	a8
	test_alsflag	x,sameshapecollide
	bne	.broad_allow_same
	inc	flagset
.broad_allow_same
	a16
	ldy	tmpy			; Y = outer COLLIST offset
	lda	al_worldz,x
	sta	zp
	lda.w	cl_zmax&WM,y
	clc
	adc	#450
	sta	zcol
	lda	al_collflags,x
	and	#acf_colltype1!acf_colltype2!acf_colltype3!acf_colltype4!acf_colltype5
	pha			; 1,s = masked self collflags; 3,s = head cb ptr
.broad_nxt
	tya
	clc
	adc	#cl_sizeof&WM
	tay
	cpy	col_laser_end
	bcs	.to_broad_none
.broad_chk
	ldx	cl_alien&WM,y
	lda	al_worldz,x
	sec
	sbc	zp
	bpl	.bzpos
	eor	#WM
	inc	a
	sec
	sbc.w	cl_zmax&WM,y
	bcc	.broad_zhit	; |dz| < cl_zmax[y] -> strictly < cl_zmax[y] + zcol
	sbc	zcol		; C=1 guaranteed here
	bmi	.broad_zhit
	cpy	col_sort_off
	bcc	.broad_nxt
	cpy	col_laser_off
	bcs	.broad_nxt	; Zone L ascending -> neg miss keeps scanning
	ldy	col_laser_off
	cpy	col_laser_end
	bcc	.broad_chk
.to_broad_none
	brl	.broad_none
.bzpos	sec
	sbc.w	cl_zmax&WM,y
	bcc	.broad_zhit
	sbc	zcol
	bmi	.broad_zhit
	cpy	col_zexit_off
	bcc	.broad_nxt
	bra	.to_broad_none	; Zone L ascending -> pos miss exits!
.broad_zhit
	lda	al_collflags,x
	and	1,s
	bne	.broad_nxt
	lda	tmpx
	cmp	al_immuneptr,x
	beq	.broad_nxt
	stx	tmpcl
	ldx	tmpx
	lda.w	al_immuneptr,x
	ldx	tmpcl
	cmp	tmpcl
	beq	.broad_nxt
	lda	flagset
	bit	#$00ff
	beq	.broad_diffshp
	lda	al_shape,x
	cmp	currshape
	beq	.broad_nxt
.broad_diffshp
	lda	temphitflag
	and	#$00ff
	beq	.broad_match
	lda	al_HP,x
	and	#$00ff
	cmp	#$00ff
	bne	.broad_match
	lda	al_stratptr,x
	lbeq	.broad_nxt
.broad_match
	sty	tmpcl			; save first broad match COLLIST offset
	pla				; pop masked self collflags
	ply				; Y = head cb ptr
	ldx	tmpx
	jsr	_get_or_build_cb_cache	; X = slot_off (and cb_slot_off)
	cpx	#(cb_max_slots*2)
	bcc	.mc_no_ov
	inc	cb_ov_lock
.mc_no_ov
	; Build exact candidate list filtered against rotated union AABB
	lda.w	cb_slot_ucx&WM,x
	sta	xp
	lda.w	cb_slot_ucy&WM,x
	sta	ys
	lda.w	cb_slot_ucz&WM,x
	sta	zp
	lda.w	cb_slot_urx&WM,x
	sta	xcol
	lda.w	cb_slot_ury&WM,x
	sta	ycol
	lda.w	cb_slot_urz&WM,x
	sta	zcol

	stz	cb_cand_cnt
	ldy	tmpcl
	bra	.cand_chk
.cand_nxt
	tya
	clc
	adc	#cl_sizeof&WM
	tay
	cpy	col_laser_end
	lbcs	.cand_done
.cand_chk
	ldx	cl_alien&WM,y
	lda	al_worldz,x
	sec
	sbc	zp
	bpl	.czpos
	eor	#WM
	inc	a
	sec
	sbc.w	cl_zmax&WM,y
	sec
	sbc	zcol
	bmi	.czpass
	cpy	col_sort_off
	bcc	.cand_nxt
	cpy	col_laser_off
	bcs	.cand_nxt
	ldy	col_laser_off
	cpy	col_laser_end
	lbcs	.cand_done
	bra	.cand_chk
.czpos
	sec
	sbc.w	cl_zmax&WM,y
	sec
	sbc	zcol
	bmi	.czpass
	cpy	col_zexit_off
	bcc	.cand_nxt
	brl	.cand_done
.czpass
	lda	al_collflags,x
	bit	cur_collflags
	bne	.cand_nxt
	lda	tmpx
	cmp	al_immuneptr,x
	beq	.cand_nxt
	stx	cb_cand_tmp
	ldx	tmpx
	lda.w	al_immuneptr,x
	ldx	cb_cand_tmp
	cmp	cb_cand_tmp
	beq	.cand_nxt
	lda	temphitflag
	and	#$00ff
	beq	.cand_chk_shp
	lda	al_HP,x
	and	#$00ff
	cmp	#$00ff
	bne	.cand_chk_shp
	lda	al_stratptr,x
	lbeq	.cand_nxt
.cand_chk_shp
	lda	al_shape,x
	cmp	currshape
	bne	.cand_chk_xy
	lda	flagset
	bit	#$00ff
	lbne	.cand_nxt
	a8
	test_alsflag	x,sameshapecollide
	bne	.cand_same_ok
	a16
	brl	.cand_nxt
.cand_same_ok
	a16
.cand_chk_xy
	lda	al_worldx,x
	sec
	sbc	xp
	bpl	.cxpos
	eor	#WM
	inc	a
.cxpos
	sec
	sbc.w	cl_xmax&WM,y
	sec
	sbc	xcol
	lbpl	.cand_nxt
	lda	al_worldy,x
	sec
	sbc	ys
	bpl	.cypos
	eor	#WM
	inc	a
.cypos
	sec
	sbc.w	cl_ymax&WM,y
	sec
	sbc	ycol
	lbpl	.cand_nxt

	ldx	cb_cand_cnt
	tya
	sta.w	cb_cands&WM,x
	inx
	inx
	stx	cb_cand_cnt
	brl	.cand_nxt

.cand_done
	lda	cb_cand_cnt
	lbeq	.mc_done
	ldx	cb_slot_off
	lda.w	cb_slot_end&WM,x
	sta	cb_cur_end
	lda.w	cb_slot_start&WM,x
	sta	cb_cur_box
.box_loop
	ldx	cb_cur_box
	lda.w	cb_pool+cbx_xp&WM,x
	sta	xp
	lda.w	cb_pool+cbx_ys&WM,x
	sta	ys
	lda.w	cb_pool+cbx_zp&WM,x
	sta	zp
	lda.w	cb_pool+cbx_rx&WM,x
	sta	xcol
	lda.w	cb_pool+cbx_ry&WM,x
	sta	ycol
	lda.w	cb_pool+cbx_rz&WM,x
	sta	zcol
	a8
	lda.w	cb_pool+cbx_fs&WM,x
	sta	flagset
	a16
	stz	cb_cand_idx
.ci_loop
	ldx	cb_cand_idx
	lda.w	cb_cands&WM,x
	tay
	ldx	cl_alien&WM,y
	lda	al_worldz,x
	sec
	sbc	zp
	bpl	.cizp
	eor	#WM
	inc	a
.cizp
	sec
	sbc.w	cl_zmax&WM,y
	sec
	sbc	zcol
	bpl	.ci_next

	lda	al_worldx,x
	sec
	sbc	xp
	bpl	.cixp
	eor	#WM
	inc	a
.cixp
	sec
	sbc.w	cl_xmax&WM,y
	sec
	sbc	xcol
	bpl	.ci_next

	lda	al_worldy,x
	sec
	sbc	ys
	bpl	.ciyp
	eor	#WM
	inc	a
.ciyp
	sec
	sbc.w	cl_ymax&WM,y
	sec
	sbc	ycol
	bpl	.ci_next

	sty	tmpcl
	txy
	ldx	tmpcl
	lda.w	cl_colbox&WM,x
	lbeq	chkcoll61
	jsr	nxtbox_sub
	lbcs	endccoll
	a16
.ci_next
	lda	cb_cand_idx
	clc
	adc	#2
	sta	cb_cand_idx
	cmp	cb_cand_cnt
	lbcc	.ci_loop

	lda	cb_cur_box
	clc
	adc	#cbx_sizeof
	sta	cb_cur_box
	cmp	cb_cur_end
	lbcc	.box_loop
.mc_done
	a8
	stz	cb_ov_lock
	rts

.broad_none
	pla			; pop masked self collflags
	pla			; pop head cb ptr
.finish	a8
	stz	cb_ov_lock
	rts

	longa	
.normcol
	lda.w	cl_xmax&WM,y
	sta	xcol
	lda.w	cl_ymax&WM,y
	sta	ycol
	lda.w	cl_zmax&WM,y
	sta	zcol
.userad	lda	al_worldx,x
	sta	xp
	lda	al_worldz,x
	sta	zp
	lda	al_worldy,x
	sta	ys
.forcein
	ldy	tmpy
	bra	chkcollnxt

chkcollnxt_reload
	a16
	ldy	tmpcl
chkcollnxt
	tya
	clc
	adc	#cl_sizeof&WM
	tay
	cpy	col_laser_end
	bcc	chkcoll0
chkcoll_exit
	brl	endccoll

chkcoll0
	ldx	cl_alien&WM,y

	; --- Fast 16-bit 3D Bounding Box Overlap Check (Z -> collflags/imm -> X -> Y) ---
	lda	al_worldz,x
	sta	tpz
	sec
	sbc	zp
	bpl	.zpos_only
	eor	#WM
	inc	a
	sec
	sbc.w	cl_zmax&WM,y
	sec
	sbc	zcol
	bmi	.zpass
	cpy	col_sort_off
	bcc	chkcollnxt
	cpy	col_laser_off
	bcs	chkcollnxt	; Zone L ascending -> neg miss keeps scanning
	ldy	col_laser_off
	cpy	col_laser_end
	bcs	chkcoll_exit
	bra	chkcoll0
.zpos_only
	sec
	sbc.w	cl_zmax&WM,y
	sec
	sbc	zcol
	bmi	.zpass
	cpy	col_zexit_off
	bcc	chkcollnxt
	bra	chkcoll_exit	; Zone L ascending -> pos miss exits!
.zpass
	lda	al_collflags,x
	bit	cur_collflags
	bne	chkcollnxt
	sty	tmpcl
	lda	tmpx
	cmp	al_immuneptr,x
	beq	chkcollnxt
	txa
	ldy	tmpx
	cmp.w	al_immuneptr,y
	beq	chkcollnxt_reload
	ldy	tmpcl

	lda	al_worldx,x
	sta	tpx
	sec
	sbc	xp
	bpl	.xpos
	eor	#WM
	inc	a
.xpos	sec
	sbc.w	cl_xmax&WM,y
	sec
	sbc	xcol
	bpl	chkcollnxt

	lda	al_worldy,x
	sta	tpy
	sec
	sbc	ys
	bpl	.ypos
	eor	#WM
	inc	a
.ypos	sec
	sbc.w	cl_ymax&WM,y
	sec
	sbc	ycol
	lbpl	chkcollnxt

	ldy	tmpx	; x = alien1, y = alien2

	test_alsflag	y,collide
	lbne	chkcollnxt_reload

	; --- Static Scenery vs Static Scenery Filter ---
	; If BOTH Object X and Object Y are static scenery, skip pairwise test
	lda	temphitflag
	and	#$00ff
	beq	.eval_pair
	lda	al_HP,x
	and	#$00ff
	cmp	#$00ff
	bne	.eval_pair
	lda	al_stratptr,x
	lbeq	chkcollnxt_reload

.eval_pair
	test_alsflag	x,sameshapecollide
	beq		.chkitnow
	test_alsflag	y,sameshapecollide
	beq		.chkitnow
.nochkitnow
	lda		al_shape,x
	txy
	bra		.nochk
.chkitnow
	lda	al_shape,x
	txy

	cmp	currshape		; same shape?
	lbeq	chkcollnxt_reload
.nochk
	ldx	tmpcl
	lda.w	cl_colbox&WM,x	; collision box list
	lbeq	chkcoll61		; nope, normal collisions (3D box already matched!)
	jsr	nxtbox_sub
	lbcc	chkcollnxt_reload
	brl	endccoll

;-----------------------------------------------------------------------------
; nxtbox_sub: Check inner object Y (cbptr in A) against outer box xp..zcol.
; Entry: DB=$7E, a16i16, Y = inner_al, A = cb_ptr
; Exit:  a8, C=1 if hit (collflags/hitflags/collobjptr updated), C=0 if miss
; Preserves: outer xp..zcol, flagset, tmpx, tmpcl, cb_slot_off, cb_cur_box
;-----------------------------------------------------------------------------
nxtbox_sub
	sta	cb_cand_tmp
	lda	cb_slot_off
	pha
	lda	cb_cur_box
	pha
	phy				; 1,s = inner_al
	tyx
	ldy	cb_cand_tmp
	jsr	_get_or_build_cb_cache	; X = inner slot_off

	; Fast rotated union AABB reject
	lda.w	cb_slot_ucz&WM,x
	sec
	sbc	zp
	bpl	.uzp
	eor	#WM
	inc	a
.uzp
	sec
	sbc.w	cb_slot_urz&WM,x
	sec
	sbc	zcol
	lbpl	nxtbox_miss_pop

	lda.w	cb_slot_ucx&WM,x
	sec
	sbc	xp
	bpl	.uxp
	eor	#WM
	inc	a
.uxp
	sec
	sbc.w	cb_slot_urx&WM,x
	sec
	sbc	xcol
	lbpl	nxtbox_miss_pop

	lda.w	cb_slot_ucy&WM,x
	sec
	sbc	ys
	bpl	.uyp
	eor	#WM
	inc	a
.uyp
	sec
	sbc.w	cb_slot_ury&WM,x
	sec
	sbc	ycol
	lbpl	nxtbox_miss_pop

	lda.w	cb_slot_end&WM,x
	sta	cb_cand_tmp
	lda.w	cb_slot_start&WM,x
	tax
	a8
	stz	temphitflag2
	a16
nxtbox_loop
	lda.w	cb_pool+cbx_zp&WM,x
	sec
	sbc	zp
	bpl	.bzp
	eor	#WM
	inc	a
.bzp
	sec
	sbc.w	cb_pool+cbx_rz&WM,x
	sec
	sbc	zcol
	bpl	nxtbox_adv

	lda.w	cb_pool+cbx_xp&WM,x
	sec
	sbc	xp
	bpl	.bxp
	eor	#WM
	inc	a
.bxp
	sec
	sbc.w	cb_pool+cbx_rx&WM,x
	sec
	sbc	xcol
	bpl	nxtbox_adv

	lda.w	cb_pool+cbx_ys&WM,x
	sec
	sbc	ys
	bpl	.byp
	eor	#WM
	inc	a
.byp
	sec
	sbc.w	cb_pool+cbx_ry&WM,x
	sec
	sbc	ycol
	bpl	nxtbox_adv

boxhit
	a8
	lda.w	cb_pool+cbx_fs&WM,x
	ora	temphitflag2
	sta	temphitflag2
	a16
nxtbox_adv
	txa
	clc
	adc	#cbx_sizeof
	tax
	cmp	cb_cand_tmp
	bcc	nxtbox_loop

	ply				; Y = inner_al
	pla
	sta	cb_cur_box
	pla
	sta	cb_slot_off
	a8
	lda	temphitflag2
	beq	nxtbox_nohit
	ldx	tmpx
	s_set_alsflag	x,collide
	s_set_alvartobeobj	x,al_collobjptr,y
	s_set_alsflag	y,collide
	s_set_alvartobeobj	y,al_collobjptr,x

	lda.w	al_hitflags,y
	ora	temphitflag2
	sta.w	al_hitflags,y
	lda	al_hitflags,x
	ora	flagset
	sta	al_hitflags,x
	sec
	rts

nxtbox_miss_pop
	ply
	pla
	sta	cb_cur_box
	pla
	sta	cb_slot_off
	a8
nxtbox_nohit
	clc
	rts

	longa
chkcoll61
	phx

	ldx	tmpx

	a8

	s_set_alsflag	x,collide
	s_set_alvartobeobj	x,al_collobjptr,y
	s_set_alsflag	y,collide
	s_set_alvartobeobj	y,al_collobjptr,x

	lda	al_hitflags,x
	ora	flagset
	sta	al_hitflags,x
.out
	plx
chkcoll1
endccoll
	a8
	stz	cb_ov_lock
	rts

;-----------------------------------------------------------------------------
; scale_a_sub: Shift X left by A (1..15). Entry a16i16. Preserves Y.
;-----------------------------------------------------------------------------
	longa
	longi
scale_a_sub
	stx	x1
	asl	a
	tax
	lda	x1
	jmp	(.stab&WM,x)
.s15	asl	a
.s14	asl	a
.s13	asl	a
.s12	asl	a
.s11	asl	a
.s10	asl	a
.s9	asl	a
.s8	asl	a
.s7	asl	a
.s6	asl	a
.s5	asl	a
.s4	asl	a
.s3	asl	a
.s2	asl	a
.s1	asl	a
	rts
.stab
	dw	0,(.s1)&WM,(.s2)&WM,(.s3)&WM,(.s4)&WM,(.s5)&WM,(.s6)&WM,(.s7)&WM,(.s8)&WM
	dw	(.s9)&WM,(.s10)&WM,(.s11)&WM,(.s12)&WM,(.s13)&WM,(.s14)&WM,(.s15)&WM

;-----------------------------------------------------------------------------
; _get_or_build_cb_cache: Lookup or build rotated sub-box cache & union AABB.
; Entry: DB=$7E, a16i16, X = alien ptr, Y = head cb ptr
; Exit:  a16i16, X = slot_off (and cb_slot_off)
;-----------------------------------------------------------------------------
_get_or_build_cb_cache
	stx	cb_cur_al
	txa
	ldx	cb_cache_cnt
	beq	.cb_miss
.cb_find
	dex
	dex
	cmp.w	cb_slot_al&WM,x
	beq	.cb_hit
	cpx	#0
	bne	.cb_find
	bra	.cb_miss
.cb_hit
	stx	cb_slot_off
	rts

.cb_miss
	ldx	cb_cache_cnt
	cpx	#(cb_max_slots*2)
	bcs	.cb_use_ov
	lda	cb_pool_off
	cmp	#((cb_max_boxes-cb_ov_boxes)*cbx_sizeof)
	bcs	.cb_use_ov
	sta.w	cb_slot_start&WM,x
	sta	cb_cur_box
	lda	cb_cur_al
	sta.w	cb_slot_al&WM,x
	stx	cb_slot_off
	txa
	clc
	adc	#2
	sta	cb_cache_cnt
	bra	.cb_slot_ok
.cb_use_ov
	lda	cb_ov_lock
	and	#$00ff
	bne	.cb_ov2
	ldx	#(cb_max_slots*2)
	lda	#(cb_max_boxes*cbx_sizeof)
	bra	.cb_ov_set
.cb_ov2
	ldx	#((cb_max_slots+1)*2)
	lda	#((cb_max_boxes+cb_ov_boxes)*cbx_sizeof)
.cb_ov_set
	stx	cb_slot_off
	sta.w	cb_slot_start&WM,x
	sta	cb_cur_box

.cb_slot_ok
	ldx	cb_cur_al
	lda	al_worldx,x
	sta	objx
	lda	al_worldy,x
	sta	objy
	lda	al_worldz,x
	sta	objz

.cb_loop
	a8
	lda.w	cb_frame,y
	beq	.noanim
	sta	y1
	and	#$7f
	dec	a
	sta	x1
	lda.l	alx_animframe,x
	bpl	.normanim
	and	#127
	bit	y1
	bpl	.chkf
	lsr	a
.chkf
	cmp	x1
	bcc	.frame_ok
	lda	x1
.frame_ok
	beq	.firstframe
	bra	.intoanim
.normanim
	lda	x1
	and	gameframe
	beq	.firstframe
.intoanim
	a16
	and	#255
	asl	a
	sta	x1
	asl	a
	asl	a
	asl	a
	clc
	adc	x1
	sty	x1
	adc	x1
	tay
	a8
.firstframe
.noanim
	lda.w	cb_rotz,y
	sta	scale
	bit	#cbf_rotz!cbf_roty!cbf_rotx!cbf_rotxyz
	lbeq	.normrot
	bit	#cbf_rotz
	lbne	.rotz
	bit	#cbf_roty
	lbne	.roty
	bit	#cbf_rotx
	lbne	.rotx

.rotxyz
	lda.w	cb_xoff,y
	sta	x1
	sta	x2
	lda.w	cb_yoff,y
	sta	y1
	sta	y2
	lda	al_rotz,x
	beq	.missrotz2
	jsr	rotate_8yx_ram
.missrotz2
	lda	y2
	sta	y1
	lda.w	cb_zoff,y
	sta	z1
	sta	z2
	lda	al_rotx,x
	beq	.missrotx2
	jsr	rotate_8yz_ram
.missrotx2
	lda	x2
	sta	x1
	lda	z2
	sta	z1
	lda	al_roty,x
	beq	.missroty2
	jsr	rotate_8xz_ram
.missroty2
	a16
	lda	x2
	sexa
	SCALE_A
	sta	tpx
	lda	z2
	sexa
	SCALE_A
	sta	tpz
	lda	y2
	sexa
	SCALE_A
	sta	tpy
	brl	.normnon

	shorta
.rotx
	lda.w	cb_yoff,y
	sta	y1
	sta	y2
	lda.w	cb_zoff,y
	sta	z1
	sta	z2
	lda	al_rotx,x
	beq	.missrotx
	jsr	rotate_8yz_ram
.missrotx
	a16
	lda	y2
	sexa
	SCALE_A
	sta	tpy
	lda	z2
	sexa
	SCALE_A
	sta	tpz
	lda.w	cb_xoff,y
	sta	tpx
	brl	.normnon

	shorta
.roty
	lda.w	cb_xoff,y
	sta	x1
	sta	x2
	lda.w	cb_zoff,y
	sta	z1
	sta	z2
	lda	al_roty,x
	beq	.missroty
	cmp	#deg180
	bne	.doroty
	lda	#0
	sec
	sbc	x2
	sta	x2
	lda	#0
	sec
	sbc	z2
	sta	z2
	bra	.missroty
.doroty
	jsr	rotate_8xz_ram
.missroty
	a16
	lda	x2
	sexa
	SCALE_A
	sta	tpx
	lda	z2
	sexa
	SCALE_A
	sta	tpz
	lda.w	cb_yoff,y
	sta	tpy
	bra	.normnon

	shorta
.rotz
	lda.w	cb_xoff,y
	sta	x1
	sta	x2
	lda.w	cb_yoff,y
	sta	y1
	sta	y2
	lda	al_rotz,x
	beq	.missrotz
	jsr	rotate_8yx_ram
.missrotz
	a16
	lda	x2
	sexa
	SCALE_A
	sta	tpx
	lda	y2
	sexa
	SCALE_A
	sta	tpy
	lda.w	cb_zoff,y
	sta	tpz
	bra	.normnon

.normrot
	a16
	lda.w	cb_xoff,y
	sta	tpx
	lda.w	cb_yoff,y
	sta	tpy
	lda.w	cb_zoff,y
	sta	tpz

.normnon
	lda.w	cb_next,y
	pha
	ldx	cb_cur_box

	lda	tpx
	clc
	adc	objx
	sta.w	cb_pool+cbx_xp&WM,x
	lda	tpy
	clc
	adc	objy
	sta.w	cb_pool+cbx_ys&WM,x
	lda	tpz
	clc
	adc	objz
	sta.w	cb_pool+cbx_zp&WM,x

	lda.w	cb_xmax,y
	sta.w	cb_pool+cbx_rx&WM,x
	lda.w	cb_ymax,y
	sta.w	cb_pool+cbx_ry&WM,x
	lda.w	cb_zmax,y
	sta.w	cb_pool+cbx_rz&WM,x

	lda.w	cb_flagset,y
	and	#$00ff
	sta.w	cb_pool+cbx_fs&WM,x

	ldy	cb_slot_off
	txa
	cmp.w	cb_slot_start&WM,y
	bne	.cb_upd_bounds

	lda	tpx
	sec
	sbc.w	cb_pool+cbx_rx&WM,x
	sta	cb_minx
	lda	tpx
	clc
	adc.w	cb_pool+cbx_rx&WM,x
	sta	cb_maxx

	lda	tpy
	sec
	sbc.w	cb_pool+cbx_ry&WM,x
	sta	cb_miny
	lda	tpy
	clc
	adc.w	cb_pool+cbx_ry&WM,x
	sta	cb_maxy

	lda	tpz
	sec
	sbc.w	cb_pool+cbx_rz&WM,x
	sta	cb_minz
	lda	tpz
	clc
	adc.w	cb_pool+cbx_rz&WM,x
	sta	cb_maxz
	bra	.cb_adv_box

.cb_upd_bounds
	lda	tpx
	sec
	sbc.w	cb_pool+cbx_rx&WM,x
	sta	x1
	sec
	sbc	cb_minx
	bpl	.u_maxx
	lda	x1
	sta	cb_minx
.u_maxx
	lda	tpx
	clc
	adc.w	cb_pool+cbx_rx&WM,x
	sta	x1
	sec
	sbc	cb_maxx
	bmi	.u_miny
	lda	x1
	sta	cb_maxx
.u_miny
	lda	tpy
	sec
	sbc.w	cb_pool+cbx_ry&WM,x
	sta	x1
	sec
	sbc	cb_miny
	bpl	.u_maxy
	lda	x1
	sta	cb_miny
.u_maxy
	lda	tpy
	clc
	adc.w	cb_pool+cbx_ry&WM,x
	sta	x1
	sec
	sbc	cb_maxy
	bmi	.u_minz
	lda	x1
	sta	cb_maxy
.u_minz
	lda	tpz
	sec
	sbc.w	cb_pool+cbx_rz&WM,x
	sta	x1
	sec
	sbc	cb_minz
	bpl	.u_maxz
	lda	x1
	sta	cb_minz
.u_maxz
	lda	tpz
	clc
	adc.w	cb_pool+cbx_rz&WM,x
	sta	x1
	sec
	sbc	cb_maxz
	bmi	.cb_adv_box
	lda	x1
	sta	cb_maxz

.cb_adv_box
	txa
	clc
	adc	#cbx_sizeof
	sta	cb_cur_box
	cmp	#((cb_max_boxes+2*cb_ov_boxes)*cbx_sizeof)
	bcs	.cb_pool_full
	pla
	beq	.cb_finish_slot
	tay
	ldx	cb_cur_al
	brl	.cb_loop

.cb_pool_full
	pla
.cb_finish_slot
	ldx	cb_slot_off
	lda	cb_cur_box
	sta.w	cb_slot_end&WM,x
	cpx	#(cb_max_slots*2)
	bcs	.cb_skip_pool_upd
	sta	cb_pool_off
.cb_skip_pool_upd
	lda	cb_minx
	clc
	adc	cb_maxx
	cmp	#$8000
	ror	a
	clc
	adc	objx
	sta.w	cb_slot_ucx&WM,x
	lda	cb_maxx
	sec
	sbc	cb_minx
	inc	a
	lsr	a
	sta.w	cb_slot_urx&WM,x

	lda	cb_miny
	clc
	adc	cb_maxy
	cmp	#$8000
	ror	a
	clc
	adc	objy
	sta.w	cb_slot_ucy&WM,x
	lda	cb_maxy
	sec
	sbc	cb_miny
	inc	a
	lsr	a
	sta.w	cb_slot_ury&WM,x

	lda	cb_minz
	clc
	adc	cb_maxz
	cmp	#$8000
	ror	a
	clc
	adc	objz
	sta.w	cb_slot_ucz&WM,x
	lda	cb_maxz
	sec
	sbc	cb_minz
	inc	a
	lsr	a
	sta.w	cb_slot_urz&WM,x
	rts



;*****************************************************************************
;* rotate_8xz
;*
;*
;* entry:		a8i16
;*	A  : Y angle
;*	x1 : x vector 8bit
;*	z1 : z vector 8bit
;*
;*
;* exit:		a8i16
;*
;*	x2 : rotated x vector 16bit
;*	z2 : rotated z vector 16bit
;*
;*
	
	SHORTA
	LONGI
rotate_8xz_ram
	phy
	phx
	php

	i8

	nega
	tax
	lda.l	ramcostab,x
	sta	cy
	lda.l	ramsintab,x
	sta	sy

	mulslogmacram x1,cy
	stx	x2
	mulslogmac2ram x1,sy
	txa
	nega
	sta	z2

	mulslogmacram z1,sy
	txa
	clc
	adc	x2
	sta	x2
	sexam	x2+1

	mulslogmac2ram z1,cy
	txa
	clc
	adc	z2
	sta	z2
	sexam	z2+1

	plp
	plx
	ply


	rts

;*****************************************************************************
;* rotate_8yz
;*
;*
;* entry:		a8i16
;*	A  : X angle
;*	y1 : y vector 8bit
;*	z1 : z vector 8bit
;*
;*
;* exit:		a8i16
;*
;*	y2 : rotated y vector 16bit
;*	z2 : rotated z vector 16bit
;*
;*
	
	SHORTA
	LONGI
rotate_8yz_ram
	phx
	phy
	php

	i8

	tax
	lda.l	ramcostab,x
	sta	cy
	lda.l	ramsintab,x
	sta	sy

	mulslogmacram y1,cy
	stx	y2
	mulslogmac2ram y1,sy
	txa
	nega
	sta	z2

	mulslogmacram z1,sy
	txa
	clc
	adc	y2
	sta	y2
	sexam	y2+1

	mulslogmac2ram z1,cy
	txa
	clc
	adc	z2
	sta	z2
	sexam	z2+1

	plp
	ply
	plx


	rts


;*****************************************************************************
;* rotate_8yx
;*
;*
;* entry:		a8i16
;*	A  : Y angle
;*	x1 : x vector 8bit
;*	z1 : z vector 8bit
;*
;*
;* exit:		a8i16
;*
;*	x2 : rotated x vector 16bit
;*	z2 : rotated z vector 16bit
;*
;*
	
	SHORTA
	LONGI
rotate_8yx_ram
	phy
	phx
	php

	i8

	tax
	lda.l	ramcostab,x
	sta	cy
	lda.l	ramsintab,x
	sta	sy

	mulslogmacram x1,cy
	stx	x2
	mulslogmac2ram x1,sy
	txa
	nega
	sta	y2

	mulslogmacram y1,sy
	txa
	clc
	adc	x2
	sta	x2
	sexam	x2+1

	mulslogmac2ram y1,cy
	txa
	clc
	adc	y2
	sta	y2
	sexam	y2+1

	plp
	plx
	ply


	rts




ramsintab
	DB	0
	DB	3
	DB	6
	DB	9
	DB	12
	DB	15
	DB	18
	DB	21
	DB	24
	DB	27
	DB	30
	DB	33
	DB	36
	DB	39
	DB	42
	DB	45
	DB	48
	DB	51
	DB	54
	DB	57
	DB	59
	DB	62
	DB	65
	DB	67
	DB	70
	DB	73
	DB	75
	DB	78
	DB	80
	DB	82
	DB	85
	DB	87
	DB	89
	DB	91
	DB	94
	DB	96
	DB	98
	DB	100
	DB	102
	DB	103
	DB	105
	DB	107
	DB	108
	DB	110
	DB	112
	DB	113
	DB	114
	DB	116
	DB	117
	DB	118
	DB	119
	DB	120
	DB	121
	DB	122
	DB	123
	DB	123
	DB	124
	DB	125
	DB	125
	DB	126
	DB	126
	DB	126
	DB	126
	DB	126

ramcostab
	DB	127
	DB	126
	DB	126
	DB	126
	DB	126
	DB	126
	DB	125
	DB	125
	DB	124
	DB	123
	DB	123
	DB	122
	DB	121
	DB	120
	DB	119
	DB	118
	DB	117
	DB	116
	DB	114
	DB	113
	DB	112
	DB	110
	DB	108
	DB	107
	DB	105
	DB	103
	DB	102
	DB	100
	DB	98
	DB	96
	DB	94
	DB	91
	DB	89
	DB	87
	DB	85
	DB	82
	DB	80
	DB	78
	DB	75
	DB	73
	DB	70
	DB	67
	DB	65
	DB	62
	DB	59
	DB	57
	DB	54
	DB	51
	DB	48
	DB	45
	DB	42
	DB	39
	DB	36
	DB	33
	DB	30
	DB	27
	DB	24
	DB	21
	DB	18
	DB	15
	DB	12
	DB	9
	DB	6
	DB	3
	DB	0
	DB	-3
	DB	-6
	DB	-9
	DB	-12
	DB	-15
	DB	-18
	DB	-21
	DB	-24
	DB	-27
	DB	-30
	DB	-33
	DB	-36
	DB	-39
	DB	-42
	DB	-45
	DB	-48
	DB	-51
	DB	-54
	DB	-57
	DB	-59
	DB	-62
	DB	-65
	DB	-67
	DB	-70
	DB	-73
	DB	-75
	DB	-78
	DB	-80
	DB	-82
	DB	-85
	DB	-87
	DB	-89
	DB	-91
	DB	-94
	DB	-96
	DB	-98
	DB	-100
	DB	-102
	DB	-103
	DB	-105
	DB	-107
	DB	-108
	DB	-110
	DB	-112
	DB	-113
	DB	-114
	DB	-116
	DB	-117
	DB	-118
	DB	-119
	DB	-120
	DB	-121
	DB	-122
	DB	-123
	DB	-123
	DB	-124
	DB	-125
	DB	-125
	DB	-126
	DB	-126
	DB	-126
	DB	-126
	DB	-126
	DB	-127
	DB	-126
	DB	-126
	DB	-126
	DB	-126
	DB	-126
	DB	-125
	DB	-125
	DB	-124
	DB	-123
	DB	-123
	DB	-122
	DB	-121
	DB	-120
	DB	-119
	DB	-118
	DB	-117
	DB	-116
	DB	-114
	DB	-113
	DB	-112
	DB	-110
	DB	-108
	DB	-107
	DB	-105
	DB	-103
	DB	-102
	DB	-100
	DB	-98
	DB	-96
	DB	-94
	DB	-91
	DB	-89
	DB	-87
	DB	-85
	DB	-82
	DB	-80
	DB	-78
	DB	-75
	DB	-73
	DB	-70
	DB	-67
	DB	-65
	DB	-62
	DB	-59
	DB	-57
	DB	-54
	DB	-51
	DB	-48
	DB	-45
	DB	-42
	DB	-39
	DB	-36
	DB	-33
	DB	-30
	DB	-27
	DB	-24
	DB	-21
	DB	-18
	DB	-15
	DB	-12
	DB	-9
	DB	-6
	DB	-3
	DB	0
	DB	3
	DB	6
	DB	9
	DB	12
	DB	15
	DB	18
	DB	21
	DB	24
	DB	27
	DB	30
	DB	33
	DB	36
	DB	39
	DB	42
	DB	45
	DB	48
	DB	51
	DB	54
	DB	57
	DB	59
	DB	62
	DB	65
	DB	67
	DB	70
	DB	73
	DB	75
	DB	78
	DB	80
	DB	82
	DB	85
	DB	87
	DB	89
	DB	91
	DB	94
	DB	96
	DB	98
	DB	100
	DB	102
	DB	103
	DB	105
	DB	107
	DB	108
	DB	110
	DB	112
	DB	113
	DB	114
	DB	116
	DB	117
	DB	118
	DB	119
	DB	120
	DB	121
	DB	122
	DB	123
	DB	123
	DB	124
	DB	125
	DB	125
	DB	126
	DB	126
	DB	126
	DB	126
	DB	126

	incfile	ASM\colboxes.asm
