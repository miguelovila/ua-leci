package aula05;

public class Livro {
    private static int id_count = 100;
    private int id; private String titulo, tipo_emprestimo;

    Livro(String titulo, String tipo_emprestimo) {
        this.id = id_count++;
        this.setTitulo(titulo);
        this.setTipoEmprestimo(tipo_emprestimo);
    }

    Livro(String titulo) {
        this.id = id_count++;
        this.setTitulo(titulo);
        this.setTipoEmprestimo("NORMAL");
    }

    public int getId() {
        return this.id;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getTitulo() {
        return this.titulo;
    }

    public void setTipoEmprestimo(String tipo_emprestimo) {
        this.tipo_emprestimo = tipo_emprestimo;
    }

    public String getTipoEmprestimo() {
        return this.tipo_emprestimo;
    }

    public String toString() {
        return "Livro " + this.getId() + "; " + this.titulo + "; " + this.tipo_emprestimo;
    }
}
