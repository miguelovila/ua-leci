package aula02;
import java.util.Scanner;

public class Exec3 {
    public static void main(String[] args) {
        // Declaração de variáveis
        // Inicialização do scanner para leitura dos dados
        double val_massa, tmp_inicial, tmp_final, val_energia;
        Scanner val_input = new Scanner(System.in);

        // Leitura dos dados
        System.out.print("Massa de água (Kg): ");
        val_massa = val_input.nextDouble();
        System.out.print("Temperatura inicial (ºC): ");
        tmp_inicial = val_input.nextDouble();
        System.out.print("Temperatura final (ºC): ");
        tmp_final = val_input.nextDouble();
        val_input.close();

        // Cáculo da energia necessária em Joules
        val_energia = val_massa*(tmp_final-tmp_inicial)*4184;

        // Apresentação do resultado
        System.out.println("============== RESULTADO ==============");
        System.out.println(String.format("Energia necessária (J): %.2f" , val_energia));
    }
}
