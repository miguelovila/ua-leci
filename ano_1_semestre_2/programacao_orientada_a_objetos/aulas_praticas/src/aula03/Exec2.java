package aula03;
import java.util.Scanner;
import java.lang.Math;

public class Exec2 {
    public static void main(String[] args) {
        // Declaração de variáveis
        // Inicialização do scanner para leitura dos dados
        int val;
        Scanner val_input = new Scanner(System.in);

        // Leitura dos dados
        System.out.print("Valor inicial: ");
        val = Math.abs(val_input.nextInt());
        val_input.close();

        // Apresentação do resultado
        System.out.println("============== RESULTADO ==============");
        // O operador -- utilizado após a variável val, permite primeiro o uso do valor atual da variável val e só depois faz o decremento. Uma solução mais simples, bUnita e elegante :) 
        while (val>=0) {
            System.out.println(val--);
        }
    }
}
