#include <stdlib.h>
#include <stdio.h>

int func1(int arg1, int arg2){
    int eax = arg1;
    int edx = eax*3;
    //edx=eax+edx;
    eax = arg2+edx;
    //eax = edx+eax;
    int ebp12 = eax;
    return func2(ebp12, 3);
}

int func2(int arg1, int arg2){
    return arg1-arg2;
}

int main(){
    int ebp12 = 0;
    ebp12 = func1(4, 6);
    return 0;

}