;
; File:	MCLIP.MC
;
; Use:	2D and 3D clip
; Code:	MARIO
; By:	Peter Warnes
;	Copyright 1991
;


;mprintword
;mprintspace
;mprintnewline


rx1	equr	1
ry1	equr	2
rz1	equr	3
rx2	equr	4
ry2	equr	5
rz2	equr	6


	ifeq	1
mtestclip3dline
	miwt	rx2,40
	miwt	ry2,40
	miwt	rz2,20
	miwt	rx1,0
	miwt	ry1,0
	miwt	rz1,-60

	mcall	mclip3dline
	nop

	stop
	nop
	endc


mclip3dline
	mcache

	moves	rz1,rz1
	bmi	mmp2
	nop
	moves	rz2,rz2
	bmi	mmpc1
	nop
	sub	r0
	jmp	r11
	nop

mmp2
	moves	rz2,rz2
	bpl	mmpc2
	nop
	ibt	r0,#-1
	jmp	r11
	nop

mmpc1
	sms	[m_clipx],rx1
	sms	[m_clipy],ry1
	sms	[m_clipz],rz1

	mexg	rx1,rx2,r0
	mexg	ry1,ry2,r0
	mexg	rz1,rz2,r0

mmp0
	from	rz1
	add	rz2
	div2
	beq	mmpx
	nop
	bmi	mmp1
	nop

	move	rz2,r0
	from	rx1
	add	rx2
	to	rx2
	div2
	from	ry1
	add	ry2
	to	ry2
	div2
	bra	mmp0
	nop

mmp1
	move	rz1,r0
	from	rx1
	add	rx2
	to	rx1
	div2
	from	ry1
	add	ry2
	to	ry1
	div2
	bra	mmp0
	nop

mmpx
	move	rz2,r0
	from	rx1
	add	rx2
	to	rx2
	div2
	from	ry1
	add	ry2
	to	ry2
	div2

	lms	rx1,[m_clipx]
	lms	ry1,[m_clipy]
	lms	rz1,[m_clipz]

	ibt	r0,#1
	jmp	r11
	nop


mmpc2
	sms	[m_clipx],rx2
	sms	[m_clipy],ry2
	sms	[m_clipz],rz2

mmp20
	from	rz1
	add	rz2
	div2
	beq	mmp2x
	nop
	bmi	mmp21
	nop

	move	rz2,r0
	from	rx1
	add	rx2
	to	rx2
	div2
	from	ry1
	add	ry2
	to	ry2
	div2
	bra	mmp20
	nop

mmp21
	move	rz1,r0
	from	rx1
	add	rx2
	to	rx1
	div2
	from	ry1
	add	ry2
	to	ry1
	div2
	bra	mmp20
	nop

mmp2x
	move	rz1,r0
	from	rx1
	add	rx2
	to	rx1
	div2
	from	ry1
	add	ry2
	to	ry1
	div2

	lms	rx2,[m_clipx]
	lms	ry2,[m_clipy]
	lms	rz2,[m_clipz]

	ibt	r0,#1
	jmp	r11
	nop



;************************************************

; 3d polygon clip

rrotptr	equr	1
rpolyptr	equr	2
;rscale		=	4
rbigx	equr	5
rbigy	equr	6
rbigz	equr	7
rnumpnts	equr	9

mclippoly3d
;	mlbra	mclip3dexit

	mpush	r11

;	miwt	rsp,m_stack
	move	rnumpnts,r0


	ifne	mario_stats3d
	mincm	m_polys_clip3d
	endc


;	lms	rscale,[m_scale]
	lms	rbigx,[m_bigx]
	lms	rbigy,[m_bigy]
	lms	rbigz,[m_bigz]
	miwt	rpolyptr,m_polybuf
	move	r12,rnumpnts
	mcache
	move	r13,pc

; copy poly rotpnts to poly buffer

	getb			; p1
	inc	rshapeptr
	umult	#6		; p1*6
	miwt	rrotptr,m_rotpnts
	with	rrotptr
	add	r0		; rrotptr = m_rotpnts + p1*6

	mldwi	rrotptr	; x
;	mult	rscale
	add	rbigx
	mstwi	rpolyptr

	mldwi	rrotptr	; y
