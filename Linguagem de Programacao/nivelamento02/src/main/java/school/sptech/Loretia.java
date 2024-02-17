package school.sptech;

import io.netty.util.internal.ThreadLocalRandom;

public class Loretia {
    public static void main(String[] args) {
        // - Escolha um número entre 0 e 10
        Integer numeroEscolhido = 5;
        // - Sorteie números de 0 a 10 até sortear o número escolhido
        ThreadLocalRandom random = ThreadLocalRandom.current();
        Integer numeroSorteado = random.nextInt(11);
        // - A cada iteração exiba o número sorteado.
        Integer contadorDeErros = 0;
        while (!numeroSorteado.equals(numeroEscolhido)) {
            System.out.println("Número sorteado: " + numeroSorteado);
            numeroSorteado = random.nextInt(11);
            contadorDeErros++;
        }
        // - Quando acontecer o “acerto” se a quantidade de vezes necessárias for:
        // - Até 3: exiba ```Você é MUITO sortudo```
        if (contadorDeErros <= 3) {
            System.out.println("Você é MUITO sortudo");
        }else if (contadorDeErros >= 4 && contadorDeErros <= 10) {
            // - Entre 4 e 10: exiba ```Você é sortudo```
            System.out.println("Você é sortudo");
        }else{
            // - Mais de 10: exiba ```É melhor você parar de apostar e ir trabalhar```
            System.out.println("É melhor você parar de apostar e ir trabalhar");
        }

    }
}