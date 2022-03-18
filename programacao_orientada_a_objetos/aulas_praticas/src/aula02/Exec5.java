package aula02;
import java.util.Scanner;

public class Exec5 {
    public static void main(String[] args) {
        // Declaração de variáveis
        // Inicialização do scanner para leitura dos dados
        double dst_1, dst_2, vel_1, vel_2, vel_f;
        Scanner val_input = new Scanner(System.in);

        // Leitura dos dados
        System.out.print("Velocidade 1 (m/s): ");
        vel_1 = val_input.nextDouble();
        System.out.print("Distância 1    (m): ");
        dst_1 = val_input.nextDouble();
        System.out.print("Velocidade 2 (m/s): ");
        vel_2 = val_input.nextDouble();
        System.out.print("Distância 2    (m): ");
        dst_2 = val_input.nextDouble();
        val_input.close();

        // Cáculo da velocidade média final -> velocidade_média_final=distância_total/tempo_total
        // v1=d1/t1 e v2=d2/t2 <-> t1=d1/v1 e t2=d2/v2
        // distância_total=d1+d2 tempo_total=(d1/v1)+(d2/v2) -> velocidade_média_final=(d1+d2)/((d1/v1)+(d2/v2))
        vel_f = (dst_1+dst_2)/((dst_1/vel_1)+(dst_2/vel_2));

        // Apresentação do resultado
        System.out.println("============== RESULTADO ==============");
        System.out.println(String.format("Velocidade média final (m/s): %.2f", vel_f));
    }
}
