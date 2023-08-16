package aula06;

public class Exec2 {
    
    public static void main(String[] args) {
        Conjunto c1 = new Conjunto(); 
        c1.inserir(4); c1.inserir(7); c1.inserir(6); c1.inserir(5); 
        Conjunto c2 = new Conjunto(); 
        int[] test = { 7, 3, 2, 5, 4, 6, 7};

        for (int el : test) c2.inserir(el); 
        c2.remover(3);  c2.remover(5); c2.remover(6); 
 
        System.out.println(c1); 
        System.out.println(c2); 

        System.out.println("Número de elementos em c1: " + c1.tamanho()); 
        System.out.println("Número de elementos em c2: " + c2.tamanho()); 

        System.out.println("c1 contém 6?: " + ((c1.contem(6) ? "sim" : "não"))); 
        System.out.println("c2 contém 6?: " + ((c2.contem(6) ? "sim" : "não"))); 

        System.out.println("União:" + c1.uniao(c2));     
        System.out.println("Interseção:" + c1.intersecao(c2));  
        System.out.println("Diferença:" + c1.subtracao(c2)); 

        c1.removerTudo();  
        System.out.println("c1:" + c1); 
    }

}
