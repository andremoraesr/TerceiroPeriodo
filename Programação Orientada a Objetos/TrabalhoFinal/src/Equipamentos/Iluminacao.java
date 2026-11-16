package Equipamentos;

public class Iluminacao extends Equipamento{
    String tipoIlumina;
    double potencia;

    public Iluminacao(int I, String d, double day, String t, double W) {
        super(I, d, day);
        this.tipoIlumina = t;
        this.potencia = W;
    }
}
