package aula10;

import java.util.Map;
import java.util.HashMap;

public class Exec1 {
    
    public static void main(String[] args) {
        Map<String, String> mapa = new HashMap<>();

        // Inserções
        mapa.put("branco", "que tem a cor da neve");
        mapa.put("preto", "que tem a cor do escuro");
        mapa.put("verde", "que tem a cor da relva (às vezes)");
        mapa.put("azul", "que tem a cor do céu");
        mapa.put("amarelo", "que tem a cor do sol");
        mapa.put("vermelho", "que tem a cor do Benfica");
        mapa.put("laranja", "que tem a cor da laranja");

        // Remoções
        mapa.remove("laranja");
        mapa.remove("amarelo");

        // Buscas
        System.out.printf("Busca por Branco: %s\n", mapa.get("branco"));
        System.out.printf("Busca por Laranja: %s\n", mapa.get("laranja"));
        System.out.printf("Busca por Azul: %s\n", mapa.get("azul"));

        // Modificaçaões
        mapa.put("azul", "que tem a cor do mar");
        mapa.put("verde", "que tem a cor do Sporting");

        // ToString
        System.out.printf("mapa.toString() >>>\n%s\n", mapa.toString());

        // Apenas Keys
        System.out.printf("mapa.keySet() >>>\n%s\n", mapa.keySet());

        // Apenas Values
        System.out.printf("mapa.values() >>>\n%s\n", mapa.values());
    }

}
