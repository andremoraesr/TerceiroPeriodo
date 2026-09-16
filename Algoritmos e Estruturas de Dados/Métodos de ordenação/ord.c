#include <stdio.h>
#include <locale.h>
#include <stdlib.h>
#include "ord.h"

void imprimeVet(int *v, int t) {          //impressao do vetor
    for(int i=0; i< t; i++) {
        printf("%d ", v[i]);
    }
}

void bubbleSort(int *v, int t) {
    int i, continua, troca, fim = t;

    do {
        continua = 0;
        for(i = 0; i< fim -1; i++) {
            if(v[i] > v[i+1]) {
                troca = v[i];
                v[i] = v[i+1];
                v[i+1] = troca;
                continua = 1;
            }
        }
        fim--;
    } while(continua != 0);

    imprimeVet(v, t);
}

void selectionSort(int *v, int t){

    int i, j, menor, troca;
    for(i=0; i < t-1; i++) {
        menor = i;
        for(j = i+1; j < t; j++) {
            if(v[j] < v[menor]) {
                menor = j;
            }
        }
        if(menor != i) {
            troca = v[i];
            v[i] = v[menor];
            v[menor] = troca;
        }
    }

    imprimeVet(v, t);
}

