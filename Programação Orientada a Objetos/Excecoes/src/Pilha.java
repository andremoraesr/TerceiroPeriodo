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

    public void push(int valor) {
        pilha.push(valor);
        System.out.println("Elemento " + valor + " adicionado.");
    }

    public int pop() {
        if(isEmpty()) {
            throw new PilhaVaziaException("A pilha está vazia.");
        }
        int x = pilha.pop();
        System.out.println("Elemento retirado: " + x);
        return x;
    }

    public int top() {
        if(isEmpty()) {
            throw new PilhaVaziaException("A pilha está vazia.");
        }
        return pilha.peek();
    }

    public void show() {
        for(Integer valor : pilha) {
            System.out.print(valor + "  ");
        }
    }
}
