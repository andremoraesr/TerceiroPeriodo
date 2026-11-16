package GerenciaCliente;

import java.util.ArrayList;

public class ControleCliente {
    private ArrayList<Cliente> clientes = new ArrayList<>();

    public void cadastrar(Cliente c) {
        clientes.add(c);
    }

    public boolean vazia() {
        if(clientes.isEmpty()) {
            return true;
        }
        return false;
    }

}
