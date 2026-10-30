public class NotificadorSMS implements Notificador {
    public void enviar(String mensagem) {
        System.out.println("SMS-> " + mensagem);
    }
}
