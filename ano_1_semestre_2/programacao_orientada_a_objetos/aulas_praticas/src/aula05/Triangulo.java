package aula05;

public class Triangulo {
    private float lado1, lado2, lado3, area, perimetro;

    Triangulo(float lado1, float lado2, float lado3) {
        this.setLados(lado1, lado2, lado3);
        this.calcularArea();
        this.calcularPerimetro();
    }

    public void setLados(float lado1, float lado2, float lado3) {
        this.lado1 = lado1;
        this.lado2 = lado2;
        this.lado3 = lado3;
        this.calcularArea();
        this.calcularPerimetro();
    }

    public String getLados() {
        return "lado1:" + this.lado1 + ",lado2:" + this.lado2 + ",lado3:" + this.lado3;
    }

    public float getArea() {
        return this.area;
    }

    public float getPerimetro() {
        return this.perimetro;
    }

    public boolean isFiguraValida() {
        if (this.lado1<=0 || this.lado2<=0 || this.lado3<=0) return false;
        if (this.lado1+this.lado2<=this.lado3 || this.lado1+this.lado3<=this.lado2 || this.lado2+this.lado3<=this.lado1) return false;
        return true;
    }

    public String toString() {
        return "tipo:triangulo," + this.getLados() + ",area:" + this.area + ",perimetro" + this.perimetro;
    }

    public boolean equals(Triangulo c) {
        return (this.getLados().equals(c.getLados()));
    }

    private void calcularArea() {
        float s = (this.lado1 + this.lado2 + this.lado3) / 2;
        this.area = (float) Math.sqrt(s * (s - this.lado1) * (s - this.lado2) * (s - this.lado3));
    }
    
    private void calcularPerimetro() {
        this.perimetro = this.lado1 + this.lado2 + this.lado3;
    }
}
