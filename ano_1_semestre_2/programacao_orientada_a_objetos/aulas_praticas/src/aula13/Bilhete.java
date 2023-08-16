package aula13;

public class Bilhete {
    private Festival festival;
    private Pessoa titular;
    private int numero;

    public Bilhete(Festival festival, int numero) {
        this.festival = festival;
        this.numero = numero;
    }

    public Festival getFestival() {
        return festival;
    }

    public Pessoa getTitular() {
        return titular;
    }

    public int getNumero() {
        return numero;
    }

    public void setTitular(Pessoa titular) {
        this.titular = titular;
    }

    @Override
    public String toString() {
        return String.format("Festival: %s    Num: %d    Titular: %s", this.festival.getNome(), this.numero, this.titular);
    }
}
