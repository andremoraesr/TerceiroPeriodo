#include <stdio.h>
#include <stdlib.h>
#include "bib.h"

struct No{
    int destino;
    int peso;
    struct No *prox;
};

struct Grafo{
    int V;
    No **lista;
    };

Grafo *criarGrafo (int vertices) {
    Grafo *g = (Grafo*)malloc(sizeof(Grafo));
    g->V = vertices;
    g->lista = (No**)malloc(vertices*sizeof(No*));
    for(int i = 0; i<vertices; i++) {
        g->lista[i] = NULL;
    }
    return g;
}

void adicionarAresta(Grafo *g, int origem, int destino, int peso){
    No *novo = (No*)malloc(sizeof(No*));
    novo->destino = destino;
    novo->peso = peso;
    novo->prox = g->lista[origem];
    g->lista[origem] = novo;
}

void imprimirGrafo (Grafo *g) {
    for (int i = 0; i<g->V; i++) {
        No *atual = g->lista[i];
        if(atual != NULL) {
            while (atual != NULL) {
                printf("%d  ", atual->destino);
                atual = atual->prox;
            }
            printf("\n");
        }
    }
}

void DFS(Grafo *g, int v, int visitado[]){
    
    visitado[v] = 1;
    printf("%d ", v);
    No *aux = g->lista[v];
    while(aux != NULL){
    if(!visitado[aux->destino] ){
        DFS(g, aux->destino, visitado);
    }
    aux = aux->prox;
    }
}

void BFS(Grafo *g, int origem){               //origem é o vértice v de início
    int fila[100];
    int inicio = 0;
    int fim = 0;
    int visitado[100]={0};
    fila[fim++] = origem;
    visitado[origem] = 1;
    while(inicio < fim){
        int v = fila[inicio++];
        printf("%d ",v);
        No *aux = g->lista[v];
        while(aux){
        if(!visitado[aux->destino]){
            visitado[aux->destino] = 1;
            fila[fim++] = aux->destino;
        }
        aux = aux->prox;
        }
    }
}

void topoDFS(Grafo *g, int v, int visitado[], int pilha[], int *topo){             
    visitado[v] = 1;
    No *aux = g->lista[v];
    while(aux){
        if(!visitado[aux->destino ]){
            topoDFS(g, aux->destino, visitado, pilha, topo);
         }
        aux = aux->prox;
    }
    pilha[(*topo)++] = v;
}
