package aula13;

public class DataDMY {
    // Propriedades do objeto
    private int dia, mes, ano;

    // Construtor
    public DataDMY(int dia, int mes, int ano) {
        this.dia = dia;
        this.mes = mes;
        this.ano = ano;
    }

    // GETTERS E SETTERS - Todos públicos para poderem ser utilizados fora da classe
    public int getDia(){
        return this.dia;
    }

    public void setDia(int dia){
        this.dia = dia;
    }

    public int getMes(){
        return this.mes;
    }

    public void setMeso(int mes){
        this.mes = mes;
    }

    public int getAno(){
        return this.ano;
    }

    public void setAno(int ano){
        this.ano = ano;
    }

    @Override
    public String toString() {
        return String.format("%02d-%02d-%04d", this.getDia(), this.getMes(), this.getAno());
    }

    public void setData(int dia, int mes, int ano){
        this.dia = dia;
        this.mes = mes;
        this.ano = ano;
    }

    // Método para calcular verificar se a data é válida - Público para podermos verificar se a data é válida fora da classe
    public boolean isDataValida() {
        if (this.isMesValido() && this.dia <= this.numeroDeDias() && this.dia >= 1) return true;
        return false;
    }
    // Método para calcular se o mês é válido - É privado já que não vamos necessitar dele fora da classe
    private boolean isMesValido() {
        if (this.mes <= 12 && this.mes >= 1) return true;
        return false;
    }
    // Método para verificar se ano é bissexto - É privado já que não vamos necessitar dele fora da classe
    private boolean isAnoBissexto() {
        if (this.ano%400 == 0) {
            return true;
        } else if (this.ano%100 == 0) {
            return false;
        }
        if (this.ano%4 == 0) {
            return true;
        } else {
            return false;
        }
    }
    // Método para calcular o numero de dias do mês - É publico já que vamos necessitar dele fora da classe
    public int numeroDeDias() {
        if (this.mes == 2) {
            if (this.isAnoBissexto()) return 29;
            return 28;
        } else {
            if (this.mes == 4 || this.mes == 6 || this.mes == 9 || this.mes == 11) {
                return 30;
            } else {
                return 31;
            }
        }
    }

    // Este método é privado já que vou criar um método público que o vai usar de forma a permitir que sejam feitos vários incrementos
    private void incrementarData() {
        this.dia++;
        if (this.dia > this.numeroDeDias()) {
            this.dia = 1;
            this.mes++;
            if (this.mes > 12) {
                this.mes = 1;
                this.ano++;
            }
        }
    }
    // Este método é privado já que vou criar um método público que o vai usar de forma a permitir que sejam feitos vários decrementos
    private void decremenarData() {
        this.dia--;
        if (this.dia < 1) {
            this.mes--;
            if (this.mes < 1) {
                this.mes = 12;
                this.ano--;
            }
            this.dia = this.numeroDeDias();
        }
    }
    // Métodos públicos para incrementar e decrementar a data
    public void incrementarDias(int dias) {
        for (int i = 0; i < dias; i++) {
            this.incrementarData();
        }
    }

    public void decremenarDias(int dias) {
        for (int i = 0; i < dias; i++) {
            this.decremenarData();
        }
    }
}
