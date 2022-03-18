package aula02;
import java.util.Scanner;

public class Exec6 {
    public static void main(String[] args) {
        // Declaração de variáveis
        // Inicialização do scanner para leitura dos dados
        int segundos, horas, minutos;
        Scanner val_input = new Scanner(System.in);

        // Leitura dos dados
        System.out.print("Tempo (s): ");
        segundos = val_input.nextInt();
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
