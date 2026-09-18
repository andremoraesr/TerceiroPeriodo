public class Movimentacoes {
    TipoMovimentacao movimentacao;
    double valor;

    public String extrato() {
        return "|| " + this.movimentacao + " - " + this.valor + "  ||  ";
    }
}
