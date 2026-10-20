#ifndef BIB_H
#define BIB_H

typedef struct No No;
typedef struct Grafo Grafo;

Grafo *criarGrafo (int vertices);
void adicionarAresta(Grafo *g, int origem, int destino, int peso);
void imprimirGrafo (Grafo *g);

#endif