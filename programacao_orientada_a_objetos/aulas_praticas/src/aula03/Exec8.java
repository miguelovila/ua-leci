package aula03;
import java.lang.Math;

public class Exec8 {
    public static void main(String[] args) {
        // Declaração de variáveis
        // Parte-se do principio que os arrays têm a mesma dimensão
        double[] nota_t = {11.3, 16.7, 7.8, 10.6, 16.9, 1.9, 17.6, 0.7, 8.7, 19.2, 17.5, 11.6, 7.2, 1.9, 19.3, 0};
        double[] nota_p = {9.3, 5.1, 18.9, 15.9, 5.9, 12.7, 4.8, 12.1, 8.6, 1.4, 3.4, 11.4, 8.5, 1.4, 14.9, 12.1};

        // Cálculo da média e apresentação do resultado
        System.out.println("===== RESULTADO =====");
        System.out.println(" NotaT  NotaP  Pauta ");
        for (int i=0; i<nota_t.length; i++) {
            System.out.println(String.format("%6.1f %6.1f %6d", nota_t[i], nota_p[i],calcular(nota_t[i], nota_p[i])));
        }
    }

    //De forma a simplificar a solução decidi criar esta função que devolve 66 se alguma das componentes for menor que 7 ou a média na pauta.
    public static int calcular(double nota_t, double nota_p) {
        if (nota_t < 7 || nota_p < 7) return 66;
        return (int)Math.round(0.4*nota_t+0.6*nota_p); //Aqui é preciso fazer o cast do valor arrendondado já que a função Math.round() devolve um valor do tipo long e não int.
    }
}