;	mult	rscale
	add	rbigy
	mstwi	rpolyptr

	ldw	[rrotptr]	; z
;	mult	rscale
	add	rbigz
	stw	[rpolyptr]

	inc	rpolyptr
	loop
	inc	rpolyptr

;	mlbra	mclip3dexit

	ifeq	1		; debug print
	mtabxy	5,0
	lms	r0,[m_numfaces]
	mcall	mprintword
	nop

	mtabxy	0,0
	miwt	r3,m_polybuf
	move	r0,rnumpnts
	mcall	mprintn3
	nop
	endc



;************************************************

rx1	equr	1
ry1	equr	2
rz1	equr	3
rx2	equr	4
ry2	equr	5
rz2	equr	6
rcpolyptr	equr	7
rpolyptr	equr	8
rnumptsin	equr	9


; 3d clip poly

	move	rnumptsin,rnumpnts
	sub	r0
	sms	[m_cnt],r0

	miwt	rcpolyptr,m_polybuf
	miwt	rpolyptr,m_clippolybuf
;	miwt	rsp,m_stack

	from	rnumptsin
	sub	#2
	bne	mclip3dloop	; check for line
	nop

	to	rx1		; get p1
	mldwi	rcpolyptr
	to	ry1
	mldwi	rcpolyptr
	to	rz1
	mldwi	rcpolyptr

	to	rx2		; get p2
	mldwi	rcpolyptr
	to	ry2
	mldwi	rcpolyptr
	to	rz2
	ldw	[rcpolyptr]

	mcall	mclip3dline
	nop

	from	rx1
	mstwi	rpolyptr
	from	ry1
	mstwi	rpolyptr
	from	rz1
	mstwi	rpolyptr

	from	rx2
	mstwi	rpolyptr
	from	ry2
	mstwi	rpolyptr
	from	rz2
	mstwi	rpolyptr

	ibt	r0,#2
	sms	[m_cnt],r0

	mlbra	mprojectpoly



mclip3dloop
;	mlbra	mclip3dexit

	to	rx1		; get p1
	mldwi	rcpolyptr
	to	ry1
	mldwi	rcpolyptr
	to	rz1
	mldwi	rcpolyptr

	move	r0,rnumptsin	; if numptsin = 1 then wrap ptr
	dec	r0
	bne	.nowrap
	nop
	miwt	rcpolyptr,m_polybuf
.nowrap

	to	rx2		; get p2
	mldwi	rcpolyptr
	to	ry2
	mldwi	rcpolyptr
	to	rz2
	ldw	[rcpolyptr]

	with	rcpolyptr	; I forgot about this!
	sub	#4

	from	rz2
	and	rz1
	mlbmi	mclip3doff	; if z1<0  and z2<0  nextline

; if z1<0  and z2>=0 clip: addp1: nextline

	mtest	rz1
	mlbmi	.p1off

; addp1			; if z1>=0 and z2>=0 addp1: nextline

	from	rx1
	mstwi	rpolyptr
	from	ry1
	mstwi	rpolyptr
	from	rz1
	mstwi	rpolyptr

	lms	r0,[m_cnt]
	inc	r0
	sbk

; if z1>=0 and z2<0  addp1: clip: addp2: nextline

	mtest	rz2
	mlbpl	mclip3doff

	mcall	mclip3dline
	nop

; addp2

	from	rx2
	mstwi	rpolyptr
	from	ry2
	mstwi	rpolyptr
	from	rz2
	mstwi	rpolyptr
	
	lms	r0,[m_cnt]
	inc	r0
	sbk

	mlbra	mclip3doff

.p1off
	mcall	mclip3dline
	nop

; addp1

	from	rx1
	mstwi	rpolyptr
	from	ry1
	mstwi	rpolyptr
	from	rz1
	mstwi	rpolyptr

	lms	r0,[m_cnt]
	inc	r0
	sbk

mclip3doff
	dec	rnumptsin
	mlbne	mclip3dloop

	lms	r0,[m_cnt]
	sub	#3	
	mlbmi	mclip3dexit		; exit if <3 points left

;	mlbra	mclip3dexit


	ifeq	1			; debug print
	mtabxy	5,8
	lms	r0,[m_numfaces]
	mcall	mprintword
	nop

	mtabxy	0,8
	miwt	r3,m_clippolybuf
	lms	r0,[m_cnt]
	mcall	mprintn3
	nop
	endc




