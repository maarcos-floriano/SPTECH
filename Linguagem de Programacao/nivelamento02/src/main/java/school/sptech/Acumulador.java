package school.sptech;

import io.netty.util.internal.ThreadLocalRandom;

public class Acumulador {
    public static void main(String[] args) {
        // - Sorteie vários números aleatórios de 0 a 10 até sortear o número 0 e
        ThreadLocalRandom random = ThreadLocalRandom.current();
        Integer numeroSorteado = random.nextInt(11);
        Integer soma = 0;
        // calcule a soma dos
        // números sorteados. (Não é para usar vetor).
        while (numeroSorteado != 0) {
            System.out.println("Número sorteado: " + numeroSorteado);
            soma += numeroSorteado;
            numeroSorteado = random.nextInt(11);{
        }
        // - Exiba: ```A soma dos números é x```
        System.out.println("A soma dos números é " + soma);
        }
    }
}
