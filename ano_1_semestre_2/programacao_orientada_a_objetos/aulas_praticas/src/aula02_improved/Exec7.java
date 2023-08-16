package aula02_improved;
import java.util.Scanner;
import java.lang.Math;

public class Exec7 {
    public static void main(String[] args) {
        //Declaração de constantes para cores de erro no console
        final String NORMAL = "\033[0m"; final String VERMELHO = "\033[0;31m"; final String VERMELHO_NEGRITO = "\033[1;31m";

        // Declaração dos pontos com coordenadas organizadas em arrays
        // Inicialização do scanner para leitura dos dados
        double[] p1 = new double[2];
        double[] p2 = new double[2];
        double[] v  = new double[2];
        double distancia = 0;
        Scanner val_input = new Scanner(System.in);

        // Leitura dos dados
        do{
            try {
                System.out.print("Ponto P1 (x y): ");
                p1[0] = val_input.nextDouble();
                p1[1] = val_input.nextDouble();
                break;
            } catch (Exception e) {
                val_input.nextLine();
                System.out.println(VERMELHO_NEGRITO + "ERRO: " + VERMELHO + "O valor introduzido tem de ser um número!" + NORMAL);
            }
        }while(true);
        do{
            try {
                System.out.print("Ponto P2 (x y): ");
                p2[0] = val_input.nextDouble();
                p2[1] = val_input.nextDouble();
                break;
            } catch (Exception e) {
                val_input.nextLine();
                System.out.println(VERMELHO_NEGRITO + "ERRO: " + VERMELHO + "O valor introduzido tem de ser um número!" + NORMAL);
            }
        }while(true);
        val_input.close();

        // Cálculo da norma do vetor v
        v[0] = p1[0]-p2[0];
        v[1] = p1[1]-p2[1];
        distancia = Math.sqrt(Math.pow(v[0],2)+Math.pow(v[1],2));

        // Apresentação do resultado
        System.out.println("============== RESULTADO ==============");
        System.out.println(String.format("Distância entre P1 e P2: %.2f",distancia));
    }
}
