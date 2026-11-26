



rcosx	equr	8
rsinx	equr	12
rcosy	equr	3
rsiny	equr	4
rcosz	equr	5
rsinz	equr	7
rmatptr	equr	9
rt1	equr	1
rt2	equr	2
rt3	equr	13
rt4	equr	14

; t1= cz*sy 		 yz
; t2= cz*cy 		 yz
; t3= sz*sy		 yz
; t4= sz*cy		 yz
; m11= t3*sx + t2	xyz
; m12= t1*sx - t4	xyz
;>m13= cx*sy		xy
; m21= cx*sz		x z
; m22= cx*cz		x z
;>m23= -sx		x
; m31= t4*sx - t1	xyz
; m32= t2*sx + t3	xyz
;>m33= cx*cy		xy


; create full 16 bit world zxy matrix
; in:	m_rotx,y,z	(16 bit angles)
; out:	m_wmat

mcrotwmatzxy16
	miwt	r9,m_wmat11
	mcall	mcrotmatzxy16
	nop

	stop
	nop


; Calc chase cam offset (m_viewrotx, m_viewroty, m_spr0 -> m_x2/y2/z2).
; Clobbers r0, r2, r3, r5, r6, r7, r8, r9, r13, r14. Preserves r11.
; Requires ramb=0, romb=0.
mgetchase_sub
	lms	r7,[m_spr0]
	mneg	r7			; r7 = -outdist

	lms	r8,[m_viewrotx]
	mneg	r8			; -viewrotx
	mgetsin16	r2,r8,r5
	mgetcos16	r3,r8,r5	; note: mutates r8

	move	r6,r7			; r6 = -outdist
	from	r2
	fmult
	to	r9
	rol				; r9 = off_y
	from	r3
	fmult
	to	r13
	rol				; r13 = z'

	lms	r8,[m_viewroty]
	mneg	r8			; -viewroty
	mgetsin16	r2,r8,r5
	mgetcos16	r3,r8,r5

	move	r6,r13
	from	r2
	fmult
	rol
	mneg	r0
	move	r8,r0			; r8 = off_x = -(z' * sin(-viewroty))
	from	r3
	fmult
	to	r13
	rol				; r13 = off_z = z' * cos(-viewroty)

	sms	[m_x2],r8
	sms	[m_y2],r9
	sms	[m_z2],r13
	jmp	r11
	nop


; Standalone chase-offset entry for viewtype_toobj without viewtype_fpos.
; In:  m_viewrotx, m_viewroty, m_spr0 (outdist)
; Out: m_x2, m_y2, m_z2 = chase cam offset
mgetchase
	sub	r0
	ramb
	romb
	mcache
	lms	r7,[m_spr0]
	mtest	r7
	beq	.zero
	nop
	mcall	mgetchase_sub
	nop
	stop
	nop
.zero
	ibt	r0,#0
	sms	[m_x2],r0
	sms	[m_y2],r0
	sms	[m_z2],r0
	stop
	nop


; Consolidated getview_l compute:
;   1) optional chase offset (if m_spr0 != 0) subtracted from m_x1/y1/z1 -> m_x2/y2/z2
;   2) m_wmat11..33 = mcrotmatzxy16(m_viewrotx, m_viewroty, m_viewrotz)
;   3) crosshair (0,0,500) rotated by al_rotx/y (m_sprz lo/hi), + player rel,
;      transformed by m_wmat and projected via ztab -> m_sprx, m_spry (arsebandX/Y)
mgetview
	sub	r0
	ramb
	romb
	mcache

	lms	r7,[m_spr0]
	mtest	r7
	beq	.nochase
	nop

	mcall	mgetchase_sub
	nop

	lms	r1,[m_x1]
	from	r1
	sub	r8
	sms	[m_x1],r0

	lms	r2,[m_y1]
	from	r2
	sub	r9
	sms	[m_y1],r0

	lms	r3,[m_z1]
	from	r3
	sub	r13
	sms	[m_z1],r0
	bra	.docrot
	nop

.nochase
	ibt	r0,#0
	sms	[m_x2],r0
	sms	[m_y2],r0
	sms	[m_z2],r0

.docrot
	lms	r1,[m_viewrotx]
	sms	[m_rotx],r1
	lms	r2,[m_viewroty]
	sms	[m_roty],r2
	lms	r3,[m_viewrotz]
	sms	[m_rotz],r3
	miwt	r9,m_wmat11
	mcall	mcrotmatzxy16
	nop

