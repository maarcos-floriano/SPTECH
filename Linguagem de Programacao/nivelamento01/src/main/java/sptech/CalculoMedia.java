package school.sptech;

public class CalculoMedia {
    public static void main(String[] args) {
        //Crie uma variável que armazene o nome e duas notas ao usuário.
        String nome = "Jorge";
        Double nota1 = 7.5;
        Double nota2 = 8.0;

        //As notas são números reais.
        //Calcule a média entre as notas (Dica: é da mesma forma como se faz em JavaScript)
        Double media = (nota1 + nota2) / 2;

        //Exiba uma frase como esta: Olá, NOME. Sua média foi de MEDIA
        System.out.println("Olá, " + nome + ". Sua média foi de " + media);
    }
}
