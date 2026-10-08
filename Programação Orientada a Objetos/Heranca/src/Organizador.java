public class Organizador extends Participante {

    public Organizador (String n, Evento e) {
        super(n, e);
    }

    @Override
    public String getCertificado() {
        return getNome() + " organizou o evento " + getEvento();
    }
}
