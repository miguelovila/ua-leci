package aula08.exec2;

public class PratoVegetariano extends Prato {
    public PratoVegetariano(String nome) {
        super(nome);
    }

    @Override
    public boolean addIngrediente(Alimento alimento) {
        if (!alimento.isVegetariano()) return false;
        return super.addIngrediente(alimento);
    }

    @Override
    public String toString() {
        return "Prato '" + this.getNome() + "', composto por " + alimentos.size() + " Ingredientes - Prato Vegetariano";
    }
}
