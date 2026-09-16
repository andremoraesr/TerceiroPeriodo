#include <stdio.h>
#include <locale.h>
#include <stdlib.h>
#include "ord.h"

int main() {
    setlocale(LC_ALL, "");

    int size, option;
    printf("Digite o quantos elementos o vetor terá: ");
    scanf("%d", &size);

    int *vet;
    vet = (int *)malloc(size * sizeof(int));

    printf("\nPreencha o vetor: ");
    for(int j=0; j < size; j++) {
        printf("\nElemento %d: ", j+1);
        scanf("%d", &vet[j]);
    }

    do {
        printf("\n------- MENU DE MÉTODOS -------");
        printf("\n1. BubbleSort.");
        printf("\n2. SelectionSort.");
        printf("\n0. Sair.");
        printf("\n");
        setbuf(stdin, NULL);
        scanf("%d", &option);
        switch (option) {
            case 1:
                bubbleSort(vet, size);
                break;
            case 2:
                selectionSort(vet, size);
                break;
            default:
                break;
        }
    }while(option != 0);

    free(vet);
    return 0;
}