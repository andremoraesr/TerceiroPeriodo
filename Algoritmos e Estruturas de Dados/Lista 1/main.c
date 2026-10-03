#include <stdlib.h>
#include <stdio.h>
#include "bib.h"
#include <locale.h>

int main () {

    setlocale(LC_ALL, "");

    int option;
    do {
        printf("\n1. Questão 1: ");
        printf("\n2. Questão 2: ");
        printf("\n3. Questão 3: ");
        printf("\n4. Questão 4: ");
        printf("\n5. Questão 5: ");
        printf("\n6. Questão 6: ");
        printf("\n7. Questão 7: ");
        printf("\n8. Questão 8: ");
        printf("\n0. Sair.");
        scanf("%d", &option);
        setbuf(stdin, NULL);
        switch(option) {
            case 1:{
                printf("\nUm exemplo de aplicação real para este caso é num site de vendas, onde há a opção de ordenar os produtos por ordem decrescente de preços, e para isso é preciso encontrar o menor valor.");
                break;
            }
            case 2: {
                printf("\nCriar vetor... digite o tamanho: ");
                int t;
                scanf("%d", &t);
                int *v = (int*)malloc(t*sizeof(int));
                for(int i = 0; i < t; i++) {
                    printf("\nElemento %d: ", i);
                    scanf("%d", &v[i]);
                }
                questao2(v, t);
                free(v);
                break;
            }
            case 3: {
                break;
            }
            case 4: {
                printf("\nCriar vetor... digite o tamanho: ");
                int t;
                scanf("%d", &t);
                int *v = (int*)malloc(1 + t*sizeof(int));
                for(int i = 0; i < t; i++) {
                    printf("\nElemento %d: ", i);
                    scanf("%d", &v[i]);
                }
                printf("\nDigite o elemento a ser encontrado: ");
                int x;
                scanf("%d", &x);
                questao4(v, t, x);
                free(v);
                break;
            }
            case 5: {
                printf("\nCriar vetor... digite o tamanho: ");
                int t;
                scanf("%d", &t);
                int *v = (int*)malloc(1 + t*sizeof(int));
                for(int i = 0; i < t; i++) {
                    printf("\nElemento %d: ", i);
                    scanf("%d", &v[i]);
                }
                printf("\nDigite o elemento a ser encontrado: ");
                int x;
                scanf("%d", &x);
                questao5(v, t, x);
                free(v);
                break;
            }
            case 6: {
                break;
            }
            case 7: {
                break;
            }
            case 8: {
                break;
            }
            case 0: break;
            default: break;
        }
    } while(option != 0);

    return 0;
}