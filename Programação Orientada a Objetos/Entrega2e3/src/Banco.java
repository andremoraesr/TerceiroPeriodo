import java.util.ArrayList;

public class Banco {
    ArrayList<Conta> contas;
    String nome;

    public Banco(String n) {
        this.nome = n;
        contas = new ArrayList<>();
    }

    void adicionarConta(Conta conta) {
        contas.add(conta);
    }

    Conta foundAccount(String nome) {
        for(Conta conta : contas) {
            if(conta.cliente.nome.equals(nome)) {
                return conta;
            }
        }
        System.out.println("Conta não encontrada!");
        return null;
    }
}