;************************************************


; project poly points (co-located with mprojectpnt_nc in MOBJ.MC)

	mlbra	mprojectpoly


mclip3dexit
	sub	r0
	mpop	pc
	nop




;************************************************


	ifeq	1


; clip a polygon whose verticies list is pointed
; at by a0. No. of points is
; passed in d0.


templist
	ds.w	maxpolypts*2
point_list
	ds.w	maxpolypts*2


newclip
;;	lea	point_list(pc),a0
	move.w	d0,d7

;************************************************

	move.w	d7,a5		;no. pnts.
	subq.w	#1,d7		;loop index.
	add.w	d0,d0
	add.w	d0,d0
	move.l	(a0),(a0,d0.w)	;copy 1st pnt to end of list.

	move.w	clipleft(a6),d6
	lea	templist(pc),a1
	lea	lrp(pc),a4
clplp1
	movem.w	(a0),d0-d3	;get 1st edge.
	addq.w	#4,a0		;move to next edge.
	move.w	d0,d5
	sub.w	d6,d5
	bmi	p1outleft
	move.w	d2,d5
	sub.w	d6,d5
	bmi	cliplinevertiadd	;add point if edge on way out.
	move.w	d0,(a1)+		;copy point to temp list.
	move.w	d1,(a1)+
lrp
	dbra	d7,clplp1

	lea	templist(pc),a0
	move.w	a5,d7
;	bmi	end_clip
	ble	end_clip

;************************************************

	move.w	a5,d0	
	subq.w	#1,d7		;loop index.
	add.w	d0,d0
	add.w	d0,d0
	move.l	(a0),(a0,d0.w)	;copy 1st pnt to end of list.

	move.w	cliprite(a6),d6
	lea	point_list(pc),a1
	lea	lrp2(pc),a4
clplp2
	movem.w	(a0),d0-d3	;get 1st edge.
	addq.w	#4,a0		;move to next edge.
	move.w	d0,d5
	sub.w	d6,d5
	bgt	p1outright
	move.w	d2,d5
	sub.w	d6,d5
	bgt	cliplinevertiadd
	move.w	d0,(a1)+		;copy point to temp list.
	move.w	d1,(a1)+
lrp2
	dbra	d7,clplp2

	lea	point_list(pc),a0
	move.w	a5,d7
;	bmi	end_clip
	ble	end_clip

;************************************************

	subq.w	#1,d7
	move.w	a5,d0
	add.w	d0,d0
	add.w	d0,d0
	move.l	(a0),(a0,d0.w)	;copy 1st pnt to end of list.

	move.w	clipup(a6),d6
	lea	templist(pc),a1
	lea	lrp3(pc),a4
clplp3
	movem.w	(a0),d0-d3	;get 1st edge.
	addq.w	#4,a0		;move to next edge.
	move.w	d1,d5
	sub.w	d6,d5
	bmi	p1outtop
	move.w	d3,d5
	sub.w	d6,d5
	bmi	cliplinehoriadd	;add point if edge on way out.
	move.w	d0,(a1)+		;copy point to temp list.
	move.w	d1,(a1)+
lrp3
	dbra	d7,clplp3	 

	lea	templist(pc),a0
	move.w	a5,d7
;	bmi	end_clip
	ble	end_clip

;************************************************

	subq.w	#1,d7
	move.w	a5,d0
	add.w	d0,d0
	add.w	d0,d0
	move.l	(a0),(a0,d0.w)	;copy 1st pnt to end of list.

	move.w	clipdown(a6),d6
	lea	point_list(pc),a1
	lea	lrp4(pc),a4
clplp4
	movem.w	(a0),d0-d3	;get 1st edge.
	addq.w	#4,a0		;move to next edge.
	move.w	d1,d5
	sub.w	d6,d5
	bgt	p1outbottom
	move.w	d3,d5
	sub.w	d6,d5
	bgt	cliplinehoriadd	;add point if edge on way out.
	move.w	d0,(a1)+		;copy point to temp list.
	move.w	d1,(a1)+
lrp4
	dbra	d7,clplp4


	move.w	#-1,(a1)
end_clip
	rts


;************************************************

