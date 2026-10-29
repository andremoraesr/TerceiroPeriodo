public class Negativo implements Expression {
    private final Expression value;

    public Negativo(Expression value) {
        this.value = value;
    }

    public int evaluate() {
        return -this.value.evaluate();
    }

    public String toString() {
        return String.format("(-%s) ",
                this.value);
    }
}