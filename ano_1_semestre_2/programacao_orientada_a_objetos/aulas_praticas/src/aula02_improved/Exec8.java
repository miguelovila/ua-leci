package aula02_improved;
import java.util.Scanner;
import java.lang.Math;

public class Exec8 {
    public static void main(String[] args) {
        //Declaração de constantes para cores de erro no console
        final String NORMAL = "\033[0m"; final String VERMELHO = "\033[0;31m"; final String VERMELHO_NEGRITO = "\033[1;31m";

        // Declaração das variáveis
        // Inicialização do scanner para leitura dos dados
        double a, b, c, d;
        Scanner val_input = new Scanner(System.in);

        // Leitura dos dados
        do{
            try {
                System.out.print("Cateto A: ");
                a = val_input.nextDouble();
                break;
            } catch (Exception e) {
                val_input.nextLine();
                System.out.println(VERMELHO_NEGRITO + "ERRO: " + VERMELHO + "O valor introduzido tem de ser um número!" + NORMAL);
            }
        }while(true);
        do{
            try {
                System.out.print("Cateto B: ");
                b = val_input.nextDouble();
                break;
            } catch (Exception e) {
                val_input.nextLine();
                System.out.println(VERMELHO_NEGRITO + "ERRO: " + VERMELHO + "O valor introduzido tem de ser um número!" + NORMAL);
            }
        }while(true);
        val_input.close();

        // Cálculo da hipotenusa e do ângulo
        c = Math.sqrt(Math.pow(a,2)+Math.pow(b,2));
        d = Math.toDegrees(Math.atan(b/a));

        // Apresentação do resultado
        System.out.println("============== RESULTADO ==============");
        System.out.println(String.format("Hipotenusa: %.2f" , c));
        System.out.println(String.format("Ângulo entre cateto A e hipotenusa: %.2f" , d));
    }
}
