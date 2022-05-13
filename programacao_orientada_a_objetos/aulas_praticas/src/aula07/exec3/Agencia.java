package aula07.exec3;
import java.util.*;  
public class Agencia {
    private String nome, endereco;
    List<Alojamento> alojamentos = new ArrayList<Alojamento>();
    List<Carro> frota = new ArrayList<Carro>();

    public Agencia(String nome, String endereco) {
        this.setNome(nome);
        this.setEndereco(endereco);
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        if (nome == null || nome.equals("")) throw new IllegalArgumentException("nome invalido");
        this.nome = nome;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        if (endereco == null || endereco.equals("")) throw new IllegalArgumentException("endereco invalido");
        this.endereco = endereco;
    }

    public void addAlojamento(Alojamento alojamento) {
        this.alojamentos.add(alojamento);
    }

    public void addCarro(Carro carro) {
        this.frota.add(carro);
    }

    public void removeAlojamentoPorCodigo(String codigo) {
        for (Alojamento alojamento : this.alojamentos) {
            if (alojamento.getCodigo().equals(codigo)) {
                this.alojamentos.remove(alojamento);
                return;
            }
        }
        throw new IllegalArgumentException("alojamento nao encontrado");
    }

    public void removeCarroPorCodigo(String codigo) {
        for (Carro carro : this.frota) {
            if (carro.getCodigo().equals(codigo)) {
                this.frota.remove(carro);
                return;
            }
        }
        throw new IllegalArgumentException("carro nao encontrado");
    }

    public void checkInPorCodigo(String codigo) {
        for (Alojamento alojamento : this.alojamentos) {
            if (alojamento.getCodigo().equals(codigo)) {
                alojamento.checkIn();
                return;
            }
        }
        throw new IllegalArgumentException("alojamento nao encontrado");
    }

    public void checkOutPorCodigo(String codigo) {
        for (Alojamento alojamento : this.alojamentos) {
            if (alojamento.getCodigo().equals(codigo)) {
                alojamento.checkOut();
                return;
            }
        }
        throw new IllegalArgumentException("alojamento nao encontrado");
    }

    public void levantarPorCodigo(String codigo) {
        for (Carro carro : this.frota) {
            if (carro.getCodigo().equals(codigo)) {
                carro.levantar();
                return;
            }
        }
        throw new IllegalArgumentException("carro nao encontrado");
    }

    public void entregarPorCodigo(String codigo) {
        for (Carro carro : this.frota) {
            if (carro.getCodigo().equals(codigo)) {
                carro.entregar();
                return;
            }
        }
        throw new IllegalArgumentException("carro nao encontrado");
    }

    public List<Alojamento> getAlojamentos() {
        return this.alojamentos;
    }

    public List<Carro> getFrota() {
        return this.frota;
    }

    public String toString() {
        return "Agencia{" + "nome=" + this.getNome() + ", endereco=" + this.getEndereco() + ", alojamentos=" + this.getAlojamentos() + ", frota=" + this.getFrota() + '}';
    }
}
