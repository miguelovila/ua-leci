package aula05;
import java.util.Scanner;

public class Exec1 {
    
    public static void main(String[] args) {
        // Inicialização do scanner para leitura dos dados e da data com um valor inválido para garantir que seja introduzido uma data válida
        Scanner main_scanner = new Scanner(System.in);
        Data data = new Data(0, 0, 0);
        int escolha = 0;
        do {
            System.out.println("===============================");
            System.out.println("1 - Introduzir data");
            System.out.println("2 - Mostrar a data atual");
            System.out.println("3 - Incrementar a data (+1 dia)");
            System.out.println("4 - Decrementar a data (-1 dia)");
            System.out.println("5 - Sair");
            System.out.print("Opção: ");
            escolha = main_scanner.nextInt();
            main_scanner.nextLine();
            if (escolha == 1) definirData(data, main_scanner);
            if (escolha == 2) mostrarData(data);
            if (escolha == 3) data.incrementarDias(1);
            if (escolha == 4) data.decremenarDias(1);
        } while(escolha!=5);
        main_scanner.close();
    }

    public static void definirData(Data data, Scanner scanner) {
        do{
            System.out.println("Introduza uma data válida (dd/mm/aaaa): ");
            String data_string = scanner.nextLine();
            String[] data_array = data_string.split("/");
            data.setData(Integer.parseInt(data_array[0]), Integer.parseInt(data_array[1]), Integer.parseInt(data_array[2]));
            if (data.isDataValida()){
                break;
            }else {
                System.out.println("Data inválida!");
            }
        }while(true);
    }

    public static void mostrarData(Data data) {
        System.out.println(data.getData());
    }
    
}