; Crosshair: rotate (0,0,crosshairdist) by al_rotx (lo m_sprz) & al_roty (hi m_sprz)
	ibt	r0,#sintab>>16
	romb
	lms	r12,[m_sprz]
	miwt	r4,crosshairdist

	from	r12
	lob				; r0 = al_rotx (0..255)
	miwt	r6,sintab
	to	r14
	add	r6
	getb				; zero-ext byte $00xx; swap -> signed $xx00 (= s8 << 8)
	to	r6
	swap
	from	r4
	fmult
	to	r2
	rol				; r2 = 500 * sin(al_rotx)

	from	r12
	lob
	miwt	r6,costab
	to	r14
	add	r6
	getb
	to	r6
	swap
	from	r4
	fmult
	to	r3
	rol				; r3 = 500 * cos(al_rotx)

	from	r12
	hib				; r0 = al_roty (0..255)
	miwt	r6,sintab
	to	r14
	add	r6
	getb
	to	r6
	swap
	from	r3
	fmult
	rol
	mneg	r0
	move	r1,r0			; r1 = -(z' * sin(al_roty))

	from	r12
	hib
	miwt	r6,costab
	to	r14
	add	r6
	getb
	to	r6
	swap
	from	r3
	fmult
	to	r3
	rol				; r3 = z' * cos(al_roty)

; Add player-to-camera relative vector (m_x1, m_y1, m_z1)
	lms	r4,[m_x1]
	with	r1
	add	r4
	lms	r4,[m_y1]
	with	r2
	add	r4
	lms	r4,[m_z1]
	with	r3
	add	r4

; Transform by world matrix m_wmat11..33
	mdotprod16mq	m_wmat11,m_wmat21,m_wmat31
	move	r7,r0
	mdotprod16mq	m_wmat12,m_wmat22,m_wmat32
	move	r8,r0
	mdotprod16mq	m_wmat13,m_wmat23,m_wmat33
	move	r3,r0

; Project crosshair onto ztab -> offset (arsebandX, arsebandY)
	ibt	r0,#ztab>>16
	romb
	moves	r0,r3
	bmi	.proj_oob
	nop
	from	r3
	hib
	beq	.proj_oob
	nop
	ibt	r4,#maxztab>>8
	cmp	r4
	bcc	.proj_z_ok
	nop
	miwt	r3,maxztab-1
.proj_z_ok
	from	r3
	bic	#1
	miwt	r4,ztab
	to	r14
	add	r4
	to	r6
	getb
	inc	r14
	with	r6
	getbh
	from	r7
	fmult
	rol
	sms	[m_sprx],r0
	from	r8
	fmult
	rol
	sms	[m_spry],r0
	stop
	nop

.proj_oob
	ibt	r0,#0
	sms	[m_sprx],r0
	sms	[m_spry],r0
	stop
	nop


; create full 16 bit world zxy matrix
; in:	m_rotx,y,z	(16 bit angles)
;	r9 = matrix ptr
; out:	
	
mcrotmatzxy16
	sub	r0
	ramb
	romb

	lms	r1,[m_rotx]
	mgetsin16	rsinx,r1,r2
	mgetcos16	rcosx,r1,r2

	lms	r1,[m_roty]
	mgetsin16	rsiny,r1,r2
	mgetcos16	rcosy,r1,r2

	lms	r1,[m_rotz]
	mgetsin16	rsinz,r1,r2
	mgetcos16	rcosz,r1,r2

; calc temps
; t1= cz*sy 		 yz
; t2= cz*cy 		 yz
; t3= sz*sy		 yz
; t4= sz*cy		 yz

	move	r6,rcosz

	from	rsiny
	fmult
	to	rt1
	rol

	from	rcosy
	fmult
	to	rt2
	rol

	move	r6,rsinz

	from	rsiny
	fmult
	to	rt3
	rol

	from	rcosy
	fmult
	to	rt4
	rol

; m11= t3*sx + t2	xyz
; m12= t1*sx - t4	xyz
;>m13= cx*sy		xy

	move	r6,rsinx

	from	rt3
	fmult
	rol
	add	rt2

	mstwi	rmatptr	; mat11

	from	rt1
	fmult
	rol
	sub	rt4

	mstwi	rmatptr	; mat12

	move	r6,rcosx

	from	rsiny
	fmult
	rol

	mstwi	rmatptr	; mat13

; m21= cx*sz		x z
; m22= cx*cz		x z
;>m23= -sx		x

	from	rsinz
	fmult
	rol

	mstwi	rmatptr	; mat21

	from	rcosz
	fmult
	rol

	mstwi	rmatptr	; mat22

	from	rsinx
	not
	inc	r0

	mstwi	rmatptr	; mat23

; m31= t4*sx - t1	xyz
; m32= t2*sx + t3	xyz
;>m33= cx*cy		xy

	move	r6,rsinx

	from	rt4
	fmult
	rol
	sub	rt1

	mstwi	rmatptr	; mat31

	from	rt2
	fmult
	rol
	add	rt3

	mstwi	rmatptr	; mat32

	move	r6,rcosx

	from	rcosy
	fmult
	rol

	stw	[rmatptr]	; mat33

	jmp	r11
	nop









