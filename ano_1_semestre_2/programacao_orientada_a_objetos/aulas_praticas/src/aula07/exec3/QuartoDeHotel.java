package aula07.exec3;

public class QuartoDeHotel extends Alojamento{

    private String tipo;

    public QuartoDeHotel(String codigo, String nome, String local, double preco, double avaliacao, boolean disponibilidade, String tipo) {
        super(codigo, nome, local, preco, avaliacao, disponibilidade);
        this.setTipo(tipo);
    }
    
    public String getTipo() {
        return this.tipo;
    }

    public void setTipo(String tipo) {
        if ((!tipo.equals("single") && !tipo.equals("double") && !tipo.equals("triple") && !tipo.equals("twin"))||(tipo == null || tipo.equals(""))) throw new IllegalArgumentException("tipo invalido");
        this.tipo = tipo;
    }

    public String toString() {
        return "QuartoDeHotel{" + "codigo=" + this.getCodigo() + ", nome=" + this.getNome() + ", local=" + this.getLocal() + ", preco=" + this.getPreco() + ", avaliacao=" + this.getAvaliacao() + ", disponibilidade=" + this.isDisponivel() + ", tipo=" + this.tipo + '}';
    }
}
