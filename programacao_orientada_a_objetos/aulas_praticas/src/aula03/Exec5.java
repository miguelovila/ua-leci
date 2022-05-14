package aula03;
import java.util.Scanner;

public class Exec5 {
    public static void main(String[] args) {
        //Declaração de constantes para cores de erro no console
        final String NORMAL = "\033[0m"; final String VERMELHO = "\033[0;31m"; final String VERMELHO_NEGRITO = "\033[1;31m";

        // Declaração de variáveis e constante
        // Inicialização do scanner para leitura dos dados
        double val_balanco, val_juros;
        final int num_meses = 12;
        Scanner val_input = new Scanner(System.in);

        // Leitura dos dados
        do{
            try {
                System.out.print("Investimento inicial (EUR): ");
                val_balanco = val_input.nextDouble();
                if (val_balanco % 1000 == 0){
                    break;
                } else {
                    System.out.println(VERMELHO_NEGRITO + "ERRO: " + VERMELHO + "O valor introduzido tem de ser múltiplo de 1000!" + NORMAL);
                }
            } catch (Exception e) {
                val_input.nextLine();
                System.out.println(VERMELHO_NEGRITO + "ERRO: " + VERMELHO + "O valor introduzido tem de ser um número!" + NORMAL);
            }
        }while(true);
        do{
            try {
                System.out.print("Taxa de juros (%): ");
                val_juros = val_input.nextDouble();
                if (val_juros <= 5 && val_juros >= 0) {
                    break;
                } else {
                    System.out.println(VERMELHO_NEGRITO + "ERRO: " + VERMELHO + "O valor introduzido tem de estar entre 0% e 5%" + NORMAL);
                }
            } catch (Exception e) {
                val_input.nextLine();
                System.out.println(VERMELHO_NEGRITO + "ERRO: " + VERMELHO + "O valor introduzido tem de ser um número!" + NORMAL);
            }
        }while(true);
        val_input.close();

        // Cáculo dos ganhos ao fim de *num_meses meses
        // Apresentação do resultado
        System.out.println("=============== RESULTADO ===============");
        for (int i=1; i<= num_meses; i++) {
            val_balanco += val_balanco*(val_juros/100);
            System.out.println(String.format("Balanço no fim do mês %02d (EUR): %.2f", i , val_balanco));
        }
    }
}
