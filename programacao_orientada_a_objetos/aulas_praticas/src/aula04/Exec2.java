package aula04;
import java.util.Scanner;

public class Exec2 {
    
    public static void main(String[] args) {
        // Declaração de variáveis
        // Inicialização do scanner para leitura dos dados
        Scanner val_input = new Scanner(System.in);
        String  str_input = new String();

        // Leitura dos dados
        System.out.print("Digite uma frase: ");
        str_input = val_input.nextLine();

        // Apresentação do resultado
        System.out.println("============== RESULTADO ==============");
        System.out.println("Número de caracteres numéricos: " + contarDigitos(str_input));
        System.out.println("             Número de espaços: " + contarCaracter(str_input, ' '));
        System.out.println("          Só contém minúsculas? " + soMinusculas(str_input));
        System.out.println("         Sem espaços repetidos: " + removerEspacosExtra(str_input));
        System.out.println("                  É palíndromo? " + ePalindromo(str_input));


        val_input.close();
    }

    public static int contarDigitos(String str_input) {
        int ocorrencias = 0;
        for (int i = 0; i < str_input.length(); i++) {
            if (Character.isDigit(str_input.charAt(i))) ocorrencias++;
        }
        return ocorrencias;
    }

    // Optei por criar esta função que recebe como argumento o caracter-alvo de modo a torna-la mais flexível
    public static int contarCaracter(String str_input, char caracter) {
        int ocorrencias = 0;
        for (int i = 0; i < str_input.length(); i++) {
            if (str_input.charAt(i) == caracter) ocorrencias++;
        }
        return ocorrencias;
    }

    // Também se podia fazer uma comparação caracter a caracter
    public static boolean soMinusculas(String str_input) {
        if (str_input.toLowerCase().equals(str_input)) return true;
        return false;
    }

    // str_input.trim() remove espaços antes e depois da string "   abcd   cd  " -> "abcd   cd"
    // " +" é uma expressão regular que identifica onde estão todas as ocorrências em que se encontram 2 ou mais espaços seguidos
    // .replaceAll(" +", " ") substitui todas essas ocorrências por um único espaço
    public static String removerEspacosExtra(String str_input) {
        return str_input.trim().replaceAll(" +", " ");
    }

    // Comparo o primeiro caracter com o último. Basta um ser diferente para devolver falso.
    // Porque é que o i vai só até str_input.length()/2? Simples, não há necessidade comparar mais que a primeira metade de índices, já que as avaliações da outra metade seriam iguais. Numa string com bastantes caracteres isto permite ser muito mais eficiente. 
    public static boolean ePalindromo(String str_input) {
        for (int i=1; i < str_input.length()/2; i++) {
            if (str_input.charAt(i-1) != str_input.charAt(str_input.length()-i)) return false;
        }
        return true;
    }

}
