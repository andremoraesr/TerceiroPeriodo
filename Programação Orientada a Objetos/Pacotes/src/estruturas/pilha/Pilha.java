package estruturas.pilha;

import java.util.ArrayDeque;
import java.util.Deque;

public class Pilha {
    private Deque<Integer> pilha;

    public Pilha() {
        pilha = new ArrayDeque<>();
    }

    public boolean isEmpty() {
        return pilha.isEmpty();
    }

    public void adicionar(int valor) {
        pilha.push(valor);
        System.out.println("Elemento " + valor + " adicionado.");
    }

    public int retirar() {
        return pilha.pop();
    }

    public int topo() {
        return pilha.peek();
    }

    public void show() {
        for(Integer valor : pilha) {
            System.out.print(valor + "  ");
        }
    }
}
