public class Jogo {
    public static void main(String[] args) {
        Personagem heroi = new Personagem();
        heroi.nome = "Andre";
        heroi.pontosDeVida = 500;
        heroi.nivel = 30;

        heroi.mostrarStatus();
        heroi.sofrerDano(78);
        heroi.mostrarStatus();
    }
}