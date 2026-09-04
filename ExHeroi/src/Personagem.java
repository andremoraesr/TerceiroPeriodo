public class Personagem {
    String nome;
    int  nivel;
    int pontosDeVida;

    void mostrarStatus() {
        System.out.println(this.nome + ", nível " + this.nivel + ", tem " +  this.pontosDeVida
        + " pontos de vida!");
    }

    int sofrerDano(int quantidadeDano) {
        if((this.pontosDeVida - quantidadeDano) <= 0 ) {
            this.pontosDeVida = 0;
            return this.pontosDeVida;
        }
        else {
            this.pontosDeVida -= quantidadeDano;
            return this.pontosDeVida;
        }
    }
}
