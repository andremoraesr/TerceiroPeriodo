package Equipamentos;

public class Som extends Equipamento{
    double potencia;
    int quantCanais;

    public Som(int I, String d, double day, double W, int c) {
        super(I, d, day);
        this.potencia = W;
        this.quantCanais = c;
    }
}
