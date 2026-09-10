public class Conta {
    String nome;
    double saldo;
    boolean especial;


    void deposito (double valor) {
        saldo = saldo + valor;
        System.out.println("\nDepósito realizado com sucesso!");
    }

    void retirada (double valor) {
        if (especial) {
            if(saldo >= valor) {
                saldo = saldo - valor;
                System.out.println("\nRetirada realizada com sucesso!");
            }
            else {
                saldo = saldo - valor;
                System.out.println("\nRetirada realizada com sucesso pois você é cliente especial!!");
            }
        }
        else {
            if (saldo > valor) {
                saldo = saldo - valor;
                System.out.println("\nRetirada realizada com sucesso!");
            }
            else
                System.out.println("\nSaldo insuficiente");
        }
    }

    void transferencia (double valor, Conta destino) {
        if(especial) {
            if (this.saldo >= valor) {
                this.saldo = this.saldo - valor;
                destino.saldo = destino.saldo + valor;
                System.out.println("\nTransferencia realizada com sucesso");
            } else {
                this.saldo = this.saldo - valor;
                destino.saldo = destino.saldo + valor;
                System.out.println("\nTransferencia realizada com sucesso pois você é cliente especial!");
            }
        }
        else {
            if(this.saldo < valor) {
                System.out.println("\nSaldo insuficiente");
            }
            else {
                this.saldo = this.saldo - valor;
                destino.saldo += valor;
                System.out.println("\nTransferência realizada com sucesso");
            }
        }
    }

    double getSaldo() {
        return saldo;
    }
}

