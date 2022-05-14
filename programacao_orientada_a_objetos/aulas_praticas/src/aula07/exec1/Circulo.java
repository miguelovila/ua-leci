package aula07.exec1;

public class Circulo extends Forma {
    
    private double raio;

    Circulo(double raio, String cor) {
        this.setRaio(raio);
        this.setCor(cor);
    }

    public void setRaio(double raio) {
        this.raio = raio;
        this.setArea();
        this.setPerimetro();
    }

    protected void setPerimetro() {
        this.perimetro = 2 * Math.PI * this.getRaio();
    }

    protected void setArea() {
        this.area = Math.PI * this.getRaio() * this.getRaio();
    }

    public double getRaio() {
        return this.raio;
    }

    public boolean isFigValida() {
        return this.getRaio() > 0;
    }

    public String toString() {
        return "tipo:circulo,raio:" + this.getRaio() + ",area:" + this.getArea() + ",perimetro" + this.getPerimetro() + ",cor:" + this.getCor();
    }
    
}