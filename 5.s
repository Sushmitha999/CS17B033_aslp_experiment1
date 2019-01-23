	.file	"5.c"
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
	push	ebx;stack[top-1]<-[ebp];ebx=2961408
	and	esp, -16;and esp with -16
	sub	esp, 32;esp<-[esp]-32
	.cfi_offset 3, -12
	call	___main
	mov	DWORD PTR [esp+4], 1;[esp+4] <- 1
	mov	DWORD PTR [esp+8], 4;[esp+8] <- 4
	mov	DWORD PTR [esp+12], 3;[esp+12] <- 3
	mov	DWORD PTR [esp+16], 2;[esp+16] <- 2
	mov	DWORD PTR [esp+20], 7;[esp+20] <- 7
	mov	ebx, DWORD PTR [esp+4];ebx<-[esp+4]
	mov	eax, DWORD PTR [esp+4];eax<-[esp+4]
	mov	DWORD PTR [esp+24], eax;[esp+24] <- eax
	mov	DWORD PTR [esp+28], 0;[esp+28]<-0
	jmp	L2;jump to the label L2
L4:
	mov	eax, DWORD PTR [esp+28];eax<-[esp+28]
	mov	eax, DWORD PTR [esp+4+eax*4];eax<-[esp+8+eax*4]
	cmp	eax, ebx;compare eax with ebx
	jge	L3;if eax>=ebx, jump to label L3
	mov	eax, DWORD PTR [esp+28];eax<-[esp+28]
	mov	ebx, DWORD PTR [esp+4+eax*4];eax<-[esp+8+eax*4]
L3:
	add	DWORD PTR [esp+28], 1;[esp+28]<-[esp+28]+1
L2:
	cmp	DWORD PTR [esp+28], 4;compare [esp+28] with 4
	jle	L4;if [esp+28]<=4, jump to label L4
	mov	DWORD PTR [esp+28], 0;[esp+28]<-0
	jmp	L5;jump to the label L5
L7:
	mov	eax, DWORD PTR [esp+28];eax<-[esp+28]
	mov	eax, DWORD PTR [esp+4+eax*4];eax<-[esp+8+eax*4]
	cmp	eax, DWORD PTR [esp+24];compare eax with [esp+24] 
	jle	L6;if eax<=[esp+24], jump to label L6
	mov	eax, DWORD PTR [esp+28];eax<-[esp+28]
	mov	eax, DWORD PTR [esp+4+eax*4];eax<-[esp+8+eax*4]
	mov	DWORD PTR [esp+24], eax;[esp+24]<-eax
L6:
	add	DWORD PTR [esp+28], 1;[esp+28]<-[esp+28]+1
L5:
	cmp	DWORD PTR [esp+28], 4;compare [esp+28] with 4
	jle	L7;if[esp+28]<=4, jump to label L7
	mov	eax, 0;eax<-0
	mov	ebx, DWORD PTR [ebp-4];ebx<-[ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE10:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
