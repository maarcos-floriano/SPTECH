package school.sptech;

public class NumerosPares {
    public static void main(String[] args) {
        // - Usando “for”, exiba todos os números pares entre 0 e 40.
        Integer i = 0;
        while (i <= 40) {
            if (i % 2 == 0) {
                System.out.println(i);
            }
            i++;
        }
    }
}
