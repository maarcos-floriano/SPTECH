package school.sptech;

import java.util.concurrent.ThreadLocalRandom;

public class Sorteio {
    public static void main(String[] args) {
        //- Escolha um número de 1 a 100.
        Integer numeroEscolhido = 50;
        Integer sorteioPar = 0;
        Integer sorteioImpar = 0;
        Boolean sorteio = false;
        //- Realize 200 sorteios de números entre 1 e 100.
        for (int i = 0; i < 200; i++) {
            Integer numeroSorteado = ThreadLocalRandom.current().nextInt(1, 101);
            //- Quando o número foi sorteado pela 1 vez (apresente a posição do sorteio)
            if (numeroEscolhido.equals(numeroSorteado) && !sorteio) {
                System.out.println("Número escolhido foi sorteado na " + (i + 1) + "ª vez.");
                sorteio = true;
            }
            if (numeroSorteado % 2 == 0) {
                sorteioPar++;
            } else {
                sorteioImpar++;
            }
        }
        //Ao final, exibir:
        //- Quantos números pares foram sorteados.
        System.out.println("Quantidade de números pares sorteados: " + sorteioPar);
        //- Quantos números ímpares foram sorteados.
        System.out.println("Quantidade de números ímpares sorteados: " + sorteioImpar);
    }
}
