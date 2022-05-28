package aula02_improved;
import java.util.Scanner;

public class Exec6 {
    public static void main(String[] args) {
        //Declaração de constantes para cores de erro no console
        final String NORMAL = "\033[0m"; final String VERMELHO = "\033[0;31m"; final String VERMELHO_NEGRITO = "\033[1;31m";

        // Declaração de variáveis
        // Inicialização do scanner para leitura dos dados
        int segundos, horas, minutos;
        Scanner val_input = new Scanner(System.in);

        // Leitura dos dados
        do{
            try {
                System.out.print("Tempo (s): ");
                segundos = val_input.nextInt();
                break;
            } catch (Exception e) {
                val_input.nextLine();
                System.out.println(VERMELHO_NEGRITO + "ERRO: " + VERMELHO + "O valor introduzido tem de ser um número!" + NORMAL);
            }
        }while(true);
        val_input.close();

        // Conversão em hh:mm:ss
        horas = segundos/3600;
        segundos -= horas*3600;
        minutos = segundos/60;
        segundos -= minutos*60;

        // Apresentação do resultado
        System.out.println("============== RESULTADO ==============");
        System.out.println(String.format("%02d:%02d:%02d",horas,minutos,segundos));
    }
}
