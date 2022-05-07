package aula08.exec1;
import java.util.*;

public class EmpresaAluguer {
    private String nome, codigo_postal, email;
    private List<Veiculo> frota = new ArrayList<Veiculo>();

    public EmpresaAluguer(String nome, String codigo_postal, String email) {
        this.setNome(nome);
        this.setCodigoPostal(codigo_postal);
        this.setEmail(email);
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        if (nome == null || nome.equals(""))
            throw new IllegalArgumentException("nome invalido");
        this.nome = nome;
    }

    public String getCodigoPostal() {
        return codigo_postal;
    }

    public void setCodigoPostal(String codigo_postal) {
        if (codigo_postal == null || codigo_postal.equals(""))
            throw new IllegalArgumentException("codigo postal invalido");
        this.codigo_postal = codigo_postal;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        if ((email == null || email.equals(""))||(!email.contains("@")))
            throw new IllegalArgumentException("email invalido");
        this.email = email;
    }

    public List<Veiculo> getFrota() {
        return frota;
    }

    public void addVeiculo(Veiculo veiculo) {
        frota.add(veiculo);
    }

    public void removeVeiculo(Veiculo veiculo) {
        frota.remove(veiculo);
    }
}
