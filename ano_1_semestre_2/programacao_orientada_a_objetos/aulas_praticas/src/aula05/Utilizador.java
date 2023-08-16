package aula05;
import java.util.ArrayList;

public class Utilizador {
    private String nome, curso; private int n_mec;
    private ArrayList<Integer> ids_requisitados = new ArrayList<>();

    Utilizador(String nome, int n_mec, String curso) {
        this.setNome(nome);
        this.setNumMec(n_mec);
        this.setCurso(curso);
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getNome() {
        return this.nome;
    }

    public void setNumMec(int n_mec) {
        this.n_mec = n_mec;
    }

    public int getNumMec() {
        return this.n_mec;
    }

    public void setCurso(String curso) {
        this.curso = curso;
    }

    public String getCurso() {
        return this.curso;
    }

    public String getRequisitados() {
        String s = "";
        for (Integer id : this.ids_requisitados) {
            s += " " + id;
        }
        return s;
    }

    public int getNumRequisitados() {
        return this.ids_requisitados.size();
    }

    public String toString() {
        return "Aluno: " + this.getNumMec() + "; " + this.getNome() + "; " + this.getCurso() + ";" + this.getRequisitados();
    }

    public void requisitar(int id) {
        this.ids_requisitados.add(id);
    }

    public void devolver(int id) {
        for (Integer id_requisitado : this.ids_requisitados) {
            if (id_requisitado == id) {
                this.ids_requisitados.remove(id_requisitado);
                break;
            }
        }
    }
}
