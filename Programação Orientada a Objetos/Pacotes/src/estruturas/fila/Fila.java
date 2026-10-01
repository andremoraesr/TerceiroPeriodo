package estruturas.fila;

import java.util.Queue;
import java.util.LinkedList;

public class Fila {
    private Queue<Integer> fila;

    public Fila() {
        fila = new LinkedList<>();
    }

    public boolean isEmpty() {
        return fila.isEmpty();
    }

    public void adiciona(int valor) {
        fila.add(valor);
        System.out.println("Elemento " + valor + " adicionado.");
    }

    public int remove() {
        return fila.poll();
    }

    public int primeiro() {
        return fila.peek();
    }

    public void show() {
        for (Integer valor : fila) {
            System.out.println(valor + "  ");
        }
    }
}
