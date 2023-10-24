package aula05;

public class Retangulo {
    private float altura, comprimento, area, perimetro;

    Retangulo(float altura, float comprimento) {
        this.setAltura(altura);
        this.setComprimento(comprimento);
        this.calcularArea();
        this.calcularPerimetro();
    }

    public void setAltura(float altura) {
        this.altura = altura;
        this.calcularArea();
        this.calcularPerimetro();
    }

    public void setComprimento(float comprimento) {
        this.comprimento = comprimento;
        this.calcularArea();
        this.calcularPerimetro();
    }

    public float getAltura() {
        return this.altura;
    }

    public float getComprimento() {
        return this.comprimento;
    }

    public float getArea() {
        return this.area;
    }

    public float getPerimetro() {
        return this.perimetro;
    }

    public boolean isFiguraValida() {
        if (this.altura<=0 || this.comprimento<=0) return false;
        return true;
    }

    public String toString() {
        return "tipo:retangulo,altura:" + this.altura + ",comprimento:" + this.comprimento + ",area:" + this.area + ",perimetro" + this.perimetro;
    }

    public boolean equals(Retangulo c) {
        return (this.toString().equals(c.toString()));
    }

    private void calcularArea() {
        this.area = this.altura * this.comprimento;
    }
    
    private void calcularPerimetro() {
        this.perimetro = (this.altura + this.comprimento) * 2;
    }
}
