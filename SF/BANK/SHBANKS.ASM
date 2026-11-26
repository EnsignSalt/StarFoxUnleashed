	include	INC\header.inc
	include	INC\stratequ.inc

	include	INC\shmacs.inc

	include	EXT\colboxes.ext
	include	EXT\coltabs.ext

	INCPUBLICS EXT\shbanks.ext

do_hdr	=	0

;------------------------------------------------------------------
	bank	12
	incshapes	SHAPES\shapes.asm	
	incshapes	SHAPES\kshapes.asm
	bankend	12

;------------------------------------------------------------------
	bank	14
	incshapes	SHAPES\shapes2.asm
	inccru	bgmpcr,data\m.pcr
	bankend	14

;------------------------------------------------------------------
	bank	15
	INCshapes	SHAPES\shapes3.asm
	bankend	15

;------------------------------------------------------------------
	bank	16
	incshapes	SHAPES\shapes4.asm
	bankend	16

;------------------------------------------------------------------
	bank	17
	incshapes	SHAPES\shapes5.asm
	incshapes	SHAPES\ushapes.asm
	incshapes	SHAPES\pshapes.asm
	bankend	17

;------------------------------------------------------------------
	bank	37
	incshapes	SHAPES\shapes6.asm

	IFEQ	PAL
bgmintro	incbinfile	snd\sgbgmm.bin
	ELSEIF
bgmintro	incbinfile	snd\psgbgmm.bin
	ENDC
bgmintrolen	equ	*-bgmintro

ops_bgm	incbinfile	snd\sgbgmn.bin
ops_bgmlen	equ	*-ops_bgm

sector_y	incbinfile	snd\sgbgmj.bin
sector_ylen	equ	*-sector_y

	public	dogccr
	inccru	dogccr,data\dog.ccr
boss_asteroid	incbinfile	snd\sgbgm7.bin
boss_asteroidlen	equ	*-boss_asteroid
boss_macbeth	incbinfile	snd\sgbgm3.bin
boss_macbethlen	equ	*-boss_macbeth

boss_fortuna	incbinfile	snd\sgbgm2.bin
boss_fortunalen	equ	*-boss_fortuna
	bankend	37
	
;------------------------------------------------------------------
	bank	38
	incshapes	SHAPES\shapes7.asm
	bankend	38


	include	INC\tail.inc
