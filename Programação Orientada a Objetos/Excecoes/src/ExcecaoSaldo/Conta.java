package ExcecaoSaldo;

public class Conta {
    private double saldo;

    public Conta(double s) {
        this.saldo = s;
    }

    public void depositar(double valor) {
        if(valor <= 0) {
            throw new IllegalArgumentException("O valor a ser depositado deve ser maior que R$0,00.");
        }
        else {
            saldo += valor;
        }
    }

    public void sacar(double valor) throws  SaldoInsuficienteException {
        if(saldo < valor) {
            throw new SaldoInsuficienteException("Saldo insufuciente!");
        }
        else {
            saldo -= valor;
        }
    }

    public double getSaldo() {
        return this.saldo;
    }
}
