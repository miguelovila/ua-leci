package aula06;
import aula05.Data;

public class Aluno extends Pessoa {
    private static int numero_mecanografico_global = 100;
    private int numero_mecanografico;
    private Data data_inscricao;

    Aluno(String nome, int cartao_cidadao, Data data_nascimento) {
        super(nome, cartao_cidadao, data_nascimento);
        this.setNumeroMecanografico();
        java.util.Date date = new java.util.Date();
        System.out.println(date);
    }

    Aluno(String nome, int cartao_cidadao, Data data_nascimento, Data data_inscricao) {
        super(nome, cartao_cidadao, data_nascimento);
        this.setNumeroMecanografico();
        this.setDataInscricao(data_inscricao);
    }

    public int getNumeroMecanografico() {
        return numero_mecanografico;
    }

    private void setNumeroMecanografico() {
        this.numero_mecanografico = numero_mecanografico_global++;
    }

    public Data getDataInscricao() {
        return data_inscricao;
    }

    public void setDataInscricao(Data data_inscricao) {
        if (data_inscricao.isDataValida()) {
            this.data_inscricao = data_inscricao;
        } else {
            throw new IllegalArgumentException("Data inválida");
        }
    }

    @Override
    public String toString() {
        return this.getNome() + "; CC: " + this.getCartaoCidadao() + "; Data de Nascimento: " + this.getDataNascimento().getData() + "; Número Mecanográfico: " + this.getNumeroMecanografico() + "; Data de Inscrição: " + this.getDataInscricao().getData();
    }
}
