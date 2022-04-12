package aula08.exec2;

public class Peixe extends Alimento {
    private TipoPeixe tipo;

    public Peixe(TipoPeixe tipo, double proteinas, double calorias, double peso) {
        super(proteinas, calorias, peso);
        this.tipo = tipo;
    }

    public TipoPeixe getTipo() {
        return tipo;
    }

    @Override
    public boolean isVegetariano() {
        return false;
    }

    @Override
    public String toString() {
        return "Peixe " + this.getTipo() + ", Proteinas " + this.getProteinas() + ", Calorias " + this.getCalorias() + ", Peso " + this.getPeso();
    }
}