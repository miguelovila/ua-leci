package aula13;

public class Festival {
    private DataDMY dataInicio, dataFim;
    private String nome, local;
    private int numeroDeBilhetes;

    public Festival(DataDMY dataInicio, DataDMY dataFim,  String nome, String local, int numeroDeBilhetes) {
        this.nome = nome;
        this.local = local;
        this.dataInicio = dataInicio;
        this.dataFim = dataFim;
        this.numeroDeBilhetes = numeroDeBilhetes;
    }

    public DataDMY getDataInicio() {
        return dataInicio;
    }

    public DataDMY getDataFim() {
        return dataFim;
    }

    public String getNome() {
        return nome;
    }

    public String getLocal() {
        return local;
    }

    public int getNumeroDeBilhetes() {
        return numeroDeBilhetes;
    }

    public boolean reservarBilhete() {
        if (this.numeroDeBilhetes > 0) {
            this.numeroDeBilhetes--;
            return true;
        }
        return false;
    }

    @Override
    public String toString() {
        return String.format("%s - %s - %s - %s - %d", this.getNome(), this.getLocal(), this.getDataInicio(), this.getDataFim(), this.getNumeroDeBilhetes());
    }
}
