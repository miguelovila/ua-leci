package aula02;
import java.util.Scanner;

public class Exec4 {
    public static void main(String[] args) {
        // Declaração de variáveis e constante
        // Inicialização do scanner para leitura dos dados
        double val_balanco, val_juros;
        final int num_meses = 3;
        Scanner val_input = new Scanner(System.in);

        // Leitura dos dados
        System.out.print("Investimento inicial (EUR): ");
        val_balanco = val_input.nextDouble();
        System.out.print("Taxa de juros (%): ");
        val_juros = val_input.nextDouble();
        val_input.close();

        // Cáculo dos ganhos ao fim de *num_meses meses
        for (int i=1; i<= num_meses; i++) {
            val_balanco += val_balanco*(val_juros/100);
        }

        // Apresentação do resultado
        System.out.println("=============== RESULTADO ===============");
        System.out.println(String.format("Balanço ao fim de %d meses (EUR): %.2f", num_meses , val_balanco));
    }
}
