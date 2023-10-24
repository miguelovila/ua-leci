package aula04;
import java.util.Scanner;

public class Exec3 {
    
    public static void main(String[] args) {
        // Declaração de variáveis
        // Inicialização do scanner para leitura dos dados
        Scanner val_input = new Scanner(System.in);
        String  str_input = new String();
        String  acronimo  = new String("");

        // Leitura dos dados
        System.out.print("Digite uma frase: ");
        str_input = val_input.nextLine();

        // str_input.split(" ") cria um array em que cada elemnto corresponde a uma palavra a partir da frase dada. Depois itera pelo array chamando palavra a cada elemento. Se esse elemento tiver 3 ou mais caracteres, o primeiro caracter da palavra é convertido em maiúscula e adicionado ao acrónimo.
        // Esta forma de iterar por arrays corresponde à estrutura "for palavra in lista_qualquer" do python.
        for (String palavra : str_input.split(" ")) { 
            if (palavra.length()>=3) acronimo = acronimo + Character.toUpperCase(palavra.charAt(0));
        }

        // Apresentação do resultado
        System.out.println("============== RESULTADO ==============");
        System.out.println("Acrónimo: " + acronimo);

        val_input.close();
    }

}
