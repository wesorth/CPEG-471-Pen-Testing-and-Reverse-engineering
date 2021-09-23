  .file "1.c"
  .intel_syntax noprefix
  .text
  .globl  main
  .type main, @function
main:
  push  ebp
  mov ebp, esp
  sub esp, 16
  mov DWORD PTR [ebp-12], 32
  mov DWORD PTR [ebp-8], 46
  mov DWORD PTR [ebp-4], 55
  mov edx, DWORD PTR [ebp-12]
  mov eax, DWORD PTR [ebp-8]
  add eax, edx
  add DWORD PTR [ebp-4], eax
  mov eax, DWORD PTR [ebp-4]
  leave
  ret
  .size main, .-main
  .ident  "GCC: (Ubuntu 4.9.2-10ubuntu13) 4.9.2"
  .section  .note.GNU-stack,"",@progbits
