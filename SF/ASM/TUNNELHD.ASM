;---------------------------------------------------------------------------
; Pre-expanded BG2VOFS tunnel HDMA tables & DMA updater (Bank 32)
; Moved out of RAMSTUFF.ASM / TRANS.ASM to eliminate ~87.6k mc/frame CPU loop
; and free ~1.2 KB of X-Routines WRAM / Bank 2 ROM.
;---------------------------------------------------------------------------

	public	calctunnelvofs_fast_l

chequered_hdma_base

cbeginz		=	3192
cstartz		=	cbeginz
cstep		=	128
citerations	=	cstartz/cstep
canimstep	=	4
cscr1		=	16+8
cscr2		=	256+16+8
cscrc		=	112

tmp	=	0
	REPT	cstep/canimstep
	run	"chequered_hdma_tab",tmp

; inner loop of ceiling
cyval	=	10
ctoggle	=	1
czpos	=	-(cbeginz-cstartz)+cstep*2
cypos	=	-60

	REPT	citerations
tmp2	=	czpos
	IFLE	czpos
czpos	=	1
	ENDC
clastyval	=	cyval
cyval	=	(cypos*256)/(czpos)+cscrc
	IFLE	cyval-15
cyval	=	15
	ENDC
ctoggle	=	ctoggle+1
cdiff	=	cyval-clastyval
	IFNE	cdiff
	IFLT	cdiff-127
	db	cdiff
	IFEQ	ctoggle&1
	dw	cscr1
	ELSEIF
	dw	cscr2
	ENDC
	ENDC
	ENDC
	IFEQ	ctoggle&1
czpos	=	tmp2+cstep+(cstep/8)*4
	ELSEIF
czpos	=	tmp2+cstep-(cstep/8)*4
	ENDC
	ENDR

; inner loop of floor
ctoggle	=	1
czpos	=	cstartz-cstep*2
cypos	=	60

	REPT	citerations
	IFLE	czpos
czpos	=	1
	ENDC
clastyval	=	cyval
cyval	=	(cypos*256)/(czpos)+cscrc
ctoggle	=	ctoggle+1
cdiff	=	cyval-clastyval
	IFNE	cdiff
	IFLT	cdiff-127
	db	cdiff
	IFEQ	ctoggle&1
	dw	cscr1
	ELSEIF
	dw	cscr2
	ENDC
	ENDC
	ENDC
czpos	=	czpos-cstep
	ENDR

	db	0
	run	"chequered_hdma_len_",tmp," equ *-chequered_hdma_tab",tmp
cstartz	=	cstartz-canimstep*2
tmp	=	tmp+1
	ENDR

chequered_hdma_ptrs
tmp	=	0
	REPT	cstep/canimstep
	run	"%tdw%tchequered_hdma_tab",tmp,"&WM"
tmp	=	tmp+1
	ENDR

chequered_hdma_lens
tmp	=	0
	REPT	cstep/canimstep
	run	"%tdw%tchequered_hdma_len_",tmp
tmp	=	tmp+1
	ENDR

; Entry: a16i16 (from TRANS.ASM calctunnelvofs). Exit: a16i16, DB preserved.
calctunnelvofs_fast_l
	a8i16
	lda	inatunnel
	beq	.chkclr
	lda	#2
	sta	bg2vofsclear

	; Wait outside H-Blank HDMA window (like dmahpos) before triggering Ch0 DMA.
	i8
.vw	lda	slhvr
	ldx	ophctr
	lda	ophctr
	and	#1
	bne	.vw
	cpx	#90
	bcc	.vw
	cpx	#100
	bcs	.vw

	i16
	disable
	ldx	hdmabg2vofs2
	inx
	inx
	inx
	stx	wmaddl
	stz	wmaddh

	a16
	lda	oldviewposz
	lsr	a
	lsr	a
	and	#62
	tax

	lda.l	chequered_hdma_ptrs,x
	sta	ch0addra1tl
	lda.l	chequered_hdma_lens,x
	sta	ch0dataddrl

	a8
	lda	#(wmdata&$ff)
	sta	ch0addrb
	lda	#(chequered_hdma_base>>16)
	sta	ch0atbank
	stz	ch0params
	lda	#1
	sta	mdmaen
	enable
	a16
	rtl

.chkclr
	shorta
	lda	bg2vofsclear
	beq	.done
	dec	bg2vofsclear
	ldx	hdmabg2vofs2
	inx
	inx
	inx
	stx	wmaddl
	stz	wmaddh
	lda	#1
	sta.l	wmdata
	lda	#0
	sta.l	wmdata
	sta.l	wmdata
	sta.l	wmdata
.done
	a16
	rtl
