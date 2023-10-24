package aula06;

import java.util.*;

public class Conjunto {
    private Vector<Integer> conjunto = new Vector<Integer>(0);

    public void inserir(int x) {
        if (this.conjunto.contains(x))
            return;
        this.conjunto.addElement(x);
    }

    public boolean contem(int x) {
        return this.conjunto.contains(x);
    }

    public void remover(int x) {
        this.conjunto.removeElement(x);
    }

    public void removerTudo() {
        this.conjunto.removeAllElements();
    }

    public String toString() {
        return this.conjunto.toString();
    }

    public int tamanho() {
        return this.conjunto.size();
    }

    public Conjunto uniao(Conjunto c) {
        Conjunto resultado = new Conjunto();
        for (int i = 0; i < this.tamanho(); i++) {
            resultado.inserir(this.conjunto.elementAt(i));
        }
        for (int i = 0; i < c.tamanho(); i++) {
            resultado.inserir(c.conjunto.elementAt(i));
        }
        return resultado;
    }

    public Conjunto subtracao(Conjunto c) {
        Conjunto resultado = new Conjunto();
        for (int i = 0; i < this.tamanho(); i++) {
            if (!c.contem(this.conjunto.elementAt(i))) {
                resultado.inserir(this.conjunto.elementAt(i));
            }
        }
        return resultado;
    }

    public Conjunto intersecao(Conjunto c) {
        Conjunto resultado = new Conjunto();
        for (int i = 0; i < this.tamanho(); i++) {
            if (c.contem(this.conjunto.elementAt(i))) {
                resultado.inserir(this.conjunto.elementAt(i));
            }
        }
        return resultado;
    }
}