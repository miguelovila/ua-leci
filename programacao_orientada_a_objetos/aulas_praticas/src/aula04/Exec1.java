package aula04;
import java.util.Scanner;

public class Exec1 {
    
    public static void main(String[] args) {
        // Declaração de variáveis
        // Inicialização do scanner para leitura dos dados
        Scanner val_input = new Scanner(System.in);
        String  str_input = new String();

        // Leitura dos dados
        System.out.print("Digite uma frase, palavra ou parágrafo: ");
        str_input = val_input.next();

        // Apresentação do resultado
        System.out.println("============== RESULTADO ==============");
        System.out.println("            Minúsculas: " + str_input.toLowerCase());
        System.out.println("            Maiúsculas: " + str_input.toUpperCase());
        System.out.println("       Último caracter: " + str_input.charAt(str_input.length()-1));
        System.out.println("Primeiros 3 caracteres: " + str_input.substring(0, 3));
        System.out.println("    String repetida 2x: " + str_input.repeat(2));
        System.out.println("            Contém 'a'? " + str_input.contains("a"));

        val_input.close();
    }

}
