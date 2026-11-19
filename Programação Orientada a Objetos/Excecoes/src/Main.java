public class Main {
    public static void main(String []args) {
        Pilha p = new Pilha();
        p.push(1);
        p.pop();
        try {
            p.pop();
        }
        catch (PilhaVaziaException e) {
            System.out.println("Erro: " + e.getMessage());
        }
    }
}
