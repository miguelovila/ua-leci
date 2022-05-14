package aula03;
import java.util.Scanner;

public class Exec4 {
    public static void main(String[] args) {
        // Declaração de variáveis
        // Inicialização do scanner para leitura dos dados
        double val_inicial, sum_val, val_max, val_min, val_tmp;
        int num_val = 1;
        Scanner val_input = new Scanner(System.in);

        // Leitura dos dados

        // Não estou a contar o valor de término para a média.
        // Inicialização das variáveis, sendo que num_val já está inicializada na declaração.
        System.out.print("Adicionar um valor: ");
        val_inicial = sum_val = val_max = val_min = val_input.nextDouble();
        // Começa-se por verificar se o próximo valor introduzido é igual ao primeiro valor introduzido. Se for, para-se de recolher números.
        while (true) {
            System.out.print("Adicionar um valor: ");
            val_tmp = val_input.nextDouble();
            if (val_tmp == val_inicial) break;
            if (val_tmp < val_min) val_min = val_tmp;
            if (val_tmp > val_max) val_max = val_tmp;
            sum_val += val_tmp;
            num_val += 1;
        }
        val_input.close();

        // Apresentação do resultado
        System.out.println("============== RESULTADO ==============");
        System.out.println(String.format("Valor máximo: %.2f\nValor minimo: %.2f\nMédia dos valores: %.2f\nNúmero de valores: %d", val_max, val_min, sum_val/num_val, num_val));
    }
}