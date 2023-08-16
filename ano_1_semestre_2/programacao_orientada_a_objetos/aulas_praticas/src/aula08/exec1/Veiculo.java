package aula08.exec1;

public abstract class Veiculo implements KmPercorridos {
    private static int id_counter = 1;
    private String matricula, marca, modelo;
    private int potencia, quilometros_percorridos, ultimo_trajeto, id;

    public Veiculo(String matricula, String marca, String modelo, int potencia) {
        this.setMatricula(matricula);
        this.setMarca(marca);
        this.setModelo(modelo);
        this.setPotencia(potencia);
        this.setId();
    }

    public void trajeto(int quilometros) {
        if (quilometros <= 0) throw new IllegalArgumentException("quilometros invalidos");
        this.ultimo_trajeto = quilometros;
        this.quilometros_percorridos += quilometros;
    }

    public int distanciaTotal() {
        return this.quilometros_percorridos;
    }

    public int ultimoTrajeto() {
        return ultimo_trajeto;
    }

    protected void setId() {
        this.id = id_counter++;
    }

    public int getId() {
        return this.id;
    }

    public String getMatricula() {
        return matricula;
    }

    public void setMatricula(String matricula) {
        if (matricula == null || matricula.equals("") || matricula.length()!=8 || matricula.charAt(2)!='-' || matricula.charAt(5)!='-') throw new IllegalArgumentException("matricula invalida");
        this.matricula = matricula;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        if (marca == null || marca.equals("")) throw new IllegalArgumentException("marca invalida");
        this.marca = marca;
    }

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        if (modelo == null || modelo.equals("")) throw new IllegalArgumentException("modelo invalido");
        this.modelo = modelo;
    }

    public int getPotencia() {
        return potencia;
    }

    public void setPotencia(int potencia) {
        if (potencia <= 0) throw new IllegalArgumentException("potencia invalida");
        this.potencia = potencia;
    }
}
