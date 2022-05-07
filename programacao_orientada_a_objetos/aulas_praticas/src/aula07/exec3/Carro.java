package aula07.exec3;

public class Carro {
    private char classe;
    private String tipo, codigo;
    private boolean disponibilidade;

    public Carro(String codigo, char classe, String tipo, boolean disponibilidade) {
        this.setCodigo(codigo);
        this.setClasse(classe);
        this.setTipo(tipo);
        this.setDisponibilidade(disponibilidade);
    }

    public char getClasse() {
        return classe;
    }

    public void setClasse(char classe) {
        if (classe != 'A' && classe != 'B' && classe != 'C' && classe != 'D' && classe != 'E' && classe != 'F') throw new IllegalArgumentException("classe invalida");
        this.classe = classe;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        if (codigo == null || codigo.equals("")) throw new IllegalArgumentException("codigo invalido");
        this.codigo = codigo;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        if ((!tipo.equals("gasolina") && !tipo.equals("disel") && !tipo.equals("hibrido") && !tipo.equals("eletrico")) || (tipo == null || tipo.equals(""))) throw new IllegalArgumentException("tipo invalido");
        this.tipo = tipo;
    }

    public boolean isDisponivel() {
        return disponibilidade;
    }

    public void setDisponibilidade(boolean disponibilidade) {
        this.disponibilidade = disponibilidade;
    }

    public String toString() {
        return "Carro{" +  "codigo=" + this.getCodigo() + ", classe=" + this.getClasse() + ", tipo=" + this.getTipo() + ", disponibilidade=" + this.isDisponivel() + '}';
    }

    public void levantar() {
        if (!this.isDisponivel()) throw new IllegalArgumentException("carro nao disponivel");
        this.setDisponibilidade(false);
    }

    public void entregar() {
        if (this.isDisponivel()) throw new IllegalArgumentException("carro ja disponivel");
        this.setDisponibilidade(true);
    }
}
