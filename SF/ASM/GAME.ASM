
	incpublics	EXT\game.ext

getview_l

	a8
	lda	noxrot
	beq	.okx
	stz	outvx
	stz	outvx+1
.okx
	lda	viewtype
	and	#viewtype_fpos
	rlbne	.fpos


	a16i8
	lda	viewshakeX
	sexa
	clc
	adc	pviewposx
	clc
	adc	viewfloatX
	sta	viewposx

	lda	viewshakeY
	sexa
	clc
	adc	pviewposY
	clc
	adc	viewfloatY
	sta	viewposY

	lda	viewshakeZ
	sexa
	clc
	adc	pviewposZ
	clc
	adc	pviewposZoff
	sta	viewposZ

	lda	outvx
	sta	viewrotxw
	lda	outvy
	sec
	sbc	player_turnrot
	sta	viewrotyw
	lda	outvz
	sec
	sbc	plrotz
	sta	viewrotzw

	a8
	lda	dozrot
	bne	.ok
	sta	viewrotzw+1
	sta	viewrotzw
.ok

; Check rare viewtype_toobj without viewtype_fpos: chase offset uses pre-toobj viewrot*
	lda	viewtype
	bit	#viewtype_toobj
	beq	.common_chase

	a16
	lda	outdist
	beq	.fpos
	sta.l	m_spr0
	lda	viewrotxw
	sta.l	m_viewrotx
	lda	viewrotyw
	sta.l	m_viewroty

	a8i16
	lda	#mgetchase>>16
	ldx	#mgetchase&$ffff
	jsl	runmario_l

	a16
	lda	viewposx
	clc
	adc.l	m_x2
	sta	viewposx
	lda	viewposy
	clc
	adc.l	m_y2
	sta	viewposy
	lda	viewposz
	clc
	adc.l	m_z2
	sta	viewposz
	bra	.fpos

.common_chase
	a16
	lda	outdist
	sta.l	m_spr0
	bra	.after_toobj


;***************************************************************

.fpos

	a16
	lda	#0
	sta.l	m_spr0
	i16
	ldx #viewblk
	stx viewpt
	lda viewposx
	sta al_worldx,x
	lda viewposy
	sta al_worldy,x
	lda viewposz
	sta al_worldz,x


	a8

	lda	viewtype
	and	#viewtype_toobj
	rlbeq	.ntpl

	ldy	viewtoobj
	a16
	jsl		Xanglexy_l
	nega
	sta		tpa
	lda		outvx
	jsr		toobj_setangle
	sta		viewrotXw		
	sta		outvx	
	jsl		Yanglexy_l
	sta		tpa
	lda		outvy
	jsr		toobj_setangle
	sta		viewrotYw		
	sta		outvy
	lda		outvz
	sta		viewrotZw

	a8
.ntpl
	a16

.after_toobj
; Single consolidated GSU call: chase offset (if m_spr0!=0), m_wmat11..33, crosshair proj
	lda	viewrotxw
	sta.l	m_viewrotx
	lda	viewrotyw
	sta.l	m_viewroty
	lda	viewrotzw
	sta.l	m_viewrotz

	i16
	ldx	playpt
	lda	al_worldx,x
	sec
	sbc	viewposx
	sta.l	m_x1

	lda	al_worldz,x
	sec
	sbc	viewposz
	sta.l	m_z1

	lda	al_rotx,x		; lo=al_rotx, hi=al_roty
	sta.l	m_sprz

	lda	al_worldy,x
	sec
	sbc	viewposy
	sta.l	m_y1

	a8
	s_jmp_varNE	B,splayerflymode,#spfm_inside,.nin
	a16
	lda.l	m_y1
	clc
	adc	#inviewLaserYoff
	sta.l	m_y1
	a8
.nin

	lda	#mgetview>>16
	ldx	#mgetview&$ffff
	jsl	runmario_l

	a16
	ldx	#viewblk
	stx	viewpt

	lda	viewposx
	clc
	adc.l	m_x2
	sta	viewposx
	sta	al_worldx,x

	lda	viewposy
	clc
	adc.l	m_y2
	sta	viewposy
	sta	al_worldy,x

	lda	viewposz
	clc
	adc.l	m_z2
	sta	viewposz
	sta	al_worldz,x

	lda.l	m_sprx
	sta	arsebandX
	lda.l	m_spry
	sta	arsebandY

	ai8

;*****************************************************************


	rtl

; Smooth 16-bit view angle chase when viewtype_smooth is set (preserves X, Y).
; In (16-bit A): A = current angle (outvx/outvy), tpa = target angle. Out: A = next angle.
	longa
	longi
toobj_setangle
	sta		tpx
	lda		viewtype
	bit		#viewtype_smooth
	beq		.raw
	lda		tpa
	sec
	sbc		tpx
	beq		.raw
	bpl		.pos
	cmp		#-3
	bcs		.stepm1
	asra16
	asra16
	bra		.add
.stepm1
	lda		#-1
	bra		.add
.pos
	cmp		#4
	bcc		.stepp1
	asra16
	asra16
	bra		.add
.stepp1
	lda		#1
.add
	clc
	adc		tpx
.done
	rts
.raw
	lda		tpa
	rts
	shorta
	shorti






	IFEQ	1

irotcentre
	ldx viewrotx
	lda sintab,x
	sta sinvx
	lda costab,x
	sta cosvx

	ldx viewroty
	lda sintab,x
	sta sinvy
	lda costab,x
	sta cosvy

	ldx viewrotz
	lda sintab,x
	sta sinvz
	lda costab,x
	sta cosvz


