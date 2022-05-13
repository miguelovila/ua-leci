package aula07.exec1;

public class Triangulo extends Forma {

    private double lado1, lado2, lado3;

    Triangulo(double lado1, double lado2, double lado3, String cor) {
        this.setLados(lado1, lado2, lado3);
        this.setCor(cor);
    }

    public void setLados(double lado1, double lado2, double lado3) {
        this.lado1 = lado1;
        this.lado2 = lado2;
        this.lado3 = lado3;
        this.setArea();
        this.setPerimetro();
    }

    protected void setPerimetro() {
        this.perimetro = this.lado1 + this.lado2 + this.lado3;
    }

    protected void setArea() {
        double p = (this.lado1 + this.lado2 + this.lado3) / 2;
        this.area = (double) Math.sqrt(p * (p - this.lado1) * (p - this.lado2) * (p - this.lado3));
    }

    public boolean isFigValida() {
        if (this.lado1 <= 0 || this.lado2 <= 0 || this.lado3 <= 0)
            return false;
        if (this.lado1 + this.lado2 <= this.lado3 || this.lado1 + this.lado3 <= this.lado2 || this.lado2 + this.lado3 <= this.lado1)
            return false;
        return true;
    }

    public String toString() {
        return "tipo:triangulo,lado1:" + this.lado1 + ",lado2:" + this.lado2 + ",lado3:" + this.lado3 + ",area:" + this.getArea() + ",perimetro" + this.getPerimetro() + ",cor:" + this.getCor();
    }
}
