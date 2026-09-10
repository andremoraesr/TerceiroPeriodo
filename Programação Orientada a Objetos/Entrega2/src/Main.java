import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        Conta c1 = new Conta();
        Conta c2 = new Conta();

        System.out.println("Cadastro da primeira conta...");

        System.out.print("Digite seu nome: ");
        c1.nome = input.nextLine();

        System.out.print("Digite seu saldo: ");
        c1.saldo = input.nextDouble();

        System.out.print("Você deseja ser cliente especial? (true or false): ");
        c1.especial = input.nextBoolean();

        input.nextLine();

        System.out.println("\nCadastro da segunda conta... ");

        System.out.print("Digite seu nome: ");
        c2.nome = input.nextLine();

        System.out.print("Digite seu saldo: ");
        c2.saldo = input.nextDouble();

        System.out.print("Você deseja ser cliente especial? (true or false): ");
        c2.especial = input.nextBoolean();

        c1.transferencia(1000, c2);

        c1.deposito(200);
        c2.retirada(3000);

        System.out.println("\nO saldo do cliente " + c1.nome + " é de " + c1.getSaldo() + " reais.");
        System.out.println("\nO saldo do cliente " + c2.nome + " é de " + c2.getSaldo() + " reais.");

        c1.retirada(5000);
        c1.transferencia(5000, c2);
        c2.transferencia(5000, c1);

        System.out.printf("\n%s | Saldo: R$%.2f | Especial: %b.\n",
                c1.nome, c1.saldo, c1.especial);
        System.out.printf("\n%s | Saldo: R$%.2f | Especial: %b.\n",
                c2.nome, c2.saldo, c2.especial);

        input.close();
    }
}