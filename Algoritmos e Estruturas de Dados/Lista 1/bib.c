#include <stdlib.h>
#include <stdio.h>
#include "bib.h"
#include <locale.h>

void questao2 (int *vet, int tam) {
    int result;
    for(int i=0; i<tam-1; i++) {
        result = 0;
        if(vet[i] < vet[i+1]) {result = 1;}
        else {break;}
    }

    if(result == 1) {
        printf("ORDENADO");
    }
}

void questao4 (int *vet, int tam, int x) {
    for(int i=0; i<tam; i++) {
        if(x < vet[i]) {
            for(int j=tam+1; j>=i; j--) {
                vet[j] = vet[j-1];
            }
            vet[i] = x;
        }
    }
    for(int i = 0; i<tam+1; i++) {
        printf("%d ", vet[i]);
    }
}