import p1.Produto;

public class Main {

    public static void main(String []args) {
        Loja loja = new Loja(2);
        loja.estoque[0] = new Produto(20, 25, "bola");
        loja.estoque[1] = new Produto(10, 100, "tênis");

        loja.solicVenda(10, "bola");
        loja.solicVenda(3, "tênis");

        loja.solicReposicao(5, "bola");

        loja.tabelaEstoque();
    }
}
