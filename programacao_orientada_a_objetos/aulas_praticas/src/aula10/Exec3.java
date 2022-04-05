package aula10;
import java.util.Map;
import java.util.HashMap;
import java.util.ArrayList;

public class Exec3 {
    
    public static void main(String[] args) {
        System.out.println(posicoesCaracteres("sou um programador"));
        System.out.println(posicoesCaracteres("Hello World"));
    }

    public static String posicoesCaracteres(String s) {
        Map<Character, ArrayList<Integer>> mapa = new HashMap<>();
        // Popular o mapa com as listas vazias e os caracteres existentes
        for (int i = 0; i < s.length(); i++) {
            char c = s.charAt(i);
            mapa.put(c, new ArrayList<>());
        }
        // Adicionar os índices dos caracteres na lista correspondente
        for (int i = 0; i < s.length(); i++) {
            char c = s.charAt(i);
            mapa.get(c).add(i);
        }
        return mapa.toString();
    }
}
