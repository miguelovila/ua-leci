package aula04;

import java.util.Scanner;

public class Exec4 {

    public static void main(String[] args) {
        // Inicialização do scanner para leitura dos dados
        Scanner main_scanner = new Scanner(System.in);

        // Leitura dos dados e desenho do calendário
        desenharCalendario(receberMes(main_scanner), receberAno(main_scanner), receberInicio(main_scanner));
        main_scanner.close();
    }

    public static void desenharCalendario(int mes, int ano, int inicio) {
        // Declaração de um array constante com os meses. Ex: mês 6 vai buscar a posição
        // 6-1
        final String[] meses = { "January", "February", "March", "April", "May", "June",
                "July", "August", "September", "October", "November", "December" };

        System.out.println("=".repeat(20));
        System.out.println(textoCentrado(meses[mes - 1] + " " + ano));
        System.out.println("Su Mo Tu We Th Fr Sa");
        System.out.println(construtorDeString(mes, ano, inicio));
    }

    public static String construtorDeString(int mes, int ano, int inicio) {
        int dias = diasDoMes(mes, ano);
        int dia_semana = inicio;
        // Iniciamos a string com os espaços relativamente ao inicio do mês
        String dias_espacos = new String("   ".repeat(inicio - 1));

        // Completamos a string com os dias no formato e espaçamento correto. Tendo em
        // atenção que o formato depende do dia da semana: se dia_semana = 1 --> "-- "
        // se dia_semana = 7 -> "--\n" senão "-- "
        for (int i = 1; i <= dias; i++) {
            if (dia_semana == 1) {
                dias_espacos += String.format("%2d ", i);
                dia_semana++;
            } else if (dia_semana == 7) {
                dias_espacos += String.format("%2d\n", i);
                dia_semana = 1;
            } else {
                dias_espacos += String.format("%2d ", i);
                dia_semana++;
            }
        }
        return dias_espacos;
    }

    public static int receberMes(Scanner val_input) {
        int mes = 0;
        do {
            try {
                System.out.print("Mês: ");
                mes = val_input.nextInt();
                if (mes >= 1 && mes <= 12) {
                    break;
                } else {
                    System.out.println("ERRO: O valor introduzido tem de estar entre 1 e 12");
                }
            } catch (Exception e) {
                val_input.nextLine();
                System.out.println("ERRO: O valor introduzido tem de ser um número inteiro!");
            }
        } while (true);
        return mes;
    }

    public static int receberAno(Scanner val_input) {
        int ano = 0;
        do {
            try {
                System.out.print("Ano: ");
                ano = val_input.nextInt();
                break;
            } catch (Exception e) {
                val_input.nextLine();
                System.out.println("ERRO: O valor introduzido tem de ser um número inteiro!");
            }
        } while (true);
        return ano;
    }

    public static int receberInicio(Scanner val_input) {
        int inicio = 0;
        do {
            try {
                System.out.print("Começo do mês (1=Domingo,...,7=Sábado): ");
                inicio = val_input.nextInt();
                if (inicio >= 1 && inicio <= 7) {
                    break;
                } else {
                    System.out.println("ERRO: O valor introduzido tem de estar entre 1 e 7");
                }
            } catch (Exception e) {
                val_input.nextLine();
                System.out.println("ERRO: O valor introduzido tem de ser um número inteiro!");
            }
        } while (true);
        return inicio;
    }

    public static int diasDoMes(int mes, int ano) {
        // Determinação dos dias no mês
        if (mes == 2) {
            // se o mês corresponder a fevereiro, verifica-se se o ano é bissexto (fev tem
            // 29 dias) ou não (fev tem 28 dias).
            // determinar se o ano é bissexto ou não está bem explicado aqui:
            // https://www.geeksforgeeks.org/program-check-given-year-leap-year/
            if (ano % 400 == 0) {
                return 29;
            } else if (ano % 100 == 0) {
                return 28;
            }
            if (ano % 4 == 0) {
                return 29;
            } else {
                return 28;
            }
        } else {
            // se o mês corresponder ao mês 4, 6, 9 ou 11 então tem 30 dias, senão tem 31.
            if (mes == 4 || mes == 6 || mes == 9 || mes == 11) {
                return 30;
            } else {
                return 31;
            }
        }
    }

    public static String textoCentrado(String texto) {
        // Sabemos que temos 20 caracteres disponíveis para centrar o texto
        int padding = (20 - texto.length()) / 2;
        return " ".repeat(padding) + texto + " ".repeat(padding);
    }
}
