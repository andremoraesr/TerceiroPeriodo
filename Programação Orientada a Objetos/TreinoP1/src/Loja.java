import p1.Produto;

public class Loja {
    private int nProdutos;
    Produto estoque[];

    public Loja(int n) {
        this.nProdutos = n;
        this.estoque = new Produto[n];
    }

    public void solicVenda(int x, String d) {
        boolean encontrado = false;
        for(int i = 0; i<this.nProdutos; i++) {
            if(this.estoque[i] != null && this.estoque[i].getDescricao().equals(d)) {
                double v = estoque[i].venda(x);
                if(v == -1) {
                    System.out.println("Não há produtos suficientes em estoque.");
                }
                else {
                    System.out.println("Venda concluída com sucesso. Valor: " + v + " reais.");
                }
                encontrado = true;
                break;
            }
        }
        if(!encontrado) {
            System.out.println("Produto não encontrado.");
        }
    }

    public void solicReposicao(int x, String d) {
        boolean encontrado = false;
        for(int i=0; i < this.nProdutos; i++) {
            if(this.estoque[i] != null && this.estoque[i].getDescricao().equals(d)) {
                this.estoque[i].reposicao(x);
                encontrado = true;
                break;
            }
        }
        if(!encontrado) {
            System.out.println("Produto não encontrado.");
        }
    }

    public void verEstoque(String d) {
        boolean encontrado = true;
        for(int i=0; i<this.nProdutos; i++) {
            if(this.estoque[i] != null && this.estoque[i].getDescricao().equals(d)) {
                System.out.println("A quantidade em estoque de " + d + " é: " + this.estoque[i].getEstoque() + " unidades.");
                encontrado = true;
                break;
            }
        }
        if(!encontrado) {
            System.out.println("Produto não encontrado.");
        }
    }

    public void tabelaPrecos() {
        System.out.println("PRODUTO       PREÇO");
        for(int i=0; i<this.nProdutos; i++) {
            System.out.println(this.estoque[i].getDescricao() + ":           " + this.estoque[i].getPreco());
        }
    }

    public void tabelaEstoque() {
        System.out.println("PRODUTO       UNIDADES");
        for(int i=0; i<this.nProdutos; i++) {
            System.out.println(this.estoque[i].getDescricao() + ":          " + this.estoque[i].getEstoque());
        }
    }
}
