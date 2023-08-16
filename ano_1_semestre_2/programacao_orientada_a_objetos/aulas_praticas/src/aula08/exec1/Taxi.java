package aula08.exec1;

public class Taxi extends Automovel {
    private int numero_licensa;

    public Taxi(String matricula, String marca, String modelo, int potencia, int numero_do_quadro, int numero_licensa) {
        super(matricula, marca, modelo, potencia, numero_do_quadro);
        this.setNumeroLicensa(numero_licensa);
    }

    public int getNumeroLicensa() {
        return numero_licensa;
    }

    public void setNumeroLicensa(int numero_licensa) {
        if (numero_licensa <= 0)
            throw new IllegalArgumentException("numero de licenca invalido");
        this.numero_licensa = numero_licensa;
    }

    @Override
    public String toString() {
        return "Taxi [id=" + this.getId() + ", numero_licensa=" + this.getNumeroLicensa() + ", matricula=" + this.getMatricula() + ", marca=" + this.getMarca() + ", modelo=" + this.getModelo() + ", potencia=" + this.getPotencia() + ", numero_do_quadro=" + this.getNumeroDoQuadro() + "]";
    }
}
