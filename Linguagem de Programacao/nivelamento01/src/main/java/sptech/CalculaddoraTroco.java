package school.sptech;

public class CalculaddoraTroco {
    public static void main(String[] args) {
        //Crie uma variável que armazene o valor unitário de um produto.
        Double valorUnitario = 10.0;

        //Crie uma variável que armazene a quantidade vendida.
        Integer quantidadeVendida = 3;

        //Crie uma variável que armazene o valor pago pelo cliente.
        Double valorPago = 50.0;

        //Calcule e exiba o troco com a seguinte frase: Seu troco será de R$ X", onde "X" é o valor a ser devolvido ao cliente.
        Double troco = valorPago - (valorUnitario * quantidadeVendida);
        System.out.println("Seu troco será de R$ " + troco);
    }
}
