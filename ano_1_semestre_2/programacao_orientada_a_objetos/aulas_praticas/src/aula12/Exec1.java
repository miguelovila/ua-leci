package aula12;

import java.util.Scanner;
import java.io.FileReader;
import java.io.IOException;
import java.util.Set;
import java.util.TreeSet;

public class Exec1 {
    
    public static void main(String[] args) throws IOException {
        Set<String> palavras = new TreeSet<>();
        int num_palavras = 0;
        // Carregar palavras a partir de um ficheiro
        FileReader file_reader = new FileReader("src/aula11/major.txt");
        Scanner file_scanner = new Scanner(file_reader);
        String temp_palavras = "";
        while (file_scanner.hasNext()) temp_palavras = temp_palavras + " " + file_scanner.next();
        file_scanner.close(); file_reader.close();
        temp_palavras = temp_palavras.toLowerCase().replaceAll("[\\t\\n\\.\\,\\:\\'\\‘\\’\\;\\?\\!\\-\\*\\{\\}\\=\\+\\&\\/\\\\(\\)\\[\\]\\”\\“\\\"\\']", " ").trim();
        for (String palavra : temp_palavras.split("\\s+")) {
            palavras.add(palavra);
            num_palavras++;
        }
        // Imprimir resultados
        System.out.println("Numero total de palavras: " + num_palavras);
        System.out.println("Numero de diferentes palavras: " + palavras.size());
    }

}
