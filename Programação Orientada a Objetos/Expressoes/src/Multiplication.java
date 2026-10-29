public class Multiplication implements Expression {
    private final Expression left;
    private final Expression right;

    public Multiplication(Expression left,
                    Expression right) {
        this.left = left;
        this.right = right;
    }

    public int evaluate() {
        return this.left.evaluate() *
                this.right.evaluate();
    }

    public String toString() {
        return String.format("(%s * %s) ",
                this.left, this.right);
    }
}
