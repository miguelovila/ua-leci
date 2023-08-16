package aula11;

import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.TreeMap;
import java.util.Map;
import java.util.Scanner;

public class Exec1 {
    public static void main(String[] args) throws IOException {
        ArrayList<String> lista = new ArrayList<>();
        Map<String, Map<String, Integer>> mapa = new TreeMap<>();

        //carregarLista(lista, "src/aula11/prompt.txt");
        carregarLista(lista, "src/aula11/major.txt");
        
        // Populate the map with empty lists and the characters
        for(int i = 0; i<lista.size()-1; i++){
            Map<String, Integer> mapa2 = new TreeMap<>();
            mapa.put(lista.get(i), mapa2);
        }
        // Populate the map with the pairs
        for(int i = 0; i<lista.size()-1; i++){
            String primaria = lista.get(i);
            String secundaria = lista.get(i+1);
            mapa.get(primaria).put(secundaria, mapa.get(primaria).getOrDefault(secundaria, 0) + 1);
        }
//
        // Print the map
        for (String par : mapa.toString().substring(1, mapa.toString().length()-2).split("}, ")) {
            System.out.println(par + "}");
        }
    }

    public static void carregarLista(ArrayList<String> lista, String caminho) throws IOException {
        Scanner input = new Scanner(new FileReader(caminho));
        String palavras = "";
        while (input.hasNext()) {
            palavras = palavras + " " + input.next();
        }

        for (String palavra : palavras.toLowerCase().replaceAll("[\\t\\n\\.\\,\\:\\'\\‘\\’\\;\\?\\!\\-\\*\\{\\}\\=\\+\\&\\/\\\\(\\)\\[\\]\\”\\“\\\"\\']", " ").trim().split("\\s+")) {
            if (palavra.length() > 2) {
                lista.add(palavra);
            }
        }
    }
}
