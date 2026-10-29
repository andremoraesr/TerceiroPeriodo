public class Main {
    public static void main(String []args) {
        Expression c8 = new Constant(8);
        Expression c3 = new Constant(3);
        Expression soma = new Addition(c8, c3);

        Expression c7 = new Constant(7);
        Expression c4 = new Constant(4);
        Expression mult = new Multiplication(c7, c4);

        Expression negatMul = new Negativo(mult);
        Expression result = new Subtraction(soma, negatMul);

        System.out.println("Expressão: " + result.toString());
        System.out.println("Resultado: %d" + result.evaluate());
    }
}
