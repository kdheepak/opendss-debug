#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

extern void Circuit_Get_AllBusNames(char*** ResultPtr, int32_t* ResultCount);
extern void DSS_RecreateArray_PPAnsiChar(char** p, int32_t* cnt, int InCount);
extern void DSS_Dispose_PPAnsiChar(char** p, int cnt);

void Circuit_Get_AllBusNames(char*** ResultPtr, int32_t* ResultCount) {

    printf("Called Circuit_Get_AllBusNames\n");

    DSS_RecreateArray_PPAnsiChar(*ResultPtr, ResultCount, 5000);

}

void DSS_RecreateArray_PPAnsiChar(char** p, int32_t* cnt, int InCount){
    printf("Called DSS_RecreateArray_PPAnsiChar\n");
    DSS_Dispose_PPAnsiChar(p, cnt[1]);
}

void DSS_Dispose_PPAnsiChar(char** p, int cnt) {

    int i;
    char** tmp;

    printf("Called DSS_Dispose_PPAnsiChar\n");
    tmp = p;

    free(p);
    p = 0;

}
