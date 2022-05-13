package aula07.exec1;

public class Retangulo extends Forma {

    private double comprimento, altura;

    Retangulo(double comprimento, double altura, String cor) {
        this.setComprimento(comprimento);
        this.setAltura(altura);
        this.setCor(cor);
    }

    protected void setArea() {
        this.area = this.comprimento * this.altura;
    }

    protected void setPerimetro() {
        this.perimetro = 2 * (this.comprimento + this.altura);
    }

    public void setComprimento(double comprimento) {
        this.comprimento = comprimento;
        this.setArea();
        this.setPerimetro();
    }

    public double getComptimento() {
        return this.comprimento;
    }

    public void setAltura(double altura) {
        this.altura = altura;
        this.setArea();
        this.setPerimetro();
    }

    public double getAltura() {
        return this.altura;
    }

    public boolean isFigValida() {
        return this.getComptimento() > 0 && this.getAltura() > 0;
    }

    public String toString() {
        return "tipo:retangulo,comprimento:" + this.getComptimento() + ",altura:" + this.getAltura() + ",area:" + this.getArea() + ",perimetro" + this.getPerimetro() + ",cor:" + this.getCor();
    }
}
