package aula07.exec3;

public abstract class Alojamento {
    private String codigo, nome, local;
    private double preco, avaliacao;
    private boolean disponibilidade;

    public Alojamento(String codigo, String nome, String local, double preco, double avaliacao, boolean disponibilidade) {
        this.setCodigo(codigo);
        this.setNome(nome);
        this.setLocal(local);
        this.setPreco(preco);
        this.setAvaliacao(avaliacao);
        this.setDisponibilidade(disponibilidade);
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        if (codigo == null || codigo.equals("")) throw new IllegalArgumentException("codigo invalido");
        this.codigo = codigo;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        if (nome == null || nome.equals("")) throw new IllegalArgumentException("nome invalido");
        this.nome = nome;
    }

    public String getLocal() {
        return local;
    }

    public void setLocal(String local) {
        if (local == null || local.equals("")) throw new IllegalArgumentException("local invalido");
        this.local = local;
    }

    public double getPreco() {
        return preco;
    }

    public void setPreco(double preco) {
        if (preco < 0) throw new IllegalArgumentException("preco invalido");
        this.preco = preco;
    }

    public double getAvaliacao() {
        return avaliacao;
    }

    public void setAvaliacao(double avaliacao) {
        if (avaliacao < 0 || avaliacao > 5) throw new IllegalArgumentException("avaliacao invalida");
        this.avaliacao = avaliacao;
    }

    public boolean isDisponivel() {
        return disponibilidade;
    }

    public void setDisponibilidade(boolean disponibilidade) {
        this.disponibilidade = disponibilidade;
    }

    public abstract String toString();

    public void checkIn() {
        if (!this.isDisponivel()) throw new IllegalStateException("alojamento indisponivel");
        this.setDisponibilidade(false);
    }

    public void checkOut() {
        if (this.isDisponivel()) throw new IllegalStateException("alojamento disponivel");
        this.setDisponibilidade(true);
    }
}
