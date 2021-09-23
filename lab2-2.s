  .file "2.c"
  .intel_syntax noprefix
  .text
  .globl  main
  .type main, @function
main:
  push  ebp
  mov ebp, esp
  sub esp, 16
  mov DWORD PTR [ebp-8], 10
  mov DWORD PTR [ebp-4], 14
  mov eax, DWORD PTR [ebp-8]
  cmp eax, DWORD PTR [ebp-4]
  jge .L2
  mov eax, 1
  jmp .L3
.L2:
  mov eax, 2
.L3:
  leave
  ret
  .size main, .-main
  .ident  "GCC: (Ubuntu 4.9.2-10ubuntu13) 4.9.2"
  .section  .note.GNU-stack,"",@progbits
