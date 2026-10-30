public class Main {
    public static void main(String []args) {
        Notificador nEmail = new NotificadorEmail();
        Notificador nSMS = new NotificadorSMS();
        Notificador nPush = new NotificationPush();

        ServicoAlerta sEmail = new ServicoAlerta(nEmail);
        ServicoAlerta sSMS = new ServicoAlerta(nSMS);
        ServicoAlerta sPush = new ServicoAlerta(nPush);

        sEmail.alertaCritico("Erro de comunicação com o servidor...");
        sSMS.alertaCritico("Sua senha está em risco. Altere sua senha!");
        sPush.alertaCritico("Acesse o email e confirme seu login!");
    }
}
