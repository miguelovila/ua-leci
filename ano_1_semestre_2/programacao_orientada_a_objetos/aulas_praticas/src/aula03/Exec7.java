package aula03;
import java.util.Scanner;
import java.util.Random;

public class Exec7 {
    public static void main(String[] args) {
        //Declaração de constantes para cores de erro no console
        final String NORMAL = "\033[0m"; final String VERMELHO = "\033[0;31m"; final String VERMELHO_NEGRITO = "\033[1;31m";

        // Inicialização do scanner para leitura dos dados
        // Declaração de variáveis
        Random gerador = new Random();
        Scanner val_input = new Scanner(System.in);
        String resposta;
        int val_rnd, val_recebido, num_tentativas;
        boolean continuar = true;
        do{
            System.out.println("=============== ========= ===============");
            // Porquê gerador.nextInt(100)+1 ?
            // gerador.nextIndadost(100) vai gerar números entre 0 e 99. Para este jogo queremos números entre 1 e 100, então adiciona-se 1 ao número random.
            val_rnd = gerador.nextInt(100) + 1;
            val_recebido = num_tentativas = 0;
            // Leitura dos valores
            do{
                do{
                    try {
                        System.out.print("Adivinhe o número [1;100]: ");
                        val_recebido = val_input.nextInt();
                        if (val_recebido >= 1 && val_recebido <= 100) {
                            num_tentativas++;
                            break;
                        } else {
                            System.out.println(VERMELHO_NEGRITO + "ERRO: " + VERMELHO + "O valor introduzido tem de estar entre 1 e 100" + NORMAL);
                        }
                    } catch (Exception e) {
                        val_input.nextLine();
                        System.out.println(VERMELHO_NEGRITO + "ERRO: " + VERMELHO + "O valor introduzido tem de ser um número inteiro!" + NORMAL);
                    }
                }while(true);
                if (val_recebido>val_rnd) {
                    System.out.println("O valor gerado é inferior.");
                }
                if (val_recebido<val_rnd) {
                    System.out.println("O valor gerado é superior.");
                }
            }while(val_recebido!=val_rnd);
            // Apresentação do resultado do jogo
            System.out.println("=============== GAME OVER ===============");
            System.out.println(String.format("Tentativas: %d.", num_tentativas));
            System.out.println("=============== ========= ===============");
            val_input.nextLine(); //Limpar o buffer do scanner
            System.out.print("Deseja continuar? (S/N) ");
            resposta = val_input.nextLine().toLowerCase();
            // Em java não podemos comparar strings com o operador ==, temos de usar a função .equals("qualquer cena")
            if (!(resposta.equals("s")) && !(resposta.equals("sim"))) {
                continuar = false;
            };
        }while(continuar);
        val_input.close();
    }
}
