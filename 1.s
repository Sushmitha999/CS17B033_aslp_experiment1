	.file	"1.c"
	.intel_syntax noprefix
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	push	rbp ; stack[top-0] <- [rbp] ;rbp=0x7fffffffdd50
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16$
	mov	rbp, rsp ; rbp <- [rsp];rsp=0x7fffffffdd50
	.cfi_def_cfa_register 6
	push	r12 ;stack[top-1] <- [r12] ;r12=4195296
	push	rbx ; stack[top-2] <- [rbx] ;rbx=0
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	mov	ebx, 4 ; ebx <- 4
	mov	r12d, 3 ;r12d <- 3 
	lea	eax, [rbx+r12]; eax <- [rbx + r12] ; eax <- 7
	mov	DWORD PTR [rbp-32], eax ;[rbp-32] <- [eax] ; [rbp-32] <- 7
	mov	eax, ebx ; eax <- [ebx] ; eax <- 4
	sub	eax, r12d  ; eax <- [eax] - [r12d] ; eax <- 1
	mov	DWORD PTR [rbp-28], eax ; [rbp -28] <- [eax] ; 
	mov	eax, ebx; eax <- [ebx] ; eax <- 4
	imul	eax, r12d  ; eax <- [eax] - [r12d] ; eax <- 12
	mov	DWORD PTR [rbp-24], eax; [rbp -28] <- [eax]
	mov	eax, ebx ;eax <- [ebx] ; eax <- 4
	cdq ;edx <- [eax] ; eax <- 4
	idiv	r12d ; eax <- [eax] - [r12d] ; eax <- 1
	mov	DWORD PTR [rbp-20], eax ; [rbp -28] <- [eax]
	mov	eax, 0 ;eax <- [ebx] ; eax <- 4
	pop	rbx ;rbx <- stack[top-2] ;rbx=4
	pop	r12; rbx <- stack[top-1];r12=4195296
	pop	rbp ;rbp <- stack[top -0];rbp=0x7fffffffdd50
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
