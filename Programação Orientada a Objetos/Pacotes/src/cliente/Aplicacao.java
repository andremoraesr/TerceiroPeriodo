package cliente;

import estruturas.pilha.Pilha;
import java.util.Scanner;

public class Aplicacao {
    public static void main(String [] args) {
        Pilha p = new Pilha();
        Scanner input = new Scanner (System.in);

        int option;
        do {
            System.out.println("___________MENU DA PLHA___________");
            System.out.println("1. Inserir.");
            System.out.println("2. Remover.");
            System.out.println("3. Ver o elemento do topo.");
            System.out.println("4. Ver todos os elementos.");
            System.out.println("0. Sair.");
            option = input.nextInt();
            input.nextLine();

            switch (option) {
                case 1: {
                    System.out.println("Valor: ");
                    int x = input.nextInt();
                    p.adicionar(x);
                    break;
                }
                case 2: {
                    if (!p.isEmpty()) {
                        int x = p.retirar();
                        System.out.println("Valor retirado: " + x);
                    } else {
                        System.out.println("Pilha vazia.");
                    }
                    break;
                }
                case 3: {
                    if(!p.isEmpty()) {
                        int x = p.topo();
                        System.out.println("Topo da pilha: " + x);
                    } else {
                        System.out.println("Pilha vazia.");
                    }
                    break;
                }
                case 4: {
                    if(!p.isEmpty()) {
                        p.show();
                    } else {
                        System.out.println("Pilha vazia.");
                    }
                    break;
                }
                case 0:
                    break;
                default:
                    break;
            }
        } while(option != 0);
    }
}
