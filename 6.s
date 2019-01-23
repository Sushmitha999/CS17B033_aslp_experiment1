	.file	"6.c"
	.intel_syntax noprefix
	.text
	.globl	_fib
	.def	_fib;	.scl	2;	.type	32;	.endef
_fib:
LFB10:
	.cfi_startproc
	push	ebp;stack[top-0]<-[ebp]
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp;ebp<-[esp]
	.cfi_def_cfa_register 5
	push	ebx;stack[top-1]<-[ebp]
	sub	esp, 20;esp<-[esp]-20
	.cfi_offset 3, -12
	cmp	DWORD PTR [ebp+8], 0;compare [ebp+8] with 0
	jne	L2;if [ebp+8] not equal to 0, then jump to label L2
	mov	eax, 0;eax<-0
	jmp	L3;jump to label L3
L2:
	cmp	DWORD PTR [ebp+8], 1;compare [ebp+8] with 1
	jne	L4;if [ebp+8] not equal to 1, then jump to label L2
	mov	eax, 1;eax<-1
	jmp	L3;jump to label L3
L4:
	mov	eax, DWORD PTR [ebp+8];eax<-[ebp+8]
	sub	eax, 1;eax<-[eax]-1;
	mov	DWORD PTR [esp], eax;[esp]<-[eax]
	call	_fib
	mov	ebx, eax
	mov	eax, DWORD PTR [ebp+8];eax<-[ebp+8]
	sub	eax, 2;eax<-[eax]-2;
	mov	DWORD PTR [esp], eax;[esp]<-[eax]
	call	_fib
	add	eax, ebx;eax<-[eax]+[ebx]
L3:
	add	esp, 20;esp<-[esp]+20
	pop	ebx;ebx<-stack[top-1];ebx=2
	.cfi_restore 3
	pop	ebp;ebp<-stack[top-2]
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE10:
	.def	___main;	.scl	2;	.type	32;	.endef
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB11:
	.cfi_startproc
	push	ebp;stack[top-0]<-[ebp];ebp= 0x61ff38
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp;ebp<-[esp];esp=0x61ff30
	.cfi_def_cfa_register 5
	and	esp, -16;and esp with -16
	sub	esp, 32;esp<-[esp]-32
	call	___main
	mov	DWORD PTR [esp+28], 4;[esp+28]<-4
	mov	eax, DWORD PTR [esp+28];eax<-[esp+28]
	mov	DWORD PTR [esp], eax;[esp]<-[eax]
	call	_fib
	mov	DWORD PTR [esp+24], eax;[esp+24]<-[eax]
	mov	eax, 0;eax<-0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE11:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
