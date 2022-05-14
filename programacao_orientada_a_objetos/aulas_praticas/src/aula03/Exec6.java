package aula03;
import java.util.Scanner;

public class Exec6 {
    public static void main(String[] args) {
        //Declaração de constantes para cores de erro no console
        final String NORMAL = "\033[0m"; final String VERMELHO = "\033[0;31m"; final String VERMELHO_NEGRITO = "\033[1;31m";

        // Declaração de variáveis e constante
        // Inicialização do scanner para leitura dos dados
        int val_ano, val_mes, num_dias;
        Scanner val_input = new Scanner(System.in);

        // Leitura dos dados
        do{
            try {
                System.out.print("Ano: ");
                val_ano = val_input.nextInt();
                break;
            } catch (Exception e) {
                val_input.nextLine();
                System.out.println(VERMELHO_NEGRITO + "ERRO: " + VERMELHO + "O valor introduzido tem de ser um número inteiro!" + NORMAL);
            }
        }while(true);
        do{
            try {
                System.out.print("Mês: ");
                val_mes = val_input.nextInt();
                if (val_mes >= 1 && val_mes <= 12) {
                    break;
                } else {
                    System.out.println(VERMELHO_NEGRITO + "ERRO: " + VERMELHO + "O valor introduzido tem de estar entre 1 e 12" + NORMAL);
                }
            } catch (Exception e) {
                val_input.nextLine();
                System.out.println(VERMELHO_NEGRITO + "ERRO: " + VERMELHO + "O valor introduzido tem de ser um número inteiro!" + NORMAL);
            }
        }while(true);
        val_input.close();

        // Determinação dos dias no mês
        if (val_mes == 2){
            // se o mês corresponder a fevereiro, verifica-se se o ano é bissexto (fev tem 29 dias) ou não (fev tem 28 dias).
            // determinar se o ano é bissexto ou não está bem explicado aqui: https://www.geeksforgeeks.org/program-check-given-year-leap-year/
            if (val_ano % 400 == 0) {
                num_dias = 29;
            } else if (val_ano % 100 == 0) {
                num_dias = 28;
            } if (val_ano % 4 == 0) {
                num_dias = 29;
            } else {
                num_dias = 28;
            }
        } else {
            // se o mês corresponder ao mês 4, 6, 9 ou 11 então tem 30 dias, senão tem 31.
            if (val_mes==4 || val_mes==6 || val_mes==9 || val_mes==11) {
                num_dias = 30;
            } else {
                num_dias = 31;
            }
        }
    
        // Apresentação do resultado
        System.out.println("=============== RESULTADO ===============");
        System.out.println(String.format("O mês %02d do ano %d tem %02d dias.", val_mes, val_ano, num_dias));
    }
}
