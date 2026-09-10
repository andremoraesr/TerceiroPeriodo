import java.util.Scanner;

public class Imc {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        Pessoa exemplo = new Pessoa();
        System.out.print("Digite seu nome: ");
        exemplo.nome = scanner.nextLine();

        System.out.print("Digite seu peso (em kg): ");
        exemplo.peso = scanner.nextDouble();

        System.out.print("Digite sua altura (em m): ");
        exemplo.altura = scanner.nextDouble();

        System.out.println(exemplo.nome + ", seu IMC é " + exemplo.calculaIMC() + ".");
        System.out.println("Isso significa que você está " + exemplo.avaliaIMC());

        scanner.close();
    }
}
