package aula02;
import java.util.Scanner;

public class Exec2 {
    public static void main(String[] args) {
        // Declaração de variáveis
        // Inicialização do scanner para leitura dos dados
        double val_celcius, val_fahren;
        Scanner val_input = new Scanner(System.in);

        // Leitura dos dados
        System.out.print("Temperatura em Graus Celcius: ");
        val_celcius = val_input.nextDouble();
        val_input.close();

        // Cálculo do valor em Fahrenheit --> F=1.8*C+32
        val_fahren = 1.8*val_celcius+32;

        // Apresentação do resultado
        System.out.println("============== RESULTADO ==============");
        System.out.println(String.format("Temperatura em Fahrenheit: %.2f", val_fahren));
    }
}
