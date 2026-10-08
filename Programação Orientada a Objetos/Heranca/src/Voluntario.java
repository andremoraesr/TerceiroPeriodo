public class Voluntario extends Participante{
    private String atividade;

    public Voluntario (String n, Evento e, String ativ) {
        super(n, e);
        this.atividade = ativ;
    }

    @Override
    public String getCertificado() {
        return getNome() + ": " + this.atividade;
    }
}
