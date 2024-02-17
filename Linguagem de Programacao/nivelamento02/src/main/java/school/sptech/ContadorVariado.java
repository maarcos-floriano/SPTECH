package school.sptech;

public class ContadorVariado {
    public static void main(String[] args) {
        for (Double i = 0.15; i < 5.0; i += 0.15) {
            //Mostre dois nuemeros após o ponto decimal
            System.out.println(String.format("%.2f", i));
        }
    }
}
