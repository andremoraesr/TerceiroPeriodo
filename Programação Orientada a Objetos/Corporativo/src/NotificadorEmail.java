public class NotificadorEmail implements Notificador{
    public void enviar(String mensagem) {
        System.out.println("Email-> " + mensagem);
    }
}
