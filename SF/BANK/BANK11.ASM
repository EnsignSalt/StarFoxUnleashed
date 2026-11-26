	include	INC\header.inc
	include	INC\strathdr.inc
	include	EXT\gstrats.ext
	include	EXT\gcstrats.ext
	include	EXT\gastrats.ext
	include	EXT\expstrat.ext
	include	EXT\windows.ext
	include	EXT\ga2strat.ext
	include	EXT\dstrats.ext
	include	EXT\d3strats.ext
	include	EXT\coltabs.ext
	include	INC\shmacs.inc
	include	EXT\bootnmi.ext
	IFNE	MSU1
	include	EXT\msudrv.ext
	ENDC

	bank	11
	IFNE	RUMBLE
	; used by both PCSTRATS and PISTRATS
hyperspacerumbletab
	db	$FF,$7F,$FF,$7F,rmblloop
	ENDC
	incfile	STRAT\pistrats.asm
	incfile	STRAT\pcstrats.asm
	incfile	STRAT\pstrats.asm
	incfile	ASM\strings.asm
	bankend	11

	bank	40
	incfile	STRAT\gb2strat.asm
	incfile	STRAT\ga3strat.asm
	incfile	STRAT\gistrats.asm
	incfile	STRAT\kstrats.asm
	incfile	STRAT\d2strats.asm

	public	black_holebgm
	public	black_holebgmlen
black_holebgm	incbinfile	snd\sgbgml.bin
black_holebgmlen	equ	*-black_holebgm
	bankend	40

	include	INC\tail.inc


