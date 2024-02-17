package school.sptech;

import java.util.concurrent.ThreadLocalRandom;

public class Votacao {
    public static void main(String[] args) {
        Integer votosMussarela = 0;
        Integer votosCalabresa = 0;
        Integer votosQuatroQueijos = 0;
        String saborMaisVotado = "";

        for (int i = 0; i < 10; i++) {
            Integer voto = ThreadLocalRandom.current().nextInt(1, 4);
            if(voto == 3) {
                votosMussarela++;
            } else if(voto == 2) {
                votosCalabresa++;
            } else {
                votosQuatroQueijos++;
            }
        }
        if(votosMussarela > votosCalabresa && votosMussarela > votosQuatroQueijos) {
            saborMaisVotado = "Mussarela";
        } else if(votosCalabresa > votosMussarela && votosCalabresa > votosQuatroQueijos) {
            saborMaisVotado = "Calabresa";
        } else if(votosQuatroQueijos > votosMussarela && votosQuatroQueijos > votosCalabresa){
            saborMaisVotado = "Quatro Queijos";
        }else{
            saborMaisVotado = "Empate";
        }
        System.out.println("Votos Mussarela: " + votosMussarela);
        System.out.println("Votos Calabresa: " + votosCalabresa);
        System.out.println("Votos Quatro Queijos: " + votosQuatroQueijos);
        System.out.println("O sabor mais votado foi: " + saborMaisVotado);
    }
}