p1outleft
	move.w	d2,d5
	sub.w	d6,d5
	bpl	cliplineverti	;add point if edge on way in.
	subq.w	#1,a5		;decrement no. pnts.
	jmp	(a4)

;************************************************

p1outtop
	move.w	d3,d5
	sub.w	d6,d5
	bpl	cliplinehori			
	subq.w	#1,a5		;decrement no. pnts.
	jmp	(a4)

;************************************************

p1outright
	move.w	d2,d5
	sub.w	d6,d5
	bmi	cliplineverti	
	subq.w	#1,a5		;decrement no. pnts.
	jmp	(a4)

;************************************************

p1outbottom
	move.w	d3,d5
	sub.w	d6,d5
	bmi	cliplinehori			
	subq.w	#1,a5		;decrement no. pnts.
	jmp	(a4)

;************************************************

cliplinevertiadd		;called if p1 in and p2 out.
	addq.w	#1,a5
	move.w	d0,(a1)+
	move.w	d1,(a1)+

; x = clipx
; y = y1 + (clipx-x1)*(y1-y2)/(x1-x2)


; x = clipx
; y = y1 + (clipx-x1)*(y2-y1)/(x2-x1)

cliplineverti	
	sub.w	d0,d2		;dx = x2 - x1
	sub.w	d1,d3		;dy = y2 - y1
	move.w	d6,d5		;get boundry value.
	sub.w	d0,d5		;x = clipx - x1
	muls	d3,d5		;x*dy
	divs	d2,d5		;x*dy/dx
	add.w	d1,d5		;x*dy/dx+y1
	move.w	d6,(a1)+	;store clipped point.
	move.w	d5,(a1)+
	jmp	(a4)

;************************************************
	
; x  = x1 + (clipy-y1)*(x2-x1)/(y2-y1)
; y  = clipy

cliplinehoriadd
	addq.w	#1,a5
	move.w	d0,(a1)+
	move.w	d1,(a1)+

cliplinehori
	sub.w	d0,d2		;dx = x2 - x1
	sub.w	d1,d3		;dy = y2 - y1
	move.w	d6,d5		;
	sub.w	d1,d5		; y = clipy - y1
	muls	d2,d5		; y*dx
	divs	d3,d5		; y*dx/dy
	add.w	d0,d5		; y*dx/dy+x1
	move.w	d5,(a1)+
	move.w	d6,(a1)+
	jmp	(a4)

	endc

;************************************************


; 2d clip texture map poly


	ifeq	0

rx1	equr	1
ry1	equr	2
rx2	equr	3
ry2	equr	6
rinptr	equr	8
routptr	equr	9

mtxcopyxp1yp1	macro
	with	rinptr		; ptr to last xp,yp
	sub	#4
	mldwi	rinptr	; copy xp,yp to outptr
	mstwi	routptr
	mldwi	rinptr
	mstwi	routptr
	endm	


mtxcopytolast	macro
	to	rx1
	mldwi	rinptr
	to	ry1
	mldwi	rinptr

	to	rx2
	mldwi	rinptr
	to	ry2
	ldw	[rinptr]
		
	with	rinptr
	sub	#6
	lms	r0,[m_cnt]
	mult	#8
	add	rinptr

	from	rx1
	mstwi	r0	; out x1
	from	ry1
	mstwi	r0	; out y1

	from	rx2
	mstwi	r0	; out xp1
	from	ry2
	stw	[r0]	; out yp1
	endm

mtxinx1y1x2y2	macro
	to	rx1		; load x1,y1
	mldwi	rinptr
	to	ry1
	mldwi	rinptr
	with	rinptr		; skip xp1,yp1
	add	#4
	to	rx2
	mldwi	rinptr	; load x2,y2
	to	ry2
	ldw	[rinptr]
	with	rinptr		; point at x2,y2
	sub	#2
	endm

;************************************************
; Factored, cache-resident textured 2D clipper + local no-mcache divider.
; Skips inactive clip edges based on routcode (r5): $04=left, $08=right, $01=top, $02=bot.

mtxclippoly2d_ret0_nc
	jmp	r11
	sub	r0
mtxclippoly2d_trivial
	lms	r0,[m_clippnts]
	jmp	r11
	nop

mtxclippoly2d
	ibt	r1,#3
	cmp	r1
	bmi	mtxclippoly2d_ret0_nc	; skip lines (r0 < 3)
	nop

	sms	[m_clippnts],r0
	from	r5
	and	#15
	beq	mtxclippoly2d_trivial	; no screen edges crossed -> already in m_polybuf
	nop

	mpush	r11
	mcache

	from	r5
	lsr
	lsr
	and	#3		; bit0=Left, bit1=Right
	move	r14,r0
	from	r5
	and	#3		; Top, Bot
	mult	#4		; bit2=Top, bit3=Bot
	to	r14
	or	r14		; r14[3:0] = [Bot, Top, Right, Left]

	sub	r0
	sms	[m_clipz],r0	; 0 = active vertices currently reside in m_polybuf
	sms	[m_or_of_outcodes],r0	; edge index e in {0, 2, 4, 6}

	ifne	mario_stats3d
	mincm	m_polys_clip2d
	endc

.edge_loop_ctrl
	with	r14
	lsr
	bcc	.next_ctrl
	nop
	lms	r0,[m_or_of_outcodes]
	link	#3
	bra	mtx_clip_pass
	nop
.next_ctrl
	lms	r0,[m_or_of_outcodes]
	add	#2
	sbk
	mtest	r14
	bne	.edge_loop_ctrl
	nop

	lms	r0,[m_clipz]
	mtest	r0
	beq	.in_polybuf
	nop
	lms	r0,[m_clippnts]

	add	r0
	add	r0		; *4 words (x, y, xp, yp)
	move	r12,r0
	miwt	rinptr,m_clippolybuf
	miwt	routptr,m_polybuf
	move	r13,pc
	to	r0
	mldwi	rinptr
	stw	[routptr]
	inc	routptr
	loop
	inc	routptr

.in_polybuf
	lms	r0,[m_clippnts]
	mpop	pc
	nop


; Run one edge pass for e = r0 in {0=xleft, 2=xright, 4=ytop, 6=ybot}.
; Preserves r14.
mtx_clip_pass
	mpush	r11
	sms	[m_clipy],r0
	ibt	r1,#m_xleft
	add	r1
	to	r1
	ldw	[r0]
	sms	[m_clipx],r1

	lms	r0,[m_clippnts]
	sms	[m_cnt],r0

	miwt	rinptr,m_polybuf
	miwt	routptr,m_clippolybuf
	lms	r0,[m_clipz]
	xor	#1
	sbk
	bne	.buf_ready
	nop
	mexg	rinptr,routptr,r0
.buf_ready
	mtxcopytolast

.edge_loop
	mtxinx1y1x2y2
	lms	r7,[m_clipx]
	lms	r0,[m_clipy]
	and	#4
	bne	.load_y
	nop
	move	r0,rx1
	move	r4,rx2
	bra	.got_c
	nop
.load_y
	move	r0,ry1
	move	r4,ry2
.got_c
	to	r5
	sub	r7		; r5 = c1 - clip
	with	r4
	sub	r7		; r4 = c2 - clip
	lms	r0,[m_clipy]
	and	#2
	beq	.have_d
	sub	r0		; delay slot: r0 = 0
	to	r5
	sub	r5		; r5 = clip - c1
	to	r4
	sub	r4		; r4 = clip - c2
.have_d
	mtest	r5
	bpl	.p1_in
	nop
	mtest	r4
	bpl	.clip_edge
	nop
	mdecm	m_clippnts
	bra	.next_edge
	nop
.p1_in
	mcall	mtx_outx1y1
	nop
	mtest	r4
	bpl	.next_edge
	nop
	mincm	m_clippnts
.clip_edge
	link	#3
	bra	mtx_clip_edge
	nop
.next_edge
	mdecm	m_cnt
	bne	.edge_loop
	nop

	lms	r0,[m_clippnts]
	sub	#3
	bmi	.clip_reject
	nop
	mpop	pc
	nop

.clip_reject
	dec	rsp
	dec	rsp
mtxclippoly2dexit
	sub	r0
	mpop	pc
	nop


mtx_outx1y1
	from	rx1
	mstwi	routptr	; out x1
	from	ry1
	mstwi	routptr	; out y1
	mtxcopyxp1yp1
	jmp	r11
	nop


