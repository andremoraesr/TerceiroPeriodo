public class Main {
    public static void main(String[] args) {
        Banco banco = new Banco();

        Cliente cli1 = new Cliente();
        Cliente cli2 = new Cliente();

        Conta c1 = new Conta();
        Conta c2 = new Conta();

        banco.adicionarConta(c1);
        banco.adicionarConta(c2);

        cli1.nome = "Andre Moraes";
        cli1.endereço = "Rua das laranjas, 181, Floresta";
        cli2.nome = "Joao da Silva";
        cli2.endereço = "Rua das maçãs, 422, Floresta";

        c1.cliente = cli1;
        c2.cliente = cli2;

        c1.saldo = 1000;
        c2.saldo = 1000;
        c1.especial = true;
        c2.especial = false;

        c1.retirada(800);
        c2.deposito(500);
        c1.transferencia(500, c2);

        System.out.println(c1.formata());
        System.out.println(c1.extrato());
        System.out.println(c2.formata());
        System.out.println(c2.extrato());
    }
}