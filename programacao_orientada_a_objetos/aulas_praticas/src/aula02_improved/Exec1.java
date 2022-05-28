package aula02_improved;
import java.util.Scanner;

public class Exec1 {
    public static void main(String[] args) {
        //Declaração de constantes para cores de erro no console
        final String NORMAL = "\033[0m"; final String VERMELHO = "\033[0;31m"; final String VERMELHO_NEGRITO = "\033[1;31m";
        
        // Declaração de variáveis
        // Inicialização do scanner para leitura dos dados
        double val_km, val_miles;
        Scanner val_input = new Scanner(System.in);

        // Leitura dos dados
        do{
            try {
                System.out.print("Distância em Kilómetros: ");
                val_km = val_input.nextDouble();
                break;
            } catch (Exception e) {
                val_input.nextLine();
                System.out.println(VERMELHO_NEGRITO + "ERRO: " + VERMELHO + "O valor introduzido tem de ser um número!" + NORMAL);
            }
        }while(true);
        val_input.close();

        // Cálculo do valor em milhas
        val_miles = val_km/1.609;

        // Apresentação do resultado
        System.out.println("============== RESULTADO ==============");
        System.out.println(String.format("Distância em milhas: %.2f", val_miles));
    }
}
