package aula08.exec2;

public class PratoDieta extends Prato {
    private double max_calorias;

    public PratoDieta(String nome, double max_calorias) {
        super(nome);
        this.max_calorias = max_calorias;
    }

    @Override
    public boolean addIngrediente(Alimento alimento) {
        if (this.getCalorias() + alimento.getCalorias() > max_calorias) return false;
        return super.addIngrediente(alimento);
    }

    @Override
    public String toString() {
        return String.format("Prato '%s', composto por %d Ingredientes - Dieta (%.2f calorias)", this.getNome(), alimentos.size(), this.getCalorias());
    }
}
