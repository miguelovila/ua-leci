package aula03;
import java.util.Scanner;
import java.lang.Math;

public class Exec3 {
    public static void main(String[] args) {
        // Declaração de variáveis
        // Inicialização do scanner para leitura dos dados
        int val, ctr;
        boolean e_primo = true;
        Scanner val_input = new Scanner(System.in);

        // Leitura dos dados
        System.out.print("Valor para avaliar: ");
        val = Math.abs(val_input.nextInt());
        ctr = val;
        val_input.close();

        // Avaliação do número
        while (ctr>2) {
            if (val%--ctr == 0) {
                e_primo = false;
                break;
            }
        }

        // Apresentação do resultado
        System.out.println("============== RESULTADO ==============");
        if (e_primo) {
            System.out.println(String.format("%d é número primo.", val));
        } else {
            System.out.println(String.format("%d não é número primo.", val));
        }
    }
}