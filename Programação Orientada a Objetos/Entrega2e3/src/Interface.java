import java.util.Scanner;

public class Interface {

    public void executar() {
        int option;
        Scanner input = new Scanner(System.in);

        System.out.print("Para criar um banco, digite o nome dele: ");
        String name = input.nextLine();
        Banco banco = new Banco(name);

        do {
            System.out.println("____________MENU____________");
            System.out.println("1. Adicionar conta e cliente.");
            System.out.println("2. Fazer um depósito.");
            System.out.println("3. Fazer um saque.");
            System.out.println("4. Fazer uma transferência.");
            System.out.println("5. Exibir as informações de um cliente.");
            System.out.println("6. Emitir o extrato de um cliente.");
            System.out.println("0. Sair.");
            option = input.nextInt();
            input.nextLine();

            switch (option) {
                case 1: {
                    String nome;
                    String endereço;
                    double saldo;
                    boolean special;
                    System.out.print("Digite o nome do cliente: ");
                    nome = input.nextLine();
                    System.out.print("Digite o endereço do cliente: ");
                    endereço = input.nextLine();
                    System.out.print("Digite o saldo do cliente: ");
                    saldo = input.nextDouble();
                    System.out.print("Digte se o cliente é cliente especial(true or false): ");
                    special = input.nextBoolean();
                    Cliente c = new Cliente(nome, endereço);
                    Conta account = new Conta(saldo, special, c);
                    banco.adicionarConta(account);
                    break;
                }
                case 2: {
                    System.out.print("Digite o valor a ser depositado: ");
                    double valor = input.nextDouble();
                    input.nextLine();
                    System.out.print("Digite o nome do cliente cuja conta receberá o valor: ");
                    String nome = input.nextLine();
                    Conta c = banco.foundAccount(nome);
                    if(c != null) {
                        c.deposito(valor);
                    }
                    break;
                }
                case 3: {
                    System.out.print("Digite o valor a ser retirado: ");
                    double valor = input.nextDouble();
                    input.nextLine();
                    System.out.print("Digite o nome do cliente cuja conta terá o valor retirado: ");
                    String nome = input.nextLine();
                    Conta c = banco.foundAccount(nome);
                    if(c != null) {
                        c.retirada(valor);
                    }
                    break;
                }
                case 4: {
                    System.out.print("Digite o nome do cliente que realizará a tranferência: ");
                    String nome1 = input.nextLine();
                    Conta c1 = banco.foundAccount(nome1);
                    if(c1 != null) {
                        System.out.print("Digite o nome do cliente que receberá a transferência: ");
                        String nome2 = input.nextLine();
                        Conta c2 = banco.foundAccount(nome2);
                        if(c2 != null) {
                            System.out.print("Digite o valor a ser tranferido: ");
                            double valor = input.nextDouble();
                            c1.transferencia(valor, c2);
                        }
                    }
                    break;
                }
                case 5: {
                    System.out.print("Digite o nome do cliente cujas informações serão exibidas: ");
                    String nome = input.nextLine();
                    Conta c = banco.foundAccount(nome);
                    if(c != null) {
                        System.out.println(c.formata());
                    }
                    break;
                }
                case 6: {
                    System.out.print("Digite o nome do cliente cujo extrato será emitido: ");
                    String nome = input.nextLine();
                    Conta c = banco.foundAccount(nome);
                    if (c != null) {
                        System.out.println(c.extrato());
                    }
                    break;
                }
                default: {
                    break;
                }
            }
        } while (option != 0);
    }
}
