package aula07.exec2;

public class DataND extends Data {
    private int spanDias;

    public DataND(int dia, int mes, int ano) { setData(dia, mes, ano); }

    private DataDMY converterData() {
        DataDMY dataDMY = new DataDMY(1, 1, 2000);
        if (spanDias < 0) dataDMY.decrementar();
        else if (spanDias > 0) dataDMY.incrementar();
        return dataDMY;
    }

    public void setData(int dia, int mes, int ano) {
        //int anos = Math.abs(ano - 2000);
        //int meses = Math.abs(mes - 1);
        //int dias = Math.abs(dia - 1);
    }

    public int getDia() { return this.converterData().getDia(); }

    public int getMes() { return this.converterData().getMes(); }

    public int getAno() { return this.converterData().getAno(); }

    public void incrementar() { spanDias++; }
    public void decrementar() { spanDias--; }

    public int comparar(DataND data) {
        if (this.spanDias == data.spanDias) return 0;
        else if (this.spanDias < data.spanDias) return -1;
        else return 1;
    }
    
}