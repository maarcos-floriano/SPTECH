package school.sptech;

public class CalculoDeRenda {
    public static void main(String[] args) {
        Integer filhos0a3 = 2;
        Integer filhos4a16 = 3;
        Integer filhos17a18 = 1;
        Double bolsaMenos4 = filhos0a3 * 25.12;
        Double bolsaMenos16 = filhos4a16 * 15.88;
        Double bolsaMenos18 = filhos17a18 * 12.44;
        Double bolsaTotal = bolsaMenos4 + bolsaMenos16 + bolsaMenos18;
        Integer filhosTotal = filhos0a3 + filhos4a16 + filhos17a18;

        System.out.println("Você tem um total de " + filhosTotal + " filhos e vai receber R$" + bolsaTotal + " de bolsa");

    }
}
