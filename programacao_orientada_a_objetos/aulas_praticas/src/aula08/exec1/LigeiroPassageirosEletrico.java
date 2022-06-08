package aula08.exec1;

public class LigeiroPassageirosEletrico extends LigeiroPassageiros implements VeiculoEletrico {
    private int autonomia_max, autonomia_restante;

    public LigeiroPassageirosEletrico(String matricula, String marca, String modelo, int potencia, int numero_do_quadro, float capacidade_bagageira, int autonomia_max) {
        super(matricula, marca, modelo, potencia, numero_do_quadro, capacidade_bagageira);
        if (autonomia_max <= 0) throw new IllegalArgumentException("autonomia invalida");
        this.autonomia_max = autonomia_max;
        this.autonomia_restante = autonomia_max;
    }

    public int getAutonomiaMax() {
        return this.autonomia_max;
    }

    public int autonomia() {
        return this.autonomia_restante;
    }

    private void setAutonomiaRestante(int autonomia) {
        this.autonomia_restante = autonomia;
    }

    public void carregar(int percentagem) {
        if (percentagem < 0 || percentagem > 100) throw new IllegalArgumentException("percentagem invalida");
        this.setAutonomiaRestante(this.autonomia_max * percentagem / 100);
    }

    private void descarregar(int autonomia) {
        if (autonomia < 0) throw new IllegalArgumentException("autonomia invalida");
        this.setAutonomiaRestante(this.autonomia_restante - autonomia);
    }

    @Override
    public void trajeto(int quilometros) {
        if (quilometros <= 0) throw new IllegalArgumentException("quilometros invalidos");
        super.trajeto(quilometros);
        this.descarregar(quilometros);
    }
}
