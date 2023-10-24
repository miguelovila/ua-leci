package aula05;
import java.util.Scanner;

public class Exec2 {
    
    public static void main(String[] args) {
        // Inicialização do scanner para leitura dos dados e da data com um valor inválido para garantir que seja introduzido uma data válida
        Scanner main_scanner = new Scanner(System.in);
        Calendario calendario = new Calendario(0,0);
        int escolha = 0;
        do {
            System.out.println("===============================");
            System.out.println("1 - Novo Calendário");
            System.out.println("2 - Imprimir mês");
            System.out.println("3 - Imprimir ano");
            System.out.println("4 - Sair");
            System.out.print("Opção: ");
            escolha = main_scanner.nextInt();
            main_scanner.nextLine();
            if (escolha == 1) criarCalendario(calendario, main_scanner);
            if (escolha == 2) imprimirMes(calendario, main_scanner);
            if (escolha == 3) imprimirAno(calendario);
        } while(escolha!=4);
        main_scanner.close();
    }

    public static void criarCalendario(Calendario calendario, Scanner scanner) {
        do{
            try {
                System.out.print("Introduza um ano: ");
                calendario.setAno(scanner.nextInt());
                break;
            } catch(Exception e) {
                scanner.nextLine();
                System.out.println("ERRO: O valor introduzido tem de ser inteiro!");
            }
        }while(true);
        do {
            try {
                System.out.print("Começo do mês (1=Domingo,...,7=Sábado): ");
                calendario.setDiaInicioAno(scanner.nextInt());
                if (calendario.getDiaInicioAno() >= 1 && calendario.getDiaInicioAno() <= 7) {
                    break;
                } else {
                    System.out.println("ERRO: O valor introduzido tem de estar entre 1 e 7");
                }
            } catch (Exception e) {
                scanner.nextLine();
                System.out.println("ERRO: O valor introduzido tem de ser um número inteiro!");
            }
        } while (true);
    }

    public static void imprimirMes(Calendario calendario, Scanner scanner) {
        int mes = 0;
        do {
            try {
                System.out.print("Introduza um mês [1,12]: ");
                mes = scanner.nextInt();
                if (mes >= 1 && mes <= 12) {
                    break;
                } else {
                    System.out.println("ERRO: O valor introduzido tem de estar entre 1 e 12");
                }
            } catch (Exception e) {
                scanner.nextLine();
                System.out.println("ERRO: O valor introduzido tem de ser um número inteiro!");
            }
        } while (true);

        System.out.println(calendario.calendarioDoMes(mes));
    }

    public static void imprimirAno(Calendario calendario) {
        System.out.print(calendario.toString());
    }

}
