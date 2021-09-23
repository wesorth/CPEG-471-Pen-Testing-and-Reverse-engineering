	.file	"lab3-2.c"
	.intel_syntax noprefix
	.text
	.globl	main
	.type	main, @function
main:
	push	ebp
	mov	ebp, esp
	sub	esp, 16
	mov	DWORD PTR [ebp-4], 4
	mov	DWORD PTR [ebp-16], 0
	mov	DWORD PTR [ebp-8], 0
	mov	eax, DWORD PTR [ebp-4]
	cmp	eax, 1
	je	.L3
	cmp	eax, 4
	je	.L4
	jmp	.L9
.L3:
	mov	DWORD PTR [ebp-16], 1
	jmp	.L5
.L4:
	mov	DWORD PTR [ebp-16], 2
	jmp	.L5
.L9:
	mov	DWORD PTR [ebp-16], 3
.L5:
	mov	DWORD PTR [ebp-12], 0
	jmp	.L6
.L7:
	mov	eax, DWORD PTR [ebp-12]
	add	DWORD PTR [ebp-8], eax
	add	DWORD PTR [ebp-12], 1
.L6:
	mov	eax, DWORD PTR [ebp-12]
	cmp	eax, DWORD PTR [ebp-16]
	jl	.L7
	mov	eax, 0
	leave
	ret
	.size	main, .-main
	.ident	"GCC: (Ubuntu 4.9.2-10ubuntu13) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
