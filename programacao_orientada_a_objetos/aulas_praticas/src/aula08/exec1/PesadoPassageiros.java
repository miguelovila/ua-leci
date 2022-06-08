package aula08.exec1;

public class PesadoPassageiros extends Pesado {
    private int numero_max_de_passageiros;

    public PesadoPassageiros(String matricula, String marca, String modelo, int potencia, int numero_do_quadro, float peso, int numero_max_de_passageiros) {
        super(matricula, marca, modelo, potencia, numero_do_quadro, peso);
        this.setNumeroMaxDePassageiros(numero_max_de_passageiros);
    }

    public int getNumeroMaxDePassageiros() {
        return numero_max_de_passageiros;
    }

    public void setNumeroMaxDePassageiros(int numero_max_de_passageiros) {
        if (numero_max_de_passageiros <= 0)
            throw new IllegalArgumentException("numero maximo de passageiros invalido");
        this.numero_max_de_passageiros = numero_max_de_passageiros;
    }

    @Override
    public String toString() {
        return "PesadoPassageiros [id=" + this.getId() + ", numero_max_de_passageiros=" + this.getNumeroMaxDePassageiros() + ", matricula=" + this.getMatricula() + ", marca=" + this.getMarca() + ", modelo=" + this.getModelo() + ", potencia=" + this.getPotencia() + ", numero_do_quadro=" + this.getNumeroDoQuadro() + ", peso=" + this.getPeso() + "]";
    }
}
