public class Participante {
    private String nome;
    private Evento evento;

    public Participante (String n, Evento e) {
        nome = n;
        evento = e;
    }

    public String getCertificado () {
        return "Declaramos que " + nome + "participou do evento: " + evento.getNome();

    }
    protected String getNome() {
        return this.nome;
    }
    protected String getEvento() {
        return this.evento.getNome();
    }
}

