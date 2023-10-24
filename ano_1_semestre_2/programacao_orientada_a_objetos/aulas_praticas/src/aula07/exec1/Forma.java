package aula07.exec1;

public abstract class Forma {
    protected double area, perimetro;
    protected String cor;

    protected abstract void setPerimetro();
    protected abstract void setArea();
    public abstract boolean isFigValida();

    public void setCor(String cor) {
        this.cor = cor;
    }
    public String getCor() {
        return this.cor;
    }
    public double getPerimetro() {
        return this.perimetro;
    }
    public double getArea() {
        return this.area;
    }

    public boolean equals(Forma f) {
        return this.toString().equals(f.toString());
    }
}
