public class ServicoAlerta {
    Notificador not;

    public ServicoAlerta(Notificador n) {
        this.not = n;
    }
    void alertaCritico(String mensagem) {
        System.out.print("Alerta Crítico: ");
        this.not.enviar(mensagem);
    }
}
