#include <stdio.h>
#include <stdlib.h>
#include "TabelaHash.h"

int main(){
    int tamanho = 1024;
    Hash *tabela = criaHash(tamanho);


    struct aluno al, a[4] = {{12352,"Andre",9.5,7.8,8.5},//64
                         {7894,"Ricardo",7.5,8.7,6.8},//726
                         {1124,"Bianca",9.7,6.7,8.4},//379
                         {2148,"Ana",5.7,6.1,7.4}};//173

    int i;
    for(i=0; i < 4; i++){
        insereHash_EnderAberto(tabela,a[i]);
    }

    printf("------------\n\n");
    int option;
    do {
        printf("\n1. Inserir aluno. ");
        printf("\n2. Remover aluno. ");
        printf("\n3. Imprimir conteudo da tabela. ");
        printf("\n0. Sair. \n");
        scanf("%d", &option);

        switch (option) {
            case 1: {
                struct aluno aluno;
                setbuf(stdin, NULL);
                printf("\nNome: ");
                scanf("29[^/n]", aluno.nome);
                setbuf(stdin, NULL);
                printf("\nMatricula: ");
                scanf("%d", aluno.matricula);
                printf("\nN1: ");
                scanf("%f", aluno.n1);
                printf("\nN2: ");
                scanf("%f", aluno.n2);
                printf("\nN3: ");
                scanf("%f", &aluno.n3);
                insereHash_EnderAberto(tabela, aluno);
                break;
            }
            case 2: {
                int mat;
                setbuf(stdin, NULL);
                printf("\nMatricula do aluno a ser removido: ");
                scanf("%d", &mat);
                int x = removeHash_EnderAberto(tabela, mat);
                if(x == 0) {
                    printf("\nElemento nao encontrado. ");
                }
                    else {printf("\nElemento removido.");}
                break;
            }
            case 3:
                imprimeHash_EnderAberto(tabela);
                break;
            case 0:
                printf("\nObrigado!");
                break;
            default: break;
        }
    } while(option != 0);

    liberaHash(tabela);

    return 0;
}
