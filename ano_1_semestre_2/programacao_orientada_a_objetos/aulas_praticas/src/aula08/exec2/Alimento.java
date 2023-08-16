package aula08.exec2;

public abstract class Alimento {
    protected double proteinas, calorias, peso;

    public Alimento(double proteinas, double calorias, double peso) {
        this.proteinas = proteinas;
        this.calorias = calorias;
        this.peso = peso;
    }

    public double getProteinas() {
        return proteinas;
    }

    public double getCalorias() {
        return calorias;
    }

    public double getPeso() {
        return peso;
    }

    protected abstract boolean isVegetariano();

    @Override
    public boolean equals(Object obj) {
        if (this == obj) return true;
        if (obj == null) return false;
        if (getClass() != obj.getClass()) return false;
        Alimento other = (Alimento) obj;
        if (this.getProteinas() != other.getProteinas()) return false;
        if (this.getCalorias() != other.getCalorias()) return false;
        if (this.getPeso() != other.getPeso()) return false;
        return true;
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        long temp;
        temp = Double.doubleToLongBits(calorias);
        result = prime * result + (int) (temp ^ (temp >>> 32));
        temp = Double.doubleToLongBits(peso);
        result = prime * result + (int) (temp ^ (temp >>> 32));
        temp = Double.doubleToLongBits(proteinas);
        result = prime * result + (int) (temp ^ (temp >>> 32));
        return result;
    }
}
