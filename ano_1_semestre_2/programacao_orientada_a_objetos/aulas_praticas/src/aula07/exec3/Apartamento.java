package aula07.exec3;

public class Apartamento extends Alojamento{

    private int numero_de_quartos;

    public Apartamento(String codigo, String nome, String local, double preco, double avaliacao, boolean disponibilidade, int numero_de_quartos) {
        super(codigo, nome, local, preco, avaliacao, disponibilidade);
        this.setNumero_de_quartos(numero_de_quartos);
    }

    public int getNumero_de_quartos() {
        return numero_de_quartos;
    }

    public void setNumero_de_quartos(int numero_de_quartos) {
        if (numero_de_quartos <= 0) throw new IllegalArgumentException("numero de quartos invalido");
        this.numero_de_quartos = numero_de_quartos;
    }

    public String toString() {
        return "Apartamento{" + "codigo=" + this.getCodigo() + ", nome=" + this.getNome() + ", local=" + this.getLocal() + ", preco=" + this.getPreco() + ", avaliacao=" + this.getAvaliacao() + ", disponibilidade=" + this.isDisponivel() + ", numero_de_quartos=" + this.numero_de_quartos + '}';
    }
    
}
