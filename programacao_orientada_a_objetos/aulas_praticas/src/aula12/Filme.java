package aula12;

public class Filme implements Comparable<Filme> {
    private String nome, classificacao, genero;
    private float pontuacao;
    private int duracao;

    public Filme(String nome, float pontuacao, String classificacao, String genero, int duracao) {
        this.nome = nome;
        this.pontuacao = pontuacao;
        this.classificacao = classificacao;
        this.genero = genero;
        this.duracao = duracao;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public float getPontuacao() {
        return pontuacao;
    }

    public void setPontuacao(float pontuacao) {
        this.pontuacao = pontuacao;
    }

    public String getClassificacao() {
        return classificacao;
    }

    public void setClassificacao(String classificacao) {
        this.classificacao = classificacao;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public int getDuracao() {
        return duracao;
    }

    public void setDuracao(int duracao) {
        this.duracao = duracao;
    }

    @Override
    public String toString() {
        return "Filme{" + "nome=" + nome + ", pontuacao=" + pontuacao + ", classificacao=" + classificacao + ", genero=" + genero + ", duracao=" + duracao + '}';
    }

    @Override
    public int compareTo(Filme o) {
        return this.getNome().toLowerCase().compareTo(o.getNome().toLowerCase());
    }
}
