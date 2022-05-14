package aula07.exec1;
import java.util.Scanner;

public class Exec1 {
    
    public static void main(String[] args) {
        Scanner main_scanner = new Scanner(System.in);
        Circulo c1 = new Circulo(0, "preto");
        Circulo c2 = new Circulo(0, "preto");
        Retangulo r1 = new Retangulo(0,0,"preto");
        Retangulo r2 = new Retangulo(0,0,"preto");
        Triangulo t1 = new Triangulo(0,0,0,"preto");
        Triangulo t2 = new Triangulo(0,0,0,"preto");

        int escolha = 0;
        do {
            System.out.println("===============================");
            System.out.println("1 - Criar circulos");
            System.out.println("2 - Criar retangulos");
            System.out.println("3 - Criar triangulos");
            System.out.println("4 - Mostrar figuras");
            System.out.println("5 - Comparar figuras");
            System.out.println("6 - Sair");
            System.out.print("Opção: ");
            escolha = main_scanner.nextInt();
            main_scanner.nextLine();
            if (escolha == 1) criarCirculos(c1, c2, main_scanner);
            if (escolha == 2) criarRetangulos(r1, r2, main_scanner);
            if (escolha == 3) criarTriangulos(t1, t2, main_scanner);
            if (escolha == 4) mostrarFiguras(c1, c2, r1, r2, t1, t2);
            if (escolha == 5) compararFiguras(c1, c2, r1, r2, t1, t2);
        } while(escolha!=6);
    }

    private static void criarCirculos(Circulo c1, Circulo c2, Scanner scanner) {
        System.out.println("Criar circulo 1");
        criarCirculo(c1, scanner);
        System.out.println("Criar circulo 2");
        criarCirculo(c2, scanner);
    }

    private static void criarRetangulos(Retangulo r1, Retangulo r2, Scanner scanner) {
        System.out.println("Criar retangulo 1");
        criarRetangulo(r1, scanner);
        System.out.println("Criar retangulo 2");
        criarRetangulo(r2, scanner);
    }

    private static void criarTriangulos(Triangulo t1, Triangulo t2, Scanner scanner) {
        System.out.println("Criar triangulo 1");
        criarTriangulo(t1, scanner);
        System.out.println("Criar triangulo 2");
        criarTriangulo(t2, scanner);
    }

    private static void mostrarFiguras(Circulo c1, Circulo c2, Retangulo r1, Retangulo r2, Triangulo t1, Triangulo t2) {
        System.out.println("  Circulo 1: " + c1.toString());
        System.out.println("  Circulo 2: " + c2.toString());
        System.out.println("Retangulo 1: " + r1.toString());
        System.out.println("Retangulo 2: " + r2.toString());
        System.out.println("Triangulo 1: " + t1.toString());
        System.out.println("Triangulo 2: " + t2.toString());
    }

    private static void compararFiguras(Circulo c1, Circulo c2, Retangulo r1, Retangulo r2, Triangulo t1, Triangulo t2) {
        System.out.println("  Circulo 1 == Circulo 2  : " + c1.equals(c2));
        System.out.println("Retangulo 1 == Retangulo 2: " + r1.equals(r2));
        System.out.println("Triangulo 1 == Triangulo 2: " + t1.equals(t2));
    }

    private static void criarCirculo(Circulo c, Scanner scanner) {
        do {
            try {
                System.out.print("Introduza o raio do circulo: ");
                c.setRaio(scanner.nextFloat());
                scanner.nextLine();
                System.out.print("Introduza a cor do circulo: ");
                c.setCor(scanner.nextLine());
                if (c.isFigValida()) {
                    break;
                } else {
                    System.out.println("ERRO: O raio tem de ser maior que 0!");
                }
            } catch(Exception e) {
                scanner.nextLine();
                System.out.println("ERRO: O valor introduzido tem de ser inteiro!");
            }
        }while(true);
    }

    private static void criarRetangulo(Retangulo r, Scanner scanner) {
        do {
            try {
                System.out.print("Introduza a altura do retângulo: ");
                r.setAltura(scanner.nextFloat());
                scanner.nextLine();
                System.out.print("Introduza o comprimento do retângulo: ");
                r.setComprimento(scanner.nextFloat());
                scanner.nextLine();
                System.out.print("Introduza a cor do retângulo: ");
                r.setCor(scanner.nextLine());
                if (r.isFigValida()) {
                    break;
                } else {
                    System.out.println("ERRO: As dimensões têm de ser maiores que 0!");
                }
            } catch(Exception e) {
                scanner.nextLine();
                System.out.println("ERRO: O valor introduzido tem de ser inteiro!");
            }
        }while(true);
    }

    private static void criarTriangulo(Triangulo t, Scanner scanner) {
        do {
            try {
                double lado1, lado2, lado3;
                System.out.print("Introduza o lado 1 do triângulo: ");
                lado1 = scanner.nextFloat();
                scanner.nextLine();
                System.out.print("Introduza o lado 2 do triângulo: ");
                lado2 = scanner.nextFloat();
                scanner.nextLine();
                System.out.print("Introduza o lado 3 do triângulo: ");
                lado3 = scanner.nextFloat();
                scanner.nextLine();
                System.out.print("Introduza a cor do triângulo: ");
                t.setCor(scanner.nextLine());
                t.setLados(lado1, lado2, lado3);
                if (t.isFigValida()) {
                    break;
                } else {
                    System.out.println("ERRO: As dimensões têm de ser maiores que 0 e o triângulo tem de satisfazer a desigualdade triangular!");
                }
            } catch(Exception e) {
                scanner.nextLine();
                System.out.println("ERRO: O valor introduzido tem de ser inteiro!");
            }
        }while(true);
    }

}
