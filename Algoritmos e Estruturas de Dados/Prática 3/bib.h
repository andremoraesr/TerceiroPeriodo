#ifndef BIB_H
#define BIB_H

typedef struct No No;
typedef struct Grafo Grafo;

Grafo *criarGrafo (int vertices);
void adicionarAresta(Grafo *g, int origem, int destino, int peso);
void imprimirGrafo (Grafo *g);
void BFS(Grafo *g,int origem);
void topoDFS(Grafo *g,int v,int visitado[],int pilha[],int *topo);

#endif