; z

;	lda viewrotz
;	lbeq irotcen3

	mulslog168 x1,cosvz
	lda m4
	sta bigx
	lda m5
	sta bigx+1
	mulslog168 y1,sinvz
	lda m4
	clc
	adc bigx
	sta bigx
	lda m5
	adc bigx+1
	sta bigx+1

	mulslog168 x1,sinvz
	lda m4
	sta bigy
	lda m5
	sta bigy+1
	mulslog168 y1,cosvz
	lda m4
	sec
	sbc bigy
	sta bigy
	lda m5
	sbc bigy+1
	sta bigy+1

	mov bigx,x1
	mov bigy,y1


irotcen3


; x

;	lda viewrotx
;	lbeq irotcen2

	mulslog168 z1,sinvx
	lda m4
	sta bigy
	lda m5
	sta bigy+1
	mulslog168 y1,cosvx
	lda m4
	clc
	adc bigy
	sta bigy
	lda m5
	adc bigy+1
	sta bigy+1

	mulslog168 y1,sinvx
	lda m4
	sta bigz
	lda m5
	sta bigz+1
	mulslog168 z1,cosvx
	lda m4
	sec
	sbc bigz
	sta bigz
	lda m5
	sbc bigz+1
	sta bigz+1


	mov bigz,z1
	mov bigy,y1

irotcen2

; y

	mulslog168 x1,sinvy
	lda m4
	sta bigz
	lda m5
	sta bigz+1
	mulslog168 z1,cosvy
	lda m4
	clc
	adc bigz
	sta bigz
	lda m5
	adc bigz+1
	sta bigz+1

	mulslog168 z1,sinvy
	lda m4
	sta bigx
	lda m5
	sta bigx+1
	mulslog168 x1,cosvy
	lda m4
	sec
	sbc bigx
	sta bigx
	lda m5
	sbc bigx+1
	sta bigx+1

;	mov y1,bigy
;	mov bigx,x1
;	mov bigz,z1

	rts



	ENDC

;
; 6502 MATHS LIBRARY
;
; by P. R. Warnes, Copyright 1990
;
random_l
	jsr	random
	rtl
random

;	lda	rand
;	rol	a
;	eor	rand+1
;	sta	rand+1
;	adc	#4
;	sta	rand

	IFEQ	rngmode-2
	xorshiftrng
	ELSEIF
	lda rand
	clc
	sbc rand+1
	sta rand+1
	sbc rand+2
	sta rand+2
	sbc rand+3
	sta rand+3
	sbc rand
	sta rand
	ENDC
	rts


	IFEQ	1
muls8log_l
	jsr	muls8log
	rtl
muls8log 
	ldx m1
	beq muls8log1
	ldy m2
	beq muls8log2
	lda logtab8s,x
	clc
	adc logtab8s,y
	tay
	txa
	ldx alogtab8s,y
	eor m2
	bpl muls8log1
	ldx nalogtab8s,y
muls8log1 
	stx m3
	rts
muls8log2
	ldx #0
	stx m3
	rts


muls816log0y 
	ldx #0
muls816log0 
	stx m3
	stx m4
	rts
	
muls816log_l
	jsr	muls816log
	rtl
muls816log 
	ldx m1
	beq muls816log0
	ldy m2
	beq muls816log0y
	lda logtab8s,x
	clc
	adc logtab8s,y
	tay
	txa
	ldx alogtab8s,y
	eor m2
	bpl muls816log1
	ldx nalogtab8s,y
muls816log1 
	stx m3
	ldx alogtab8sl,y
	cmp #0
	bpl muls816log2
	ldx nalogtab8sl,y
muls816log2 
	stx m4
	rts


	ENDC
; Signed 16x8->16 fixed-point multiply via PPU Mode 7 multiplier ($211B/$211C -> $2134-$2136):
; m4:m5 = trunc((m1:m2 * m3) / 128), exact wrmpy parity. Caller must be A8 with DB=0/$80.
muls816log16_l
	php
	sei
	lda	m1
	sta	m7a
	lda	m2
	sta	m7a
	lda	m3
	sta	m7b
	lda	mpylr
	asl	a		; C = P[7], Z = (P[6:0] == 0)
	beq	.exact
	a16
	lda	mpymr		; A = P[23:8] (C preserved)
	rol	a		; A = P[22:7] = floor((m1:m2 * m3)/128)
	bpl	.done
	inc	a		; truncate negative toward zero
	bra	.done
.exact
	a16
	lda	mpymr
	rol	a
.done
	sta	m4
	plp			; restores A8 + original I flag
	shorta
	rtl
muls816log16
	jsl	muls816log16_l
	rts


arctan16_l
	jsr	arctan16	
	a16
	rtl


; 16 bit arctan (x1/y1)
; a = arctan(x1/y1)
;
; 0 to 359 degrees is $0000 to $ffff
; x1 and y1 are signed
;
; tmpx,x1,x2,x3,y1,y2,px,pz,pr


arctan16
sarctan
	phx
	php

	a16
	lda	x1
	sta.l	m_x1
	lda	y1
	sta.l	m_y1

	a8i16
	lda	#mcallarctan16>>16
	ldx	#mcallarctan16&$ffff
	jsl	runmario_l
	
	a16
	lda.l	m_cnt

	plp
	plx
	rts



