package aula02_improved;
import java.util.Scanner;

public class Exec2 {
    public static void main(String[] args) {
        //Declaração de constantes para cores de erro no console
        final String NORMAL = "\033[0m"; final String VERMELHO = "\033[0;31m"; final String VERMELHO_NEGRITO = "\033[1;31m";

        // Declaração de variáveis
        // Inicialização do scanner para leitura dos dados
        double val_celcius, val_fahren;
        Scanner val_input = new Scanner(System.in);

        // Leitura dos dados
        do{
            try {
                System.out.print("Temperatura em Graus Celcius: ");
                val_celcius = val_input.nextDouble();
                break;
            } catch (Exception e) {
                val_input.nextLine();
                System.out.println(VERMELHO_NEGRITO + "ERRO: " + VERMELHO + "O valor introduzido tem de ser um número!" + NORMAL);
            }
        }while(true);
        val_input.close();

        // Cálculo do valor em Fahrenheit --> F=1.8*C+32
        val_fahren = 1.8*val_celcius+32;

        // Apresentação do resultado
        System.out.println("============== RESULTADO ==============");
        System.out.println(String.format("Temperatura em Fahrenheit: %.2f", val_fahren));
    }
}
