package ExcecaoSaldo;

import java.util.Scanner;

public class ProgramaConta {
    public static void main(String []args) {
        Scanner input = new Scanner(System.in);
        Conta c = new Conta(5000);

        System.out.println("Saldo inicial: R$5000,00");

        System.out.print("Digite um valor para depósito: ");
        double valor = input.nextDouble();
        try {
            c.depositar(valor);
            System.out.println("\nValor depositado com sucesso.");
        }
        catch (IllegalArgumentException e){
            System.out.println("\nErro: " + e.getMessage());
        }

        System.out.print("\nDigite um valor para sacar da conta: ");
        valor = input.nextDouble();

        try {
            c.sacar(valor);
            System.out.println("\nSaque efetuado com sucesso.");
        }
        catch (SaldoInsuficienteException e) {
            System.out.println("\nErro: " + e.getMessage());
        }

        System.out.println("\nSaldo final: R$" + c.getSaldo());

        input.close();
    }
}
