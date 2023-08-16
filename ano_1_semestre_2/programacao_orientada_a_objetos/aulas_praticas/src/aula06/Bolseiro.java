package aula06;
import aula05.Data;

public class Bolseiro extends Aluno {
    private int montante_mensal;

    Bolseiro(String nome, int cartao_cidadao, Data data_nascimento, int montante_mensal) {
        super(nome, cartao_cidadao, data_nascimento, new Data(java.time.LocalDate.now().getDayOfMonth(), java.time.LocalDate.now().getMonthValue(), java.time.LocalDate.now().getYear()));
        this.setMontanteMensal(montante_mensal);
    }

    Bolseiro(String nome, int cartao_cidadao, Data data_nascimento, Data data_inscricao, int montante_mensal) {
        super(nome, cartao_cidadao, data_nascimento, data_inscricao);
        this.setMontanteMensal(montante_mensal);
    }

    public int getMontanteMensal() {
        return montante_mensal;
    }

    public void setMontanteMensal(int montante_mensal) {
        if (montante_mensal < 0) {
            throw new IllegalArgumentException("Montante inválido");
        } else {
            this.montante_mensal = montante_mensal;
        }
    }

    @Override
    public String toString() {
        return this.getNome() + "; CC: " + this.getCartaoCidadao() + "; Data de Nascimento: " + this.getDataNascimento().getData() + "; Número Mecanográfico: " + this.getNumeroMecanografico() + "; Data de Inscrição: " + this.getDataInscricao().getData() + "; Montante Mensal: " + this.getMontanteMensal();
    }
}
