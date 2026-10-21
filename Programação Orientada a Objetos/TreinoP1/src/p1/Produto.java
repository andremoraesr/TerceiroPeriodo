package p1;

public class Produto {
    private int quantidade;
    private double preco;
    private String descricao;

    public Produto(int x, double p, String d) {
        this.quantidade = x;
        this.preco = p;
        this.descricao = d;
    }

    public double venda (int x) {
        if(this.quantidade >= x) {
            this.quantidade -= x;
            return this.preco * x;
        }
        return -1;
    }

    public void reposicao (int x) {
        this.quantidade += x;
    }

    public String getDescricao() {
        return this.descricao;
    }

    public int getEstoque() {
        return this.quantidade;
    }

    public double getPreco() {
        return this.preco;
    }
}
