	.file	"3.c"
	.intel_syntax noprefix
	.def	___main;	.scl	2;	.type	32;	.endef
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB10:
	.cfi_startproc
	push	ebp;stack[top-0]<-[ebp];ebp= 0x61ff38
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp;ebp<-[esp];esp=0x61ff30
	.cfi_def_cfa_register 5
	and	esp, -16 ;and esp with -16
	sub	esp, 32;esp<-[esp]-32
	call	___main
	mov	DWORD PTR [esp+8], 1; ; [esp+8] <- 1
	mov	DWORD PTR [esp+12], 2;[esp+12] <- 2
	mov	DWORD PTR [esp+16], 3;[esp+16] <- 3
	mov	DWORD PTR [esp+20], 4;[esp+20] <- 4
	mov	DWORD PTR [esp+24], 5;[esp+24] <- 5
	mov	DWORD PTR [esp+28], 0;[esp+28] <- 0
	jmp	L2;jump to the label L2
L3:
	mov	eax, DWORD PTR [esp+28] ;eax<-[esp+28]
	mov	eax, DWORD PTR [esp+8+eax*4];eax<-[esp+8+eax*4]
	lea	edx, [eax+1];edx<-[eax+1];edx<-2
	mov	eax, DWORD PTR [esp+28];eax<-[esp+28]
	mov	DWORD PTR [esp+8+eax*4], edx;[esp+8+eax*4]<-edx
	add	DWORD PTR [esp+28], 1;[esp+28]<-1
L2:
	cmp	DWORD PTR [esp+28], 4;compare 4 with [esp+28]
	jle	L3;if [esp+28]<=4, jump to label L3
	mov	eax, 0;eax<-0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE10:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
