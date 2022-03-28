package aula08.exec2;

public class Carne extends Alimento {
    private VariedadeCarne variedade;

    public Carne(VariedadeCarne variedade, double proteinas, double calorias, double peso) {
        super(proteinas, calorias, peso);
        this.variedade = variedade;
    }

    public VariedadeCarne getVariedade() {
        return variedade;
    }

    @Override
    public boolean isVegetariano() {
        return false;
    }

    @Override
    public String toString() {
        return "Carne " + this.getVariedade() + ", Proteinas " + this.getProteinas() + ", Calorias " + this.getCalorias() + ", Peso " + this.getPeso();
    }
}
