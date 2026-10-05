#include <stdlib.h>
#include <stdio.h>
#include "bib.h"
#include <locale.h>

struct pessoa {
    int matricula;
    char nome[30];
    float nota;
};

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

void questao3(int vetor[], int n) {             //ordena decrescente!!!
    for (int i = 1; i < n; i++) {
        int chave = vetor[i];
        int j = i - 1;
        
        while (j >= 0 && vetor[j] < chave) {
            vetor[j + 1] = vetor[j];
            j = j - 1;
        }
        vetor[j + 1] = chave;
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

int questao5(int *vet, int tam, int x) {
    for(int i = 0; i<tam; i++) {
        if(vet[i] == x) {
            return i;
        }
    }
    return 0;
}

void questao8(struct pessoa arr[], int n, int campo) {
    for (int i = 0; i < n - 1; i++) {
        for (int j = 0; j < n - i - 1; j++) {
            int precisaTrocar = 0;
            
            if (campo == 1) {
                if (arr[j].matricula > arr[j + 1].matricula) precisaTrocar = 1;
            } else if (campo == 2) {
                if (strcmp(arr[j].nome, arr[j + 1].nome) > 0) precisaTrocar = 1;
            } else if (campo == 3) {
                if (arr[j].nota > arr[j + 1].nota) precisaTrocar = 1;
            }
            
            if (precisaTrocar) {
                struct pessoa temp = arr[j];
                arr[j] = arr[j + 1];
                arr[j + 1] = temp;
            }
        }
    }
}

//Questões 1, 6 e 7 eram escritas e estão em outro lugar.