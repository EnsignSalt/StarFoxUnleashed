rx	equr	1
ry	equr	2
rpxx	equr	1
rpxy	equr	2
rpxz	equr	3
rmlo	equr	4
rmhi	equr	5
rz	equr	6
rx1	equr	7
ry1	equr	8
rz1	equr	9
rgridx	equr	10
rgridz	equr	11


mshowgrid
	sms	[m_dotsorstars],r11

	sub	r0
	ramb
	cmode

	ibt	r0,#14
	colour

	ibt	r0,#ztab>>16
	romb

; Fold wmatrotp16(unrotated m_pxx/pxy/pxz -> m_x1/y1/z1) and m_wmat>>7 (lmult #512 -> m_pxx..m_pzz)
	lms	r1,[m_pxx]
	lms	r2,[m_pxy]
	lms	r3,[m_pxz]

	mdotprod16mq	m_wmat11,m_wmat21,m_wmat31
	move	rx1,r0
	sms	[m_x1],rx1

	mdotprod16mq	m_wmat12,m_wmat22,m_wmat32
	move	ry1,r0
	sms	[m_y1],ry1

	mdotprod16mq	m_wmat13,m_wmat23,m_wmat33
	move	rz1,r0
	sms	[m_z1],rz1

	miwt	r6,512
	lms	r0,[m_wmat11]
	lmult
	move	rpxx,r0
	sms	[m_pxx],rpxx
	lms	r0,[m_wmat12]
	lmult
	move	rpxy,r0
	sms	[m_pxy],rpxy
	lms	r0,[m_wmat13]
	lmult
	move	rpxz,r0
	sms	[m_pxz],rpxz

	lms	r0,[m_wmat31]
	lmult
	sms	[m_pzx],r0
	lms	r0,[m_wmat32]
	lmult
	sms	[m_pzy],r0
	lms	r0,[m_wmat33]
	lmult
	sms	[m_pzz],r0

	lms	rgridz,[m_gridz]

	miwt	r0,mgridsize
	sms	[m_gridzsize],r0

	mcache

mgridzloop
	lms	rgridx,[m_gridx]

	with	rz1
	sub	rpxz
	
	miwt	r12,mgridsize
	move	r13,pc

mgridxloop
;	mtest	rz1
	with	rz1
	add	rpxz
	bpl	mgrdrawdot
;	nop

mgrdrawdotrts
	with	rx1
	add	rpxx
	with	ry1
	add	rpxy
;	with	rz1
;	add	rpxz
	loop
	inc	rgridx

	inc	rgridz

	lms	r0,[m_pzx]
	lms	rx1,[m_x1]
	with	rx1
	add	r0
	sms	[m_x1],rx1

	lms	r0,[m_pzy]
	lms	ry1,[m_y1]
	with	ry1
	add	r0
	sms	[m_y1],ry1

	lms	r0,[m_pzz]
	lms	rz1,[m_z1]
	with	rz1
	add	r0
	sms	[m_z1],rz1

	lms	r0,[m_gridzsize]
	dec	r0
	bne	mgridzloop
	sbk

	ibt	rx,#0
	ibt	ry,#0
	mrpix
	nop

	lms	r11,[m_dotsorstars]
	jmp	r11
	nop



mgrdrawdot
	move	rz,rz1
	miwt	r0,maxztab
	sub	rz
	bpl	mgrdrawdot1
	nop
	miwt	rz,maxztab-1
mgrdrawdot1

	miwt	r0,256
	sub	rz
	bpl	mgrdrawdotrts
	nop

	with	rz
	bic	#1

	miwt	r0,ztab
	to	r14
	add	rz
	mgetw	rz		; 32767/z

	from	rx1
	fmult
	rol
	ibt	rmhi,#mvanishx		; vanishx
	add	rmhi

	miwt	rmlo,mrightclp+1	; x clip check
	cmp	rmlo
	bcs	mgrdrawdotrts
	nop

	from	ry1
	to	rmhi
	fmult
	with	rmhi
	rol
	ibt	rz,#mvanishy		; vanishy
	with	rmhi
	add	rz

	miwt	rmlo,mbotclp+1	; y clip check
	from	rmhi
	cmp	rmlo
	bcs	mgrdrawdot4
	nop

	move	rz,rx		; save rpxx
	move	rx,r0		; x
	move	r0,ry		; save rpxy
	move	ry,rmhi		; y
	plot

	miwt	rmhi,mgrid2z	; draw 2 dots if z<grid2z
	from	rz1
	to	rmhi
	sub	rmhi
	bcs	mgrdrawdot3
;	nop
	inc	ry
	dec	rx
	plot
mgrdrawdot3

	move	rx,rz		; restore rpxx
	move	ry,r0		; restore rpxy

mgrdrawdot4
	mlbra	mgrdrawdotrts



;************************************************


;minitdust
;mshowdust

	ifeq	0

mrand	macro

	from	rrand
	swap
	ror
	add	rrand
	to	rrand
	adc	rrand
	inc	rrand
	endm


rdustptr	equr	9
rrand	equr	8
rx1	equr	1
ry1	equr	2
rz1	equr	3
rt	equr	7

minitdust
	miwt	rdustptr,m_dustpnts
	miwt	rrand,$19f8
	sms	[m_rand],rrand
	miwt	rt,$80

	miwt	r12,mmaxdust
	move	r13,pc

	mrand
	from	rrand
	mstwi	rdustptr	;x

	mrand
	from	rrand
;	or	rt
	mstwi	rdustptr	;y

	mrand
	from	rrand
	mstwi	rdustptr	;z

	loop
	nop

	lms	r11,[m_dotsorstars]
	stop
	nop



rdustptr	equr	9
routptr	equr	8
rrand	equr	7
rx	equr	1
ry	equr	2
rz	equr	3

dustrangez	=	5*1024/2
dustrangexy	=	4*1024/2


mshowdust2
	iwt	r11,#mshowdust2ret&WM
	iwt	r15,#mshowdust&WM
	nop
mshowdust2ret
	stop
	nop

mshowdust
	sms	[m_dotsorstars],r11

	ibt	r0,#ztab>>16
	romb

	miwt	rdustptr,m_dustpnts
	miwt	routptr,m_rotpnts
	ibt	r12,#mmaxdust
	lms	r10,[m_viewposx]
	lms	r11,[m_viewposy]
	lms	r13,[m_viewposz]
	lms	r14,[m_wmat13]
	miwt	r4,dustrangexy
	miwt	r7,dustrangexy*2

	mcache

mrotdustloop
	mldwi	rdustptr
	to	rx
	sub	r10

	from	rx
	add	r4
	cmp	r7
	bcc	.1
	nop
	mlbra	.ov1
.1
	mldwi	rdustptr
	to	ry
	sub	r11

	from	ry
	add	r4
	cmp	r7
	bcc	.2
	nop
	mlbra	.ov2
.2
	mldwi	rdustptr
	to	rz
	sub	r13

	miwt	r5,dustrangez
	miwt	r6,dustrangez*2
	from	rz
	add	r5
	cmp	r6
	bcs	.ov3
	nop

	move	r6,r14
	from	r1
	fmult
	to	r5
	rol
	lms	r6,[m_wmat23]
	from	r2
	fmult
	rol
	with	r5
	add	r0
	lms	r6,[m_wmat33]
	from	r3
	fmult
	rol
	add	r5

	mtest	r0
	bmi	.ov3
	nop

	mstwi	routptr				; z

	mdotprod16mq	m_wmat11,m_wmat21,m_wmat31
	mstwi	routptr	   			; x
	mdotprod16mq	m_wmat12,m_wmat22,m_wmat32
	mstwi	routptr				; y

	dec	r12
	mlbne	mrotdustloop

	mlbra	.ov

.ov1
	inc	rdustptr
	inc	rdustptr
.ov2
	inc	rdustptr
	inc	rdustptr
.ov3
	with	rdustptr
	sub	#6

	lms	rrand,[m_rand]
	mrand
	from	rrand
	asr
	asr
	asr
	asr
	asr
	to	rx		; x = -2k to 2k
	asr

	mrand
	from	rrand
	asr
	asr
	asr
	asr
	asr
	to	ry		; y = -2k to 2k
	asr

	mrand
	from	rrand
	lsr
	lsr
	lsr
	lsr
	lsr
	miwt	rz,512
	to	rz		; z = 1k to 5k
	add	rz
	sms	[m_rand],rrand

;	mdotprod16mq	m_wmat11,m_wmat21,m_wmat31
	mdotprod16mq	m_wmat11,m_wmat12,m_wmat13
	add	r10
;	hib
	mstwi	rdustptr	; x

;	mdotprod16mq	m_wmat12,m_wmat22,m_wmat32
	mdotprod16mq	m_wmat21,m_wmat22,m_wmat23
	add	r11
;	hib
	mstwi	rdustptr	; y   

;	mdotprod16mq	m_wmat13,m_wmat23,m_wmat33
	mdotprod16mq	m_wmat31,m_wmat32,m_wmat33
	add	r13
;	hib
	mstwi	rdustptr	; z   
	
	ifeq	1
	with	routptr
	add	#4
	ibt	r0,#-1
	mstwi	routptr
	mlbra	.ovr
	endc

	with	rdustptr
	sub	#6
	miwt	r4,dustrangexy
	miwt	r7,dustrangexy*2
	mlbra	mrotdustloop
.ov

;************************************************


mdust2z	=	1024

rrotptr	equr	7

mprojdust
;	ibt	r0,#15
;	colour

	sub	r0
	cmode

mprojdustloop2
	miwt	rsp,m_stack
	miwt	rrotptr,m_rotpnts
	ibt	r12,#mmaxdust
	lm	r11,[m_planetstars]
	with	r11
	lob
	dec	r11
	lms	r8,[m_vanishx]
	lms	r9,[m_vanishy]
	miwt	r13,ztab

	mcache

mprojdustloop
	to	rz
	mldwi	rrotptr	; z
	to	rx
	mldwi	rrotptr	; x
	to	ry
	mldwi	rrotptr	; y

	mtest	rz
	mlbmi	mprojdustoff
	nop

	ifeq	1
	mcall	mprojectpnt
	nop

	ibt	rz,#$1f
	and	rz
	mtest	r0
	bne	.1
	nop
	plot	
.1
	endc

	ifeq	0

mdrawdust
	move	r6,rz
	miwt	r0,maxztab
	sub	r6
	bpl	.1
	nop
	miwt	r6,maxztab-1
.1

	miwt	r0,256
	sub	r6
	bmi	.4
	nop
	beq	.4
	nop

	ifeq	0
	from	rx
	add	rx
;	bcs	.4
	nop
	move	rx,r0
	from	ry
	add	ry
;	bcs	.4
	nop
	move	ry,r0
	with	r6
	add	r6
;	mlbra	.1
	endc

	mlbra	mprojdustoff

.4
	with	r6
	bic	#1

	from	r13
	to	r14
	add	r6
	mgetw	r6		; 32767/z

	from	rx
	fmult
	rol
	to	rx
	add	r8

	miwt	rmlo,mrightclp+1	; x clip check
	from	rx
	sub	rmlo
	bcs	.3
	add	rmlo

	from	ry
	fmult
	rol
	to	ry
	add	r9

	miwt	rmhi,mbotclp+1	; y clip check
	from	ry
	sub	rmhi
	bcs	.3
	add	rmhi

	ifne	0	; gray scale stars
	from	rz		; 0 to 4k
	hib			; 0 to 15
	dec	r0
	dec	r0		;-2 to 13
	bpl	.22
	nop
	sub	r0
.22
	lsr			; 0 to 6
;	lsr			; 0 to 3
;	lsr			; 0 to 1
	ibt	rmhi,#5
	sub	rmhi
	bcc	.2
	add	rmhi
	ibt	r0,#4
.2
	mneg	r0
	add	#14
	endc

	ifne	1	; gray scale stars
	from	rz		; 0 to 4k
	hib			; 0 to 15
	ibt	rmhi,#16
	cmp	rmhi
	bmi	.21
	nop
	sub	r0
.21
	
	mtest	r11
	bmi	.nplan
	nop
	bne	.pollen
	nop

.snow	miwt	rmhi,snow_cols
	to	r14
	add	rmhi
	bra	.colcont2
	nop
.pollen
	ibt	r0,#3
	bra	.colcont3
	nop

.nplan
	miwt	rmhi,star_cols
.colcont
	to	r14
	add	rmhi

	from	r12
	and	#3
	add	r0		
	add	r0		
	add	r0		
	add	r0		
	with	r14
	add	r0
.colcont2

	getb
.colcont3
	endc

	ifne	0	; random colour stars
	lms	r0,[m_cnt]
	and	#7
	inc	r0
	endc

	ifne	0	; red/yellow, blue and grey depth cued stars

	from	rz		; 0 to 4k
	hib			; 0 to 15
	dec	r0
	dec	r0		;-3 to 12
	bpl	.22		; 0 to 12
	nop
	sub	r0
.22
	lsr			; 0 to 6
	to	rmhi
	lsr			; 0 to 3

	lms	r0,[m_cnt]
	and	#3

;	ibt	r0,#2

	sub	#2
	bne	.221
	nop
	inc	r0	
	inc	rmhi
	inc	rmhi
.221
	add	#3		; 0,1,3
	add	r0		
	add	r0		; 4,8,16		
	sub	rmhi	

	endc

	colour
	plot

	ifne	0
	add	r0
.222
	dec	r0
	bne	.222	
	plot

	mlbra	mprojdustoff
	endc

	miwt	rmhi,mdust2z	; draw 2 dots if z<dust2z
	from	rz
	sub	rmhi
	bcs	.3
;	nop
	inc	ry
	dec	rx
	plot
.3
	endc

mprojdustoff
	dec	r12
	mlbne	mprojdustloop


	lms	pc,[m_dotsorstars]
	nop

	endc










