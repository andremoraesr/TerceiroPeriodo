import java.util.ArrayList;

public class Banco {
    ArrayList<Conta> contas;

    public Banco() {
        contas = new ArrayList<>();
    }

    void adicionarConta(Conta conta) {
        contas.add(conta);
    }
}
