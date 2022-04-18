package aula13;

import java.util.Scanner;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class RandomTicketTester {
    public static void main(String[] args) throws IOException {

        List<Festival> festivais = carregarFestivais("src/aula13/Lista_festivais.txt");
        List<Bilhete> bilhetes = carregarBilhetes(festivais);

        List<Pessoa> pessoas = new ArrayList<Pessoa>();        
        pessoas.add(new Pessoa("Maria", 34317245, new DataDMY(12, 1, 2000)));
        pessoas.add(new Pessoa("Carlos", 36331424, new DataDMY(1, 10, 2003)));
        pessoas.add(new Pessoa("Marta", 35940012, new DataDMY(31, 3, 2002)));
        pessoas.add(new Pessoa("Sofia", 34765901, new DataDMY(14, 7, 2000)));
        pessoas.add(new Pessoa("Tiago", 35006531, new DataDMY(3, 6, 2001)));

        sortearBilhetes(bilhetes, pessoas);
        sortearBilhetes(bilhetes, pessoas);


        for (Bilhete bilhete : bilhetes) {
            if (bilhete.getTitular() != null) {
                System.out.println(bilhete.toString());
            }
        }
    }

    public static List<Festival> carregarFestivais(String caminho) throws IOException {
        FileReader file_reader = new FileReader(caminho);
        Scanner file_scanner = new Scanner(file_reader);
        ArrayList<Festival> festivais = new ArrayList<>();

        file_scanner.nextLine();

        while (file_scanner.hasNextLine()) {
            String linha = file_scanner.nextLine();
            String[] campos = linha.split("\t");
            DataDMY dataInicio = new DataDMY(Integer.parseInt(campos[0].split("-")[0]), Integer.parseInt(campos[0].split("-")[1]), Integer.parseInt(campos[0].split("-")[2]));
            DataDMY dataFim = new DataDMY(Integer.parseInt(campos[1].split("-")[0]), Integer.parseInt(campos[1].split("-")[1]), Integer.parseInt(campos[1].split("-")[2]));
            festivais.add(new Festival(dataInicio, dataFim, campos[2], campos[3], Integer.parseInt(campos[4])));
        }

        file_scanner.close();
        file_reader.close();

        return festivais;
    }

    public static List<Bilhete> carregarBilhetes(List<Festival> festivais) throws IOException {
        List<Bilhete> bilhetes = new ArrayList<>();
        for (Festival festival : festivais) {
            for (int i = 0; i < festival.getNumeroDeBilhetes(); i++) {
                bilhetes.add(new Bilhete(festival, i+1));
            }
        }
        return bilhetes;
    }

    public static void sortearBilhetes(List<Bilhete> bilhetes, List<Pessoa> pessoas) {
        Bilhete random_bilhete = bilhetes.get((int) (Math.random()*bilhetes.size()));
        Pessoa random_pessoa = pessoas.get((int) (Math.random()*pessoas.size()));
        random_bilhete.setTitular(random_pessoa);
    }

}
