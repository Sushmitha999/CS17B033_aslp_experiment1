	.file	"7.c"
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
	sub	esp, 48;esp<-[esp]-48
	call	___main
	mov	DWORD PTR [esp+36], 0;[esp+36]<-0
	lea	eax, [esp+12];eax<-[esp+12]
	mov	DWORD PTR [esp+44], eax;[esp+44]<-[eax]
	mov	DWORD PTR [esp+40], 0;[esp+40]<-0
	jmp	L2;jump to label L2
L3:
	mov	eax, DWORD PTR [esp+44];eax<-[esp+44]
	mov	eax, DWORD PTR [eax];eax<-[eax]
	add	DWORD PTR [esp+36], eax;[esp+36]<-[esp+36]+eax
	add	DWORD PTR [esp+44], 4;[esp+44]<-[esp+44]+4
	add	DWORD PTR [esp+40], 1;[esp+40]<-[esp+40]+1
L2:
	cmp	DWORD PTR [esp+40], 5;compare [esp+40] with 5
	jle	L3;if [esp+40]<=5, jump to label L3
	mov	eax, 0;eax<-0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE10:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
