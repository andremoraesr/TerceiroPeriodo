package Equipamentos;

public class Projecao extends Equipamento{
    String resolucao;
    double lumens;

    public Projecao(int I, String d, double day, String r, double l) {
        super(I, d, day);
        this.resolucao = r;
        this.lumens = l;
    }
}
