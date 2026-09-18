import java.util.ArrayList;

public class Conta {
    double saldo;
    boolean especial;
    Cliente cliente;

    ArrayList<Movimentacoes> listaMovimentacoes;

    public Conta() {
        listaMovimentacoes = new ArrayList<>();
    }

    void movimentacaoRealizada(Movimentacoes m) {
        listaMovimentacoes.add(m);
    }

    void deposito (double valor) {
        Movimentacoes m = new Movimentacoes();
        m.movimentacao = TipoMovimentacao.DEPOSITO;
        m.valor = valor;
        this.movimentacaoRealizada(m);

        saldo = saldo + valor;
        System.out.println("\nDepósito realizado com sucesso!");
    }

    void retirada (double valor) {
        Movimentacoes m = new Movimentacoes();
        m.movimentacao = TipoMovimentacao.SAQUE;
        m.valor = -valor;
        this.movimentacaoRealizada(m);

        if (especial) {
            if(saldo >= valor) {
                saldo = saldo - valor;
                System.out.println("\nRetirada realizada com sucesso!");
            }
            else {
                saldo = saldo - valor;
                System.out.println("\nRetirada realizada com sucesso pois você é cliente especial!!");
            }
        }
        else {
            if (saldo > valor) {
                saldo = saldo - valor;
                System.out.println("\nRetirada realizada com sucesso!");
            }
            else
                System.out.println("\nSaldo insuficiente");
        }
    }

    void transferencia (double valor, Conta destino) {
        Movimentacoes m = new Movimentacoes();
        m.movimentacao = TipoMovimentacao.TRANSFERENCIA_RECEB;
        m.valor = valor;
        this.movimentacaoRealizada(m);

        Movimentacoes n = new Movimentacoes();
        m.movimentacao = TipoMovimentacao.TRANSFERENCIA_ENV;
        m.valor = -valor;
        destino.movimentacaoRealizada(m);

        if(especial) {
            if (this.saldo >= valor) {
                this.saldo = this.saldo - valor;
                destino.saldo = destino.saldo + valor;
                System.out.println("\nTransferencia realizada com sucesso");
            } else {
                this.saldo = this.saldo - valor;
                destino.saldo = destino.saldo + valor;
                System.out.println("\nTransferencia realizada com sucesso pois você é cliente especial!");
            }
        }
        else {
            if(this.saldo < valor) {
                System.out.println("\nSaldo insuficiente");
            }
            else {
                this.saldo = this.saldo - valor;
                destino.saldo += valor;
                System.out.println("\nTransferência realizada com sucesso");
            }
        }
    }

    public String formata() {
        return "\n" + this.cliente.nome + " - Saldo: " + this.saldo + " - Especial: " + this.especial + ".";
    }

    String extrato() {
        String resultado = "";
        for(Movimentacoes m: listaMovimentacoes)
            resultado += m.extrato();
        return resultado;
    }
}
