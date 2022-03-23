package aula11;

import java.util.HashMap;
import java.util.Scanner;
import java.io.FileReader;
import java.io.IOException;

public class Voo {
    private String hora;
    private String id;
    private String companhia;
    private String origem;
    private String atraso;
    private String obs;
    private static HashMap<String, String> companhias = new HashMap<>();


    public Voo(String hora, String id, String origem, String atraso) throws IOException {
        this.hora = hora;
        this.id = id;
        this.origem = origem;
        this.atraso = atraso;
        if (this.atraso == "") {
            this.obs = "";
        } else {
            this.obs = "Previsto: " + this.getPrevisao();
        }
        this.companhia = getCompanhias().get(this.id.substring(0, 2));
    }

    public String getHora() {
        return hora;
    }

    public String getId() {
        return id;
    }

    public String getCompanhia() {
        return companhia;
    }

    public String getOrigem() {
        return origem;
    }

    public String getAtraso() {
        return atraso;
    }

    public int getAtrasoSegundos() {
        return Integer.parseInt(this.getAtraso().substring(0, 2))*3600 + Integer.parseInt(this.getAtraso().substring(3, 5))*60; 
    }

    public String getObs() {
        return obs;
    }

    private String getPrevisao() {
        int hora_previsao_int = Integer.parseInt(this.hora.substring(0, 2)) + Integer.parseInt(this.atraso.substring(0, 2));
        int minuto_previsao_int = Integer.parseInt(this.hora.substring(3, 5)) + Integer.parseInt(this.atraso.substring(3, 5));

        if (minuto_previsao_int >= 60) {
            hora_previsao_int += 1;
            minuto_previsao_int -= 60;
        }
        if (hora_previsao_int >= 24) {
            hora_previsao_int -= 24;
        }

        return String.format("%02d:%02d", hora_previsao_int, minuto_previsao_int);
    }

    @Override
    public String toString() {
        return String.format("%-7s %-8s %-20s %-21s %-7s %-20s", this.hora, this.id, this.companhia, this.origem, this.atraso, this.obs);
    }

    private HashMap<String, String> getCompanhias() throws IOException {
        if (companhias.isEmpty()) {
            Scanner txtCompanhias = new Scanner(new FileReader("src/aula11/companhias.txt"));
            txtCompanhias.nextLine();
            while (txtCompanhias.hasNext()) {
                String[] companhia = txtCompanhias.nextLine().split("\t");
                companhias.put(companhia[0], companhia[1]);
            }
        }
        return companhias;
    }

}
