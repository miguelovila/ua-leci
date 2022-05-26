package aula05;

public class Circulo {
    private float raio, area, perimetro;

    Circulo(float raio) {
        this.setRaio(raio);
        this.calcularArea();
        this.calcularPerimetro();
    }

    public void setRaio(float raio) {
        this.raio = raio;
        this.calcularArea();
        this.calcularPerimetro();
    }

    public float getRaio() {
        return this.raio;
    }

    public float getArea() {
        return this.area;
    }

    public float getPerimetro() {
        return this.perimetro;
    }

    public boolean isFiguraValida() {
        if (this.raio<=0) return false;
        return true;
    }

    public String toString() {
        return "tipo:circulo,raio:" + this.raio + ",area:" + this.area + ",perimetro" + this.perimetro;
    }

    public boolean equals(Circulo c) {
        return this.raio == c.getRaio();
    }

    private void calcularArea() {
        this.area = (float) (Math.PI * Math.pow(this.raio, 2));
    }
    
    private void calcularPerimetro() {
        this.perimetro = (float) (2 * Math.PI * this.raio);
    }
}
