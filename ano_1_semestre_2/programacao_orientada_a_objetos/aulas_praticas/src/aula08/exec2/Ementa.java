package aula08.exec2;
import java.util.*;

public class Ementa {
    private String nome, local;
    private List<Prato> pratos = new ArrayList<Prato>();
    private List<DiaDaSemana> dias_da_semana = new ArrayList<DiaDaSemana>();

    public Ementa(String nome, String local) {
        this.nome = nome;
        this.local = local;
    }

    public String getNome() {
        return nome;
    }

    public String getLocal() {
        return local;
    }

    public void addPrato(Prato prato, DiaDaSemana dia) {
        pratos.add(prato);
        dias_da_semana.add(dia);
    }

    public String toString() {
        String res = "";
        for (int i = 0; i < pratos.size(); i++) {
            res += pratos.get(i) + ", dia " + dias_da_semana.get(i) + "\n";
        }
        return res;
    }

    public List<Prato> getPratos() {
        return pratos;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) return true;
        if (obj == null) return false;
        if (getClass() != obj.getClass()) return false;
        Ementa other = (Ementa) obj;
        if (this.getNome() != other.getNome()) return false;
        if (this.getLocal() != other.getLocal()) return false;
        if (this.getPratos().size() != other.getPratos().size()) return false;
        for (int i = 0; i < this.getPratos().size(); i++) {
            if (!this.getPratos().get(i).equals(other.getPratos().get(i))) return false;
        }
        return true;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 31 * hash + this.getNome().hashCode();
        hash = 31 * hash + this.getLocal().hashCode();
        for (int i = 0; i < this.getPratos().size(); i++) {
            hash = 31 * hash + this.getPratos().get(i).hashCode();
        }
        return hash;
    }
}
