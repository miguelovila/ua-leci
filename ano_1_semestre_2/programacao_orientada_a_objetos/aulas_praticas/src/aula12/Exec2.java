package aula12;

import java.util.Scanner;
import java.io.FileReader;
import java.io.File;
import java.io.PrintWriter;
import java.io.IOException;
import java.util.SortedSet;
import java.util.TreeSet;
import java.util.Comparator;

public class Exec2 {
    
    public static void main(String Args[]) throws IOException {
        SortedSet<Filme> filmes = gerarConjunto("src/aula12/movies.txt");

        // Imprimir filmes por ordem alfabetica
        System.out.println(">>>> Filmes por ordem alfabetica <<<<");
        for (Filme filme : filmes) {
            System.out.println(filme.toString());
        }

        // Imprimir filmes por ordem decrescente de pontuacao
        System.out.println(">>>> Filmes por ordem decrescente de pontuacao <<<<");
        SortedSet<Filme> filmes_pontuacao_decrescente = new TreeSet<>(Comparator.comparing(Filme::getPontuacao).reversed());
        filmes_pontuacao_decrescente.addAll(filmes);
        for (Filme filme : filmes_pontuacao_decrescente) {
            System.out.println(filme.toString());
        }

        // Imprimir filmes por ordem crescente de duracao
        System.out.println(">>>> Filmes por ordem crescente de duracao <<<<");
        SortedSet<Filme> filmes_duracao_crescente = new TreeSet<>(Comparator.comparing(Filme::getDuracao));
        filmes_duracao_crescente.addAll(filmes);
        for (Filme filme : filmes_duracao_crescente) {
            System.out.println(filme.toString());
        }

        // Imprimir generos de filmes em ordem alfabetica
        System.out.println(">>>> Generos de filmes <<<<");
        SortedSet<String> generos = new TreeSet<String>();
        for (Filme filme : filmes) generos.add(filme.getGenero());
        for (String genero : generos) System.out.println(genero);

        // Escrever em “myselection.txt” os filmes com um score superior a 60 e que pertençam  ao género comedy
        System.out.println(">>>> Escrever em myselection.txt os filmes com um score superior a 60 e que pertençam ao género comedy <<<<");
        String out = "";
        for (Filme filme : filmes) {
            if (filme.getPontuacao() > 60 && filme.getGenero().equals("comedy")) {
                out += filme.toString() + "\n";
            }
        }
        escreverFicheiro("src/aula12/myselection.txt", out);
        System.out.println(out);

    }

    public static SortedSet<Filme> gerarConjunto(String caminho) throws IOException {
        FileReader file_reader = new FileReader(caminho);
        Scanner file_scanner = new Scanner(file_reader);
        SortedSet<Filme> conjunto = new TreeSet<>();

        file_scanner.nextLine();

        while (file_scanner.hasNextLine()) {
            String linha = file_scanner.nextLine();
            String[] campos = linha.split("\t");
            conjunto.add(new Filme(campos[0], Float.parseFloat(campos[1]), campos[2], campos[3], Integer.parseInt(campos[4])));
        }

        file_scanner.close();
        file_reader.close();

        return conjunto;
    }

    public static void escreverFicheiro(String caminho, String conteudo) throws IOException {
        PrintWriter out = new PrintWriter(new File(caminho));
        out.print(conteudo);
        out.close();
    }
}
