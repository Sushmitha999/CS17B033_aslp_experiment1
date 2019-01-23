	.file	"4.c"
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
	and	esp, -16;and esp with -16
	sub	esp, 48;esp<-[esp]-32;
	call	___main
	mov	DWORD PTR [esp+20], 1;[esp+20] <- 1
	mov	DWORD PTR [esp+24], 2;[esp+24] <- 2
	mov	DWORD PTR [esp+28], 3;[esp+28] <- 3
	mov	DWORD PTR [esp+32], 4;[esp+32] <- 4
	mov	DWORD PTR [esp+36], 5;[esp+36] <- 5
	mov	DWORD PTR [esp], 6;[esp] <- 6
	mov	DWORD PTR [esp+4], 7;[esp+4] <- 7
	mov	DWORD PTR [esp+8], 8;[esp+8] <- 8
	mov	DWORD PTR [esp+12], 9;[esp+12] <- 9
	mov	DWORD PTR [esp+16], 0;[esp+16] <- 0
	mov	DWORD PTR [esp+44], 0;[esp+44] <- 0
	jmp	L2;jump to the label L2
L3:
	mov	eax, DWORD PTR [esp+44];eax<-[esp+44]
	mov	eax, DWORD PTR [esp+20+eax*4];eax<-[esp+20+eax*4]
	mov	DWORD PTR [esp+40], eax;[esp+40]<-eax
	mov	eax, DWORD PTR [esp+44];eax<-[esp+44]
	mov	edx, DWORD PTR [esp+eax*4];edx<-[esp+eax*4]
	mov	eax, DWORD PTR [esp+44];eax<-[esp+44]
	mov	DWORD PTR [esp+20+eax*4], edx;[esp+20+eax*4]<-edx
	mov	eax, DWORD PTR [esp+44];eax<-[esp+44]
	mov	edx, DWORD PTR [esp+40];eax<-[esp+40]
	mov	DWORD PTR [esp+eax*4], edx;[esp+eax*4]<-edx
	add	DWORD PTR [esp+44], 1;[esp+44]<-[esp+44]+1
L2:
	cmp	DWORD PTR [esp+44], 4;compare 4 with [esp+44]
	jle	L3;if [esp+44]<=4, jump to label L3
	mov	eax, 0;eax<-0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE10:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
