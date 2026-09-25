public class Movimentacoes {
    TipoMovimentacao movimentacao;
    double valor;

    public Movimentacoes(TipoMovimentacao m, double v) {
        this.movimentacao = m;
        this.valor = v;
    }

    public String extrato() {
        return "|| " + this.movimentacao + " - " + this.valor + "  ||  ";
    }
}
