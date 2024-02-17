package school.sptech;

public class Calorias {
    public static void main(String[] args) {
        //Crie uma variável que armazene o tempo, em minutos (valor inteiro) que ele passou se aquecendo
        Integer minutosAquecimento = 10;

        //Crie uma variável que armazene o tempo em minutos (valor inteiro) que ele fez exercícios aeróbicos (correr, andar, pedalar etc)
        Integer minutosAerobico = 20;

        //Crie uma variável que armazene o tempo em minutos (valor inteiro) que ele fez exercícios de musculação
        Integer minutosMusculacao = 30;

        //Cada minuto de aquecimento faz perder 12 calorias
        Integer caloriasAquecimento = minutosAquecimento * 12;

        //Cada minuto de ex-aerobico faz perder 20 calorias
        Integer caloriasAerobico = minutosAerobico * 20;

        //Cada minuto de musculação faz perder 25 calorias
        Integer caloriasMusculacao = minutosMusculacao * 25;

        //Calcule o total de calorias perdidas
        Integer caloriasTotais = caloriasAquecimento + caloriasAerobico + caloriasMusculacao;

        //Calcule o total de minutos de exercícios
        Integer minutosTotais = minutosAquecimento + minutosAerobico + minutosMusculacao;

        //Imprima o total de calorias perdidas
        System.out.println("Olá, Jorge. Você fez um total de " + minutosTotais + " minutos de exercícios e perdeu cerca de " + caloriasTotais + " calorias.");
    }
}
