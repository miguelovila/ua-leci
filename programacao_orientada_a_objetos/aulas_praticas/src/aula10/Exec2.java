package aula10;

import java.util.Map;
import java.util.TreeMap;
import java.util.ArrayList;
import java.util.Arrays;

public class Exec2 {
    
    public static String getEspecial(Map<String, ArrayList<String>> mapa, String chave) {
        return mapa.get(chave).get(numeroRandom(0,mapa.get(chave).size()-1));
    }

    public static int numeroRandom(int min, int max){
        int intervalo = (max - min) + 1;     
        return (int)(Math.random() * intervalo) + min;
    }

    public static void main(String[] args) {
        Map<String, ArrayList<String>> mapa = new TreeMap<>();

        // Inserções
        // "que tem a cor da neve"
        mapa.put("branco", new ArrayList<String>(Arrays.asList("que tem a cor da neve")));
        mapa.put("preto", new ArrayList<String>(Arrays.asList("que tem a cor do escuro")));
        mapa.put("verde", new ArrayList<String>(Arrays.asList("que tem a cor da relva (às vezes)")));
        mapa.put("azul", new ArrayList<String>(Arrays.asList("que tem a cor do céu")));
        mapa.put("amarelo", new ArrayList<String>(Arrays.asList("que tem a cor do sol")));
        mapa.put("vermelho", new ArrayList<String>(Arrays.asList("que tem a cor do Benfica", "que tem a cor do coração")));
        mapa.put("laranja", new ArrayList<String>(Arrays.asList("que tem a cor da laranja")));

        // Remoções
        mapa.remove("laranja");
        mapa.remove("amarelo");

        // Buscas
        System.out.printf("Busca por Branco: %s\n", mapa.get("branco"));
        System.out.printf("Busca por Laranja: %s\n", mapa.get("laranja"));
        System.out.printf("Busca por Azul: %s\n", mapa.get("azul"));
        System.out.printf("Busca por Vermelho: %s\n", mapa.get("vermelho"));

        // Modificaçaões
        mapa.put("azul", new ArrayList<String>(Arrays.asList("que tem a cor do mar")));
        mapa.put("verde", new ArrayList<String>(Arrays.asList("que tem a cor do Sporting")));
        mapa.get("verde").add("que tem a cor do verde");
        mapa.get("branco").add("que tem a cor do leite");
        mapa.get("branco").add("que tem a cor de todas as cores");
        mapa.get("branco").add("que tem a cor da parede");
        mapa.get("branco").add("que tem a cor do chão");
        mapa.get("branco").add("que tem a cor de tudo e mais alguma coisa");
        mapa.get("branco").add("nao tenho mais ideias");
        mapa.get("branco").add("este exercício era engraçado para um daltónico");


        // Buscas Especiais
        System.out.printf("\nBusca especial por Branco: %s\n", getEspecial(mapa, "branco"));
        System.out.printf("Busca especial por Azul: %s\n", getEspecial(mapa, "azul"));

        // ToString
        System.out.printf("\nmapa.toString() >>>\n%s\n", mapa.toString());

        // Apenas Keys
        System.out.printf("\nmapa.keySet() >>>\n%s\n", mapa.keySet());

        // Apenas Values
        System.out.printf("\nmapa.values() >>>\n%s\n", mapa.values());
    }
}
