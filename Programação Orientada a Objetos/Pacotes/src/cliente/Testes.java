package cliente;

import estruturas.fila.Fila;
import estruturas.pilha.Pilha;

public class Testes {
    public static void main(String[] args) {
        Pilha p = new Pilha();
        Fila f = new Fila();

        System.out.println("_______________PILHA________________");
        for(int i = 0; i < 10; i++) {
            p.adicionar(i);
        }
        p.show();

        if(!p.isEmpty()) {
            int x = p.retirar();
            System.out.println("\nElemento " + x + " retirado.");
        }
        if(!p.isEmpty()) {
            int x = p.topo();
            System.out.println("\n" + x + " é o último elemento.");
        }
        p.show();

        System.out.println("\n\n________________FILA_______________");
        for(int i = 10; i < 20; i++) {
            f.adiciona(i);
        }
        f.show();
        if(!f.isEmpty()) {
            int x = f.remove();
            System.out.println("\nElemento " + x + " retirado." );
        }
        if(!f.isEmpty()) {
            int x = f.primeiro();
            System.out.println("\n" + x + " é o primeiro elemento.");
        }
        f.show();

    }
}
