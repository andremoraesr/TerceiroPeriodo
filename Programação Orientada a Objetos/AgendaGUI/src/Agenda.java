import javax.swing.JFrame;
import javax.swing.JButton;
import javax.swing.JTextField;
import javax.swing.JLabel;
import javax.swing.JPanel;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.ArrayList;

public class Agenda {
    JFrame janela = new JFrame("Agenda Telefônica");
    JButton botaoCadastrar = new JButton("Cadastrar");
    JTextField nomeP = new JTextField(20);
    JTextField telefoneP = new JTextField(20);
    JTextField endP = new JTextField(20);
    JPanel painel = new JPanel();

    private ArrayList<Pessoa> contatos;

    public Agenda() {
        janela.setSize(1000, 800);
        painel.setLayout(new GridLayout(4, 2, 5, 10));
        painel.add(new JLabel("Nome: "));
        painel.add(nomeP);
        painel.add(new JLabel("Telefone: "));
        painel.add(telefoneP);
        painel.add(new JLabel("Endereço: "));
        painel.add(endP);
        painel.add(botaoCadastrar);
        janela.getContentPane().add(painel);

        this.contatos = new ArrayList<>();

        botaoCadastrar.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                String n = nomeP.getText();
                String t = telefoneP.getText();
                String end = endP.getText();
                if(!n.isEmpty() && !t.isEmpty() && !end.isEmpty()) {
                    contatos.add(new Pessoa(n, end, t));
                    System.out.println("Contato cadastrado!");
                    nomeP.setText("");
                    telefoneP.setText("");
                    endP.setText("");
                    System.out.println();
                    listarContatos();
                }
                    else{
                        System.out.println("Algum campo está vazio.");
                }
            }
        });

        janela.setVisible(true);
    }

    private void listarContatos() {
        for(Pessoa p: contatos) {
            System.out.println("Nome: " + p.nome + "  ||  Endereço: " + p.endereco + "  ||  Telefone: " + p.telefone);
            System.out.println("");
        }
    }
}
