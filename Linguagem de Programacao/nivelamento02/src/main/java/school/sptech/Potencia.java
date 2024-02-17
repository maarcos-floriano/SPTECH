package school.sptech;

public class Potencia {
    public static void main(String[] args) {
        // - Apresente como resultado o valor de uma potência de uma base qualquer
        // elevada a um
        // expoente qualquer, ou seja, de BE, em que B é o valor da base e E o valor do
        // expoente.
        // - Considere apenas a entrada de valores inteiros e positivos.
        // - Por exemplo: B = 2 e E = 5.
        // - O programa deverá calcular e exibir o valor de 2 elevado a 5 = 32. (Não é
        // para usar
        // métodos que calculam a potência diretamente).
        Integer base = 2;
        Integer expoente = 5;
        Integer resultado = 1;
        for (int i = 0; i < expoente; i++) {
            resultado *= base;
        }
        System.out.println(resultado);
    }
}
