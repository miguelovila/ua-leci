package aula02_improved;
import java.util.Scanner;

public class Exec3 {
    public static void main(String[] args) {
        //Declaração de constantes para cores de erro no console
        final String NORMAL = "\033[0m"; final String VERMELHO = "\033[0;31m"; final String VERMELHO_NEGRITO = "\033[1;31m";

        // Declaração de variáveis
        // Inicialização do scanner para leitura dos dados
        double val_massa, tmp_inicial, tmp_final, val_energia;
        Scanner val_input = new Scanner(System.in);

        // Leitura dos dados
        do{
            try {
                System.out.print("Massa de água (Kg): ");
                val_massa = val_input.nextDouble();
                break;
            } catch (Exception e) {
                val_input.nextLine();
                System.out.println(VERMELHO_NEGRITO + "ERRO: " + VERMELHO + "O valor introduzido tem de ser um número!" + NORMAL);
            }
        }while(true);
        do{
            try {
                System.out.print("Temperatura inicial (ºC): ");
                tmp_inicial = val_input.nextDouble();
                break;
            } catch (Exception e) {
                val_input.nextLine();
                System.out.println(VERMELHO_NEGRITO + "ERRO: " + VERMELHO + "O valor introduzido tem de ser um número!" + NORMAL);
            }
        }while(true);
        do{
            try {
                System.out.print("Temperatura final (ºC): ");
                tmp_final = val_input.nextDouble();
                break;
            } catch (Exception e) {
                val_input.nextLine();
                System.out.println(VERMELHO_NEGRITO + "ERRO: " + VERMELHO + "O valor introduzido tem de ser um número!" + NORMAL);
            }
        }while(true);
        val_input.close();

        // Cáculo da energia necessária em Joules
        val_energia = val_massa*(tmp_final-tmp_inicial)*4184;

        // Apresentação do resultado
        System.out.println("============== RESULTADO ==============");
        System.out.println(String.format("Energia necessária (J): %.2f" , val_energia));
    }
}