mtx_clip_edge
	mpush	r11
	with	rx2		; dx = x2 - x1
	sub	rx1
	with	ry2		; dy = y2 - y1
	sub	ry1
	lms	r0,[m_clipy]
	and	#4
	bne	.hori
	nop
	lms	r0,[m_clipx]
	sub	rx1		; r0 = clipx - x1
	bra	.div
	nop
.hori
	mexg	rx2,ry2,r5	; swap dx,dy (rx2 = dy, ry2 = dx)
	lms	r0,[m_clipx]
	sub	ry1		; r0 = clipy - y1
.div
	sms	[m_clipdx],r0
	to	r5
	lmult			; r5:r4 = r0 * (dy or dx)
	move	r6,rx2		; r6 = divisor (dx or dy)
	link	#3
	bra	mtx_divs3216
	nop
	lms	r6,[m_clipx]	; clipx or clipy
	lms	r0,[m_clipy]
	and	#4
	bne	.out_hori
	nop
	from	r6
	mstwi	routptr		; out x = clipx
	from	r4
	add	ry1
	mstwi	routptr		; out y = r4 + y1
	bra	mtx_interp_uv
	nop
.out_hori
	from	r4
	add	rx1
	mstwi	routptr		; out x = r4 + x1
	from	r6
	mstwi	routptr		; out y = clipy


mtx_interp_uv
	with	rinptr
	sub	#4		; rinptr -> xp1 (+4)
	link	#3
	bra	mtx_uv_step	; xp (leaves rinptr at yp1 +6; returns here)
	nop
	bra	mtx_uv_step_body	; tail-enter for yp -> mpop pc returns to mtx_clip_edge caller
	nop

mtx_uv_step
	mpush	r11
mtx_uv_step_body
	to	ry1
	ldw	[rinptr]	; p1 (+4 or +6)
	with	rinptr
	add	#8		; -> p2 (+12 or +14)
	to	ry2
	ldw	[rinptr]
	with	rinptr
	sub	#6		; -> next (+6 or +8)
	with	ry2
	sub	ry1
	lms	r0,[m_clipdx]
	to	r5
	lmult
	move	r6,rx2
	link	#3
	bra	mtx_divs3216
	nop
	from	r4
	add	ry1
	mstwi	routptr
	mpop	pc
	nop


; Local no-mcache copy of mdivs3216 (MMATHS.MC) to keep clipper cache-resident.
mtx_divs3216
	from	r5
	to	r7
	xor	r6

	sub	r0
	moves	r6,r6
	bpl	.16m
	to	r6
	sub	r6
.16m
	moves	r5,r5
	bpl	.32p
	to	r4
	sub	r4
	to	r5
	sbc	r5
.32p
	with	r4
	add	r4
	from	r5
	rol
	ibt	r12,#16
	move	r13,pc

.divloop
	sub	r6
	bcc	.divcc
	nop
	with	r4
	rol
	loop
	rol
	bra	.divend
	nop

.divcc
	add	r6
	with	r4
	add	r4
	loop
	rol

.divend
	moves	r7,r7
	bpl	.divrts
	with	r4
	not
	inc	r4
.divrts
	jmp	r11
	nop

	endc

;************************************************

; 2d clip poly


	ifeq	0

rx1	equr	1
ry1	equr	2
rx2	equr	3
ry2	equr	6
rinptr	equr	8
routptr	equr	9

mcopytolast	macro
	to	rx1
	mldwi	rinptr
	to	ry1
	ldw	[rinptr]
	with	rinptr
	sub	#2
	lms	r0,[m_cnt]
	mult	#4
	add	rinptr
	from	rx1
	mstwi	r0	; out x1
	from	ry1
	stw	[r0]	; out y1
	endm

minx1y1x2y2	macro
	to	rx1
	mldwi	rinptr
	to	ry1
	mldwi	rinptr
	to	rx2
	mldwi	rinptr
	to	ry2
	ldw	[rinptr]
	with	rinptr
	sub	#2
	endm

moutx1y1	macro
	from	rx1
	mstwi	routptr	; out x1
	from	ry1
	mstwi	routptr	; out y1
	endm


;************************************************
; Factored, cache-resident flat/gouraud 2D poly & line clipper + local no-mcache divider.
; Skips inactive clip edges based on routcode (r5): $04=left, $08=right, $01=top, $02=bot.

