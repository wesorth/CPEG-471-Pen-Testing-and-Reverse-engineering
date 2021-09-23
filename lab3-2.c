#include <stdio.h>
#include <stdlib.h>

int main(){

    /*mov	DWORD PTR [ebp-4], 4
	mov	DWORD PTR [ebp-16], 0
	mov	DWORD PTR [ebp-8], 0
	mov	eax, DWORD PTR [ebp-4]*/
    //int ebp4 = 4;
    int ebp16=0;
    int ebp8 =0;
    int eax = 4;

    /*cmp	eax, 1
	je	.L3
    */
   if(eax ==1){
       //jmp .L3
       /*
       .L3:
	    mov	DWORD PTR [ebp-16], 1
	    jmp	.L5
       */
      ebp16 = 1;
   }
   /*
   	cmp	eax, 4
	je	.L4
   */
   else if(eax ==4){
       //je .L4
       /*
        .L4:
	    mov	DWORD PTR [ebp-16], 2
	    jmp	.L5
       */
      ebp16=2;
   }
   else{
       //jmp .L9
       /*
        .L9:
	    mov	DWORD PTR [ebp-16], 3
       */
      ebp16=3;
   }
   /*
    .L5:
	mov	DWORD PTR [ebp-12], 0
	jmp	.L6
   */
    int ebp12 = 0;
    /*
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
    */
    while(ebp12<ebp16){
        ebp8+=ebp12;
        ebp12++;
    }

    return 0;
}