package aula03;
import java.util.Scanner;
import java.util.ArrayList;

public class Exec8_Improved {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        ArrayList<Double> notas_p = new ArrayList<Double>();
        ArrayList<Double> notas_t = new ArrayList<Double>();
        final int num_alunos = 16;
        double notaP, notaT, notafinal;

        do {
            System.out.print("Nota da componente prática: ");
            notaP = sc.nextDouble();
            if ((notaP >= 0) && (notaP <= 20)) {
                notas_p.add(notaP);
            } else {
                System.out.println("Nota inválida!");
            }
        } while(notas_p.size() < num_alunos);
        do {
            System.out.print("Nota da componente teórica: ");
            notaT = sc.nextDouble();
            if ((notaT >= 0) && (notaT <= 20)) {
                notas_t.add(notaT);
            } else {
                System.out.println("Nota inválida!");
            }
        } while(notas_t.size() < num_alunos);
        sc.close();

        System.out.println(" Nota T Nota P Pauta ");
        for (int i = 0; i < notas_p.size(); i ++) {
            if ((notas_p.get(i) < 7.0) || (notas_t.get(i) < 7.0)) {
                notafinal = 66;
            } else {
                notafinal = 0.4*notas_t.get(i) + 0.6*notas_p.get(i);
            }
            System.out.printf(" %6.1f %6.1f %5.1f \n", notas_t.get(i), notas_p.get(i), notafinal);
        }
    }
}