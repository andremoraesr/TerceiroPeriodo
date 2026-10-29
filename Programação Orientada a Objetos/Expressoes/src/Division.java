public class Division implements Expression {
    private final Expression left;
    private final Expression right;

    public Division(Expression left,
                    Expression right) {
        this.left = left;
        this.right = right;
    }

    public int evaluate() {
        if(this.right.evaluate() == 0) {throw new ArithmeticException();}
        return this.left.evaluate() /
                this.right.evaluate();
    }

    public String toString() {
        return String.format("(%s / %s) ",
                this.left, this.right);
    }
}