mtclippoly2d_ret0_nc
	jmp	r11
	sub	r0

mtclippoly2d_trivial
	lms	r0,[m_clippnts]
	jmp	r11
	nop

mtclippoly2d
	ibt	r1,#2
	cmp	r1
	bmi	mtclippoly2d_ret0_nc
	nop
	sms	[m_clippnts],r0
	from	r5
	and	#15
	beq	mtclippoly2d_trivial	; no screen edges crossed -> already in m_polybuf
	nop

	mcache
	mpush	r11

	from	r5
	lsr
	lsr
	and	#3		; bit0=Left, bit1=Right
	move	r14,r0
	from	r5
	and	#3
	mult	#4		; bit2=Top, bit3=Bot
	to	r14
	or	r14		; r14[3:0] = [Bot, Top, Right, Left]

	lms	r0,[m_clippnts]
	ibt	r1,#3
	cmp	r1
	bpl	mtclip_is_poly
	nop

mtclipline2d
	ibt	r1,#2
	cmp	r1
	bmi	mtclippoly2dexit
	nop
	ibt	r0,#4		; line_flag = 4 (line: minpnts=2, no verti2 swap)
	bra	mtclip_start
	nop

mtclip_is_poly
	sub	r0		; line_flag = 0 (poly: minpnts=3, X-in swap enabled)

mtclip_start
	sms	[m_clipdx],r0
	sub	r0
	sms	[m_clipz],r0	; 0 = active vertices currently reside in m_polybuf
	sms	[m_or_of_outcodes],r0	; edge index e in {0, 2, 4, 6}

	ifne	mario_stats3d
	mincm	m_polys_clip2d
	endc

.edge_loop_ctrl
	with	r14
	lsr
	bcc	.next_ctrl
	nop
	lms	r0,[m_or_of_outcodes]
	link	#3
	bra	mt_clip_pass
	nop
.next_ctrl
	lms	r0,[m_or_of_outcodes]
	add	#2
	sbk
	mtest	r14
	bne	.edge_loop_ctrl
	nop

	lms	r0,[m_clipz]
	mtest	r0
	beq	.in_polybuf
	nop
	lms	r0,[m_clippnts]

	add	r0		; *2 words (x, y)
	move	r12,r0
	miwt	rinptr,m_clippolybuf
	miwt	routptr,m_polybuf
	move	r13,pc
	to	r0
	mldwi	rinptr
	stw	[routptr]
	inc	routptr
	loop
	inc	routptr

.in_polybuf
	lms	r0,[m_clipdx]
	mtest	r0
	bne	.ret_line
	nop
	lms	r0,[m_clippnts]
	mpop	pc
	nop

.ret_line
	ibt	r0,#2
	mpop	pc
	nop

mtclippoly2dexit
	sub	r0
	mpop	pc
	nop


; Run one edge pass for e = r0 in {0=xleft, 2=xright, 4=ytop, 6=ybot}.
; Preserves r14.
mt_clip_pass
	mpush	r11
	sms	[m_clipy],r0
	ibt	r1,#m_xleft
	add	r1
	to	r1
	ldw	[r0]
	sms	[m_clipx],r1

	lms	r0,[m_clippnts]
	sms	[m_cnt],r0

	miwt	rinptr,m_polybuf
	miwt	routptr,m_clippolybuf
	lms	r0,[m_clipz]
	xor	#1
	sbk
	bne	.buf_ready
	nop
	mexg	rinptr,routptr,r0
.buf_ready
	mcopytolast

.edge_loop
	minx1y1x2y2
	lms	r7,[m_clipx]
	lms	r0,[m_clipy]
	and	#4
	bne	.load_y
	nop
	move	r0,rx1
	move	r4,rx2
	bra	.got_c
	nop
.load_y
	move	r0,ry1
	move	r4,ry2
.got_c
	to	r5
	sub	r7		; r5 = c1 - clip
	with	r4
	sub	r7		; r4 = c2 - clip
	lms	r0,[m_clipy]
	and	#2
	beq	.have_d
	sub	r0		; delay slot: r0 = 0
	to	r5
	sub	r5		; r5 = clip - c1
	to	r4
	sub	r4		; r4 = clip - c2
.have_d
	mtest	r5
	bpl	.p1_in
	nop
	mtest	r4
	bpl	.p1out_p2in
	nop
	mdecm	m_clippnts
	bra	.next_edge
	nop
.p1out_p2in
	lms	r0,[m_clipy]
	lms	r4,[m_clipdx]
	or	r4
	and	#4
	bne	.clip_edge
	nop
	mexg	rx1,rx2,r0
	mexg	ry1,ry2,r0
	bra	.clip_edge
	nop
.p1_in
	moutx1y1
	mtest	r4
	bpl	.next_edge
	nop
	mincm	m_clippnts
.clip_edge
	link	#3
	bra	mclip_clip_edge
	nop
.next_edge
	mdecm	m_cnt
	mlbne	.edge_loop

	lms	r0,[m_clipdx]
	lsr
	lsr			; 0 (poly, min 3) or 1 (line, min 2)
	lms	r1,[m_clippnts]
	add	r1		; poly: pnts; line: pnts+1
	sub	#3
	bmi	.mt_reject
	nop
	mpop	pc
	nop

.mt_reject
	dec	rsp
	dec	rsp
	sub	r0
	mpop	pc
	nop


mclip_clip_edge
	mpush	r11
	with	rx2		; dx = x2 - x1
	sub	rx1
	with	ry2		; dy = y2 - y1
	sub	ry1
	lms	r0,[m_clipy]
	and	#4
	bne	.hori
	nop
	lms	r0,[m_clipx]
	sub	rx1		; r0 = clipx - x1
	bra	.div
	nop
.hori
	mexg	rx2,ry2,r5	; swap dx,dy (rx2 = dy, ry2 = dx)
	lms	r0,[m_clipx]
	sub	ry1		; r0 = clipy - y1
.div
	to	r5
	lmult			; r5:r4 = r0 * (dy or dx)
	move	r6,rx2		; r6 = divisor (dx or dy)
	link	#3
	bra	mclip_divs3216
	nop
	lms	r6,[m_clipx]	; clipx or clipy
	lms	r0,[m_clipy]
	and	#4
	bne	.out_hori
	nop
	from	r6
	mstwi	routptr		; out x = clipx
	from	r4
	add	ry1
	mstwi	routptr		; out y = r4 + y1
	mpop	pc
	nop
.out_hori
	from	r4
	add	rx1
	mstwi	routptr		; out x = r4 + x1
	from	r6
	mstwi	routptr		; out y = clipy
	mpop	pc
	nop


; Local no-mcache copy of mdivs3216 (MMATHS.MC) to keep clipper cache-resident.
mclip_divs3216
	from	r5
	to	r7
	xor	r6

	sub	r0
	moves	r6,r6
	bpl	.16m
	to	r6
	sub	r6
.16m
	moves	r5,r5
	bpl	.32p
	to	r4
	sub	r4
	to	r5
	sbc	r5
.32p
	with	r4
	add	r4
	from	r5
	rol
	ibt	r12,#16
	move	r13,pc

.divloop
	sub	r6
	bcc	.divcc
	nop
	with	r4
	rol
	loop
	rol
	bra	.divend
	nop

.divcc
	add	r6
	with	r4
	add	r4
	loop
	rol

.divend
	moves	r7,r7
	bpl	.divrts
	with	r4
	not
	inc	r4
.divrts
	jmp	r11
	nop


	endc


;************************************************

	ifeq	1
mprintn3
	move	r8,r11

	move	r12,r0
	mcall	mprintword
	nop
	mcall	mprintnewline
	nop

	move	r13,pc

	mldwi	r3
	mcall	mprintword
	nop
	mcall	mprintspace
	nop
	mldwi	r3
	mcall	mprintword
	nop
	mcall	mprintspace
	nop
	mldwi	r3
	mcall	mprintword
	nop
	mcall	mprintnewline
	nop

	loop
	nop

	jmp	r8
	nop





mprintn2
	move	r8,r11

	move	r12,r0
	mcall	mprintword
	nop
	mcall	mprintnewline
	nop

	move	r13,pc

	mldwi	r3
	mcall	mprintword
	nop
	mcall	mprintspace
	nop
	mldwi	r3
	mcall	mprintword
	nop
	mcall	mprintnewline
	nop

	loop
	nop

	jmp	r8
	nop


	endc
