/*

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
  mov eax, DWORD PTR [ebp-4] //eax is the return value.
  leave
  ret


*/

#include <stdio.h>
#include <stdlib.h>

int main(){
    int a =32;
    int b = 46;
    int c = 55;
    return a+b+c; 
}
