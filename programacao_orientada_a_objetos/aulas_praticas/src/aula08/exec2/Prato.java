package aula08.exec2;
import java.util.*;

public class Prato implements Comparable<Prato> {
    private String nome;
    protected List<Alimento> alimentos = new ArrayList<Alimento>();

    public Prato(String nome) {
        this.nome = nome;
    }

    public String getNome() {
        return nome;
    }

    public double getCalorias() {
        double calorias = 0;
        for (Alimento alimento : alimentos) {
            calorias += (alimento.getCalorias()*alimento.getPeso())/100;
        }
        return calorias;
    }

    public double getProteinas() {
        double proteina = 0;
        for (Alimento alimento : alimentos) {
            proteina += (alimento.getProteinas()*alimento.getPeso())/100;
        }
        return proteina;
    }

    public double getPeso() {
        double peso = 0;
        for (Alimento alimento : alimentos) {
            peso += alimento.getPeso();
        }
        return peso;
    }

    public List<Alimento> getAlimentos() {
        return alimentos;
    }

    public boolean addIngrediente(Alimento alimento) {
        return alimentos.add(alimento);
    }

    @Override 
    public String toString() {
        return "Prato '" + this.getNome() + "', composto por " + alimentos.size() + " Ingredientes";
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) return true;
        if (obj == null) return false;
        if (getClass() != obj.getClass()) return false;
        Prato other = (Prato) obj;
        if (this.getAlimentos().size() != other.getAlimentos().size()) return false;
        for (Alimento alimento : this.getAlimentos()) {
            if (!other.getAlimentos().contains(alimento)) return false;
        }
        return true;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 31 * hash + this.getNome().hashCode();
        for (Alimento alimento : this.getAlimentos()) {
            hash = 31 * hash + alimento.hashCode();
        }
        return hash;
    }

    @Override
    public int compareTo(Prato prato) {
        if (this.getCalorias() > prato.getCalorias()) return 1;
        if (this.getCalorias() < prato.getCalorias()) return -1;
        return 0;
    }
}
