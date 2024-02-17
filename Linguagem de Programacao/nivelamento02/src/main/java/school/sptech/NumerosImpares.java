package school.sptech;

public class NumerosImpares {
    public static void main(String[] args) {
        //- Usando “for”, exiba todos os números ímpares entre 0 e 90.
        for (int i = 0; i <= 90; i++) {
            if (i % 2 != 0) {
                System.out.println(i);
            }
        }
    }
}
