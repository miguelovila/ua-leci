package aula02;
import java.util.Scanner;

public class Exec1 {
    public static void main(String[] args) {
        // Declaração de variáveis
        // Inicialização do scanner para leitura dos dados
        double val_km, val_miles;
        Scanner val_input = new Scanner(System.in);

        // Leitura dos dados
        System.out.print("Distância em Kilómetros: ");
        val_km = val_input.nextDouble();
        val_input.close();

        // Cálculo do valor em milhas
        val_miles = val_km/1.609;

        // Apresentação do resultado
        System.out.println("============== RESULTADO ==============");
        System.out.println(String.format("Distância em milhas: %.2f", val_miles));
    }
}
