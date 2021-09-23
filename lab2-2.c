/*

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


*/

#include <stdlib.h>
#include <stdio.h>

int main(){
    int a = 10;
    int b = 14;
    if(a>=b){
        return 2;// so in this it is returning 2 if a>=b else it is returning 1
    }
    else{
        return 1;
    }
}
