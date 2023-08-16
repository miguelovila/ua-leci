package aula08.exec2;

public class Cereal extends Alimento {
    private String nome;

    public Cereal(String nome, double proteinas, double calorias, double peso) {
        super(proteinas, calorias, peso);
        this.nome = nome;
    }

    public String getNome() {
        return nome;
    }

    @Override
    public boolean isVegetariano() {
        return true;
    }

    @Override
    public String toString() {
        return "Cereal '" + this.getNome() + "', Proteinas " + this.getProteinas() + ", Calorias " + this.getCalorias() + ", Peso " + this.getPeso();
    }
}
