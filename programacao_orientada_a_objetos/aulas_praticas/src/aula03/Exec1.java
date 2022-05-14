package aula03;
import java.util.Scanner;
import java.lang.Math;

public class Exec1 {
    public static void main(String[] args) {
        //Declaração de constantes para cores de erro no console
        final String NORMAL = "\033[0m"; final String VERMELHO = "\033[0;31m"; final String VERMELHO_NEGRITO = "\033[1;31m";
        
        // Declaração de variáveis
        // Inicialização do scanner para leitura dos dados
        double val_p, val_t; //prática , teórica
        Scanner val_input = new Scanner(System.in);

        // Leitura dos dados
        // Quando o scanner espera o nextDouble, se for introduzido algo que não um número (ex: uma string) é levantado um erro de execução conhecido por exception que interrompe a execução do programa. O try, como o nome indica, TENTA executar as instruções. Se forem apanhados exceptions, as instruções depois da exception não são executadas e o programa passa a executar as instruções dentro do bloco catch.
        // De uma forma muitísimo simplista, pode-se pensar como se fosse um if mas para erros: o programa tenta executar um conjunto de instruções. se ocorrer um erro avança imediatamente para o bloco de instruções catch. se não ocorrer um erro o bloco catch nunca é executado.
        do{
            try {
                System.out.print("Componente teórica [0,20]: ");
                val_t = val_input.nextDouble();
                if (val_t < 0 || val_t > 20) {
                    System.out.println(VERMELHO_NEGRITO + "ERRO: " + VERMELHO + "O valor introduzido tem de estar compreendido entre 0 e 20!" + NORMAL);
                    continue;
                }
                break;
            } catch (Exception e) {
                val_input.nextLine();
                System.out.println(VERMELHO_NEGRITO + "ERRO: " + VERMELHO + "O valor introduzido tem de ser um número!" + NORMAL);
            }
        }while(true);
        do{
            try {
                System.out.print("Componente prática [0,20]: ");
                val_p = val_input.nextDouble();
                if (val_p < 0 || val_p > 20) {
                    System.out.println(VERMELHO_NEGRITO + "ERRO: " + VERMELHO + "O valor introduzido tem de estar compreendido entre 0 e 20!" + NORMAL);
                    continue;
                }
                break;
            } catch (Exception e) {
                val_input.nextLine();
                System.out.println(VERMELHO_NEGRITO + "ERRO: " + VERMELHO + "O valor introduzido tem de ser um número!" + NORMAL);
            }
        }while(true);
        val_input.close();

        // Cálculo da média e apresentação do resultado
        System.out.println("============== RESULTADO ==============");
        if (val_t < 7 || val_p < 7) {
            System.out.println("66");
        } else {
            System.out.println(Math.round(0.4*val_t+0.6*val_p));
        }
    }
}
