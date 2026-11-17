#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
// Definição do nó
typedef struct No {
 int dado;
 struct No* esquerda;
 struct No* direita;
} No;
// Função para criar um novo nó
No* criarNo(int valor) {
 No* novo = (No*)malloc(sizeof(No));
 novo->dado = valor;
 novo->esquerda = NULL;
 novo->direita = NULL;
 return novo;
}

void preOrdem(No* raiz) {
    if(raiz == NULL) {return;}

    printf("%d ", raiz->dado);
    preOrdem(raiz->esquerda);
    preOrdem(raiz->direita);
}

void emOrdem(No *raiz) {
    if(raiz == NULL) return;

    emOrdem(raiz->esquerda);
    printf("%d", raiz->dado);
    emOrdem(raiz->direita);
}

void posOrdem(No *raiz) {
    if(raiz == NULL) return;

    posOrdem(raiz->esquerda);
    posOrdem(raiz->direita);
    printf("%d", raiz->dado);
}

int contarNos(No *raiz) {
    if(raiz == NULL) return 0;

    return 1 + contarNos(raiz->esquerda) + contarNos(raiz->direita);
}

int altura(No* raiz) {
    if(raiz == NULL) return -1;

    int he = 1 + altura(raiz->esquerda);
    int hd = 1 + altura(raiz->direita);

    return (he > hd) ? he:hd;            //se true, retorna o da esquerda, se false, retorna o da direita
}


//codigo ainda incompleto