package aula13;

public class Pessoa {
    private String nome;
    private int cartao_cidadao;
    private DataDMY data_nascimento;

    public Pessoa(String nome, int cartao_cidadao, DataDMY data_nascimento) {
        this.setNome(nome);
        this.setCartaoCidadao(cartao_cidadao);
        this.setDataNascimento(data_nascimento);
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getCartaoCidadao() {
        return cartao_cidadao;
    }

    public void setCartaoCidadao(int cartao_cidadao) {
        this.cartao_cidadao = cartao_cidadao;
    }

    public DataDMY getDataNascimento() {
        return data_nascimento;
    }

    public void setDataNascimento(DataDMY data_nascimento) {
        if (data_nascimento.isDataValida()) {
            this.data_nascimento = data_nascimento;
        } else {
            throw new IllegalArgumentException("Data inválida");
        }
    }

    @Override
    public String toString() {
        return this.getNome() + "; CC: " + this.getCartaoCidadao() + "; Data de Nascimento: " + this.getDataNascimento();
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Pessoa other = (Pessoa) obj;
        if ((this.nome == null) ? (other.nome != null) : !this.nome.equals(other.nome)) {
            return false;
        }
        if (this.cartao_cidadao != other.cartao_cidadao) {
            return false;
        }
        if (this.data_nascimento != other.data_nascimento && (this.data_nascimento == null || !this.data_nascimento.equals(other.data_nascimento))) {
            return false;
        }
        return true;
    }
}