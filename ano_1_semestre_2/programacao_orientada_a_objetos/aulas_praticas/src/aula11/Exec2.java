package aula11;

import java.util.Scanner;
import java.io.PrintWriter;
import java.io.FileReader;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.LinkedHashMap;
import java.util.Comparator;

public class Exec2 {
    public static void main(String[] args) throws IOException {
        ArrayList<Voo> voos = new ArrayList<>(); carregarVoos(voos);

        gerarFicheiro(gerarListaVoos(voos), "src/aula11/infopublico.txt");
        gerarFicheiro(gerarListaChegadas(voos), "src/aula11/cidades.txt");

        System.out.println(gerarListaVoos(voos));
        System.out.println(gerarListaAtrasos(voos));
        System.out.println(gerarListaChegadas(voos));
    }

    public static void gerarFicheiro(String dados, String caminho) throws IOException {
        PrintWriter out = new PrintWriter(new File(caminho));
        out.print(dados);
        out.close();
    }

    public static int calcularMediaArrayList(ArrayList<Integer> lista) {
        int soma = 0;
        for (int i : lista) { soma += i; }
        return soma / lista.size();
    }

    public static void carregarVoos(ArrayList<Voo> voos) throws IOException {
        Scanner txtVoos = new Scanner(new FileReader("src/aula11/voos.txt"));
            txtVoos.nextLine();
            while (txtVoos.hasNext()) {
                String[] voo = txtVoos.nextLine().split("\t");
                if (voo.length == 3) {
                    voos.add(new Voo(voo[0], voo[1], voo[2],""));
                } else {
                    voos.add(new Voo(voo[0],voo[1],voo[2],voo[3]));
                }
            }
    }

    public static String gerarListaVoos(ArrayList<Voo> voos) {
        String head = String.format("%-7s %-8s %-20s %-21s %-7s %-20s\n", "Hora", "Voo", "Companhia", "Origem", "Atraso", "Obs");
        String body = "";
        for (Voo voo : voos) {
            body += voo.toString() + "\n";
        }
        return head + body;
    }

    public static String gerarListaAtrasos(ArrayList<Voo> voos) {
        HashMap<String, ArrayList<Integer>> atrasos = new HashMap<>();
        for (Voo voo : voos) {
            if (!voo.getAtraso().equals("")) {
                atrasos.putIfAbsent(voo.getCompanhia(), new ArrayList<>());
                atrasos.get(voo.getCompanhia()).add(voo.getAtrasoSegundos());
            }
        }
        Map<String, String> atrasosmedios = new HashMap<String, String>();
        for (String companhia : atrasos.keySet()) {
            int media_sec = calcularMediaArrayList(atrasos.get(companhia));
            String atraso = String.format("%02d:%02d", media_sec/3600, (media_sec-((media_sec/3600)*3600))/60);
            atrasosmedios.put(companhia, atraso);
        }
        LinkedHashMap<String, String> atrasosmedios_ordenados = new LinkedHashMap<>();
        atrasosmedios.entrySet().stream().sorted(Map.Entry.comparingByValue()).forEachOrdered(x -> atrasosmedios_ordenados.put(x.getKey(), x.getValue()));

        String head = String.format("%-20s %-7s\n", "Companhia", "Atraso Médio");
        String body = "";
        for (String companhia : atrasosmedios_ordenados.keySet()) {
            body += String.format("%-20s %-7s\n", companhia, atrasosmedios_ordenados.get(companhia));
        }
        return head + body;
    }

    public static String gerarListaChegadas(ArrayList<Voo> voos) {
        HashMap<String, Integer> chegadas = new HashMap<>();
        for (Voo voo : voos) {
            chegadas.putIfAbsent(voo.getOrigem(), 0);
            chegadas.put(voo.getOrigem(), chegadas.get(voo.getOrigem()) + 1);
        }
        Map<String, Integer> chegadas_ordenadas = new LinkedHashMap<String, Integer>();
        chegadas.entrySet().stream().sorted(Map.Entry.comparingByValue(Comparator.reverseOrder())).forEachOrdered(x -> chegadas_ordenadas.put(x.getKey(), x.getValue()));

        String head = String.format("%-20s %-5s\n", "Origem", "Voos");
        String body = "";
        for (String cidade : chegadas_ordenadas.keySet()) {
            body += String.format("%-20s %-5s\n", cidade, chegadas_ordenadas.get(cidade));
        }
        return head + body;
    }
}