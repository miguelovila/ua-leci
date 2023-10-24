package aula02_improved;
import java.util.Scanner;

public class Exec4 {
    public static void main(String[] args) {
        //Declaração de constantes para cores de erro no console
        final String NORMAL = "\033[0m"; final String VERMELHO = "\033[0;31m"; final String VERMELHO_NEGRITO = "\033[1;31m";

        // Declaração de variáveis e constante
        // Inicialização do scanner para leitura dos dados
        double val_balanco, val_juros;
        final int num_meses = 3;
        Scanner val_input = new Scanner(System.in);

        // Leitura dos dados
        do{
            try {
                System.out.print("Investimento inicial (EUR): ");
                val_balanco = val_input.nextDouble();
                break;
            } catch (Exception e) {
                val_input.nextLine();
                System.out.println(VERMELHO_NEGRITO + "ERRO: " + VERMELHO + "O valor introduzido tem de ser um número!" + NORMAL);
            }
        }while(true);
        do{
            try {
                System.out.print("Taxa de juros (%): ");
                val_juros = val_input.nextDouble();
                break;
            } catch (Exception e) {
                val_input.nextLine();
                System.out.println(VERMELHO_NEGRITO + "ERRO: " + VERMELHO + "O valor introduzido tem de ser um número!" + NORMAL);
            }
        }while(true);
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
