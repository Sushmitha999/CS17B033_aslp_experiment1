	.file	"2.c"
	.intel_syntax noprefix
	.def	___main;	.scl	2;	.type	32;	.endef
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB10:
	.cfi_startproc
	push	ebp;stack[top-0]<-[ebp];ebp=0x61ff38
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp; ebp<-[esp];esp=0x61ff30
	.cfi_def_cfa_register 5
	push	esi;stack[top-1]<-[esi];esi=4199136
	push	ebx;stack[top-2]<-[ebx];ebx=2342912
	and	esp, -16;and esp with -16
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	call	___main
	mov	ebx, 10;ebx<-10
	mov	esi, 20;esi<-20
	add	ebx, esi;ebx<-[ebx]+[esi];ebx<- 30
	mov	eax, ebx;eax<-[ebx];eax <- 30
	sub	eax, esi;eax<-[eax]-[esi];eax<- 10
	mov	esi, eax;esi<- [eax];esi <- 10
	sub	ebx, esi;ebx<-[ebx]-[esi];ebx<- 20
	mov	eax, 0;eax<-0
	lea	esp, [ebp-8];esp<-[ebp-8]
	pop	ebx; ebx<-stack[top-2];ebx=20
	.cfi_restore 3
	pop	esi;esi<-stack[top-1];esi=10
	.cfi_restore 6
	pop	ebp;ebp<-stack[top-0]
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE10:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
