
	incpublics	EXT\ramstuff.ext

	incfile	ASM\irq.asm

	incfile	ASM\hdmatabs.asm

;-------------------------------------
; RUN MARIO ROUTINE ------------------
;-------------------------------------
	shorta
	longi
runmario_l
	sta.l	m_pbr	;code bank

	phb
	IFNE	FASTROM
	lda	#$80
	pha
	plb
	ELSEIF
	lda	#0
	pha
	plb
	ENDC

	lda	mario_draw_mode
	ora	#%00011000	;nasty
	sta	m_scmr

	stx	mr15
.dowait	lda	m_sfr
	and	#$20
	bne	.dowait

	lda	mario_draw_mode
	sta	m_scmr
	plb
	rtl


cop	blink



do_3d_display_l
	ai16
	lda	hudrot
	sta.l	m_hudrot
	lda	defaultID
	sta.l	m_defaultID
	a8
	lda	#mdo_3d_display>>16
	ldx	#mdo_3d_display&WM
	sta	m_pbr	;code bank
	lda	mario_draw_mode
	ora	#%00011000	;nasty
	sta	m_scmr
	stx	mr15

	jsr	parallel_stuff

	a8
.dowait	lda	m_sfr
	and	#$20
	bne	.dowait
	lda	mario_draw_mode
	sta	m_scmr

	jsl	alienflags_l

	rtl


parallel_stuff
	lda.l	collistcnt+1
	bne	.done
	jsl	init_strats_ram_l
.done	lda	#0
	sta.l	collistcnt+1
	rts


;-------------------------------------
; ASYNC CLRONEHALF ROUTINES ----------
;-------------------------------------
	shorta
	longi
clronehalf_start_l
	php
	a8i16
	phb
	IFNE	FASTROM
	lda	#$80
	pha
	plb
	ELSEIF
	lda	#0
	pha
	plb
	ENDC

	; Snapshot M-RAM values needed by do_sprites_l while RAN=0.
	lda.l	m_meters
	sta	spr_meters
	lda.l	m_bossmaxhp
	sta	spr_bossmaxhp

	lda	#1
	sta.l	gsu_async_active
	lda	#mclrbitmaps2>>16
	sta	m_pbr
	ldx	#mclrbitmaps2&WM
	lda	mario_draw_mode
	ora	#mm_ramn		; RAN=1, RON=0 (overlap clear with WRAM/ROM CPU work)
	sta	m_scmr
	stx	mr15

	; Keep 65816 in WRAM briefly so GSU fills its cache uncontended.
	REPT	16
	nop
	ENDR

	plb
	plp
	rtl

clronehalf_wait_l
	php
	a8
	lda	#0
	sta.l	gsu_async_active
	lda.l	m_sfr
	and	#$20
	beq	.done
	lda	mario_draw_mode
	ora	#mm_ramn+mm_romn
	sta.l	m_scmr
.dowait	lda.l	m_sfr
	and	#$20
	bne	.dowait
.done	lda	mario_draw_mode
	sta.l	m_scmr
	plp
	rtl

;-------------------------------------
; ASYNC MALLROTZSORT ROUTINES --------
;-------------------------------------
	shorta
	longi
mallrotzsort_start_l
	php
	a8i16
	phb
	IFNE	FASTROM
	lda	#$80
	ELSEIF
	lda	#0
	ENDC
	pha
	plb

	lda	#1
	sta.l	gsu_async_active
	lda	#mallrotzsort>>16
	sta	m_pbr
	ldx	#mallrotzsort&WM
	lda	mario_draw_mode
	ora	#mm_ramn		; RAN=1, RON=0 (overlap sort with REMOVEDEADAL_L)
	sta	m_scmr
	stx	mr15

	; Keep 65816 in WRAM briefly so GSU fills its cache uncontended.
	REPT	16
	nop
	ENDR

	plb
	plp
	rtl

mallrotzsort_wait_l
	php
	a8
	lda	#0
	sta.l	gsu_async_active
	lda.l	m_sfr
	and	#$20
	beq	.done
	lda	mario_draw_mode
	ora	#mm_ramn+mm_romn	; ensure RON=1 if GSU paused on ROM cache fill (bsnes/hardware safe)
	sta.l	m_scmr
.dowait	lda.l	m_sfr
	and	#$20
	bne	.dowait
.done	lda	mario_draw_mode
	sta.l	m_scmr
	plp
	rtl


;-------------------------------------
; METERS &BOOST HUD UPDATE -----------
;-------------------------------------
calcmeters_l	a8i16
	ifeq	shieldboostcolorbox
	lda	shieldup	; send shieldup flag to mario chip
	sta.l	m_shieldup	; note that we're in a8 mode so we're only storing to the lo byte
	endc
	ldx	pcboxobj_b
	lda	al_HP,x
	bpl	.ok
	lda	#0
.ok	sta.l	m_damage

.boost	lda	boostcnt
	beq	.end
	lda.l	m_boostanim
	IFEQ	SPEED_MODE
	dec	a
	dec	a
	ELSEIF
	dec	a
	ENDC
	bpl	.ok2
	lda	#0
	sta	boostcnt
.ok2	sta.l	m_boostanim
	bra	.draw
.end	lda.l	m_boostanim
	cmp	#40
	beq	.draw
	IFEQ	SPEED_MODE
	lda.l	m_boostanim
	ELSEIF
	lda	gameframe
	lsr	a
	bcs	.draw
	lda.l	m_boostanim
	ENDC
	inc	a
	sta.l	m_boostanim
	and	#15
	beq	.draw
.draw
	rtl

	incfile	ASM\coldet.asm


gamepalbuff	dw	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
;	list	on macros


;---------------------------------------------------
; Chequered tunnel HDMA tables & updater moved to Bank 32 (ASM\tunnelhd.asm)
; to free X-Routines WRAM / Bank 2 ROM and use Ch0 DMA instead of a 224-line CPU loop.
;---------------------------------------------------



;--------------------------------------------------------------------------
redtunnel	inccolfile	DATA\COL\TUNLRED.COL,0,2

;# = gamma  $ = beta  % = alpha
etesttrans	db	0,01ch,0,02ch,02bh,02ah,0,0,0,0
	db	029h,0,0,027h,028h,0,01dh,01eh,01fh,020h
	db	021h,022h,023h,024h,025h,026h,0,0,0,0
	db	0,0,0,2,3,4,5,6,7,8
	db	9,10,11,12,13,14,15,16,17,18
	db	19,20,21,22,23,24,25,26,27,28


thundercol	inccolfile	DATA\COL\THUNDER.COL,0,1





