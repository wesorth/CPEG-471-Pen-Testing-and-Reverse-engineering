	.file	"lab3-1.c"
	.intel_syntax noprefix
	.text
	.globl	func1
	.type	func1, @function
func1:
	push	ebp
	mov	ebp, esp
	sub	esp, 24
	mov	eax, DWORD PTR [ebp+8]
	lea	edx, [eax+eax]
	mov	eax, DWORD PTR [ebp+8]
	add	edx, eax
	mov	eax, DWORD PTR [ebp+12]
	add	eax, edx
	mov	DWORD PTR [ebp-12], eax
	sub	esp, 8
	push	3
	push	DWORD PTR [ebp-12]
	call	func2
	add	esp, 16
	leave
	ret
	.size	func1, .-func1
	.globl	func2
	.type	func2, @function
func2:
	push	ebp
	mov	ebp, esp
	mov	eax, DWORD PTR [ebp+8]
	sub	eax, DWORD PTR [ebp+12]
	pop	ebp
	ret
	.size	func2, .-func2
	.globl	main
	.type	main, @function
main:
	lea	ecx, [esp+4]
	and	esp, -16
	push	DWORD PTR [ecx-4]
	push	ebp
	mov	ebp, esp
	push	ecx
	sub	esp, 20
	mov	DWORD PTR [ebp-12], 0
	sub	esp, 8
	push	6
	push	4
	call	func1
	add	esp, 16
	mov	DWORD PTR [ebp-12], eax
	mov	eax, 0
	mov	ecx, DWORD PTR [ebp-4]
	leave
	lea	esp, [ecx-4]
	ret
	.size	main, .-main
	.ident	"GCC: (Ubuntu 4.9.2-10ubuntu13) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
