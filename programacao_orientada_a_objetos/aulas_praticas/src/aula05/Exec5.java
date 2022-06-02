package aula05;
import java.util.Scanner;
import java.util.ArrayList;

public class Exec5 {
    static Scanner scanner = new Scanner(System.in);
    static ArrayList<Utilizador> alunos = new ArrayList<>();
    static ArrayList<Livro> livros = new ArrayList<>();
    public static void main(String[] args) {
        int escolha = 0;
        do {
            System.out.println("============ MENU ============");
            System.out.println("1 - Adicionar utilizador");
            System.out.println("2 - Remover utilizador");
            System.out.println("3 - Listar utilizadores");
            System.out.println("4 - Adicionar livro");
            System.out.println("5 - Listar livros");
            System.out.println("6 - Requisitar livro");
            System.out.println("7 - Devolver livro");
            System.out.println("8 - Sair");
            System.out.println("==============================");
            System.out.print(">>> ");
            escolha = scanner.nextInt();
            scanner.nextLine();
            System.out.println("==============================");
            if (escolha == 1) adicionarUtilizador();
            if (escolha == 2) removerUtilizador();
            if (escolha == 3) listarUtilizadores();
            if (escolha == 4) adicionarLivro();
            if (escolha == 5) listarLivros();
            if (escolha == 6) requisitarLivro();
            if (escolha == 7) devolverLivro();
        } while(escolha!=8);
        scanner.close();
    }

    public static void adicionarUtilizador() {
        if (alunos.size() < 100) {
            System.out.print("Nome: "); String nome = scanner.nextLine();
            System.out.print("Numero mec: "); int n_mec = scanner.nextInt();
            scanner.nextLine();
            System.out.print("Curso: "); String curso = scanner.nextLine();
            alunos.add(new Utilizador(nome, n_mec, curso));
        } else {
            System.out.println("ERRO: Não é possível adicionar mais utilizadores!");
        }
    }

    public static void removerUtilizador() {
        System.out.print("Numero mec: "); int n_mec = scanner.nextInt();
        scanner.nextLine();
        for (Utilizador aluno : alunos) {
            if (aluno.getNumMec() == n_mec) {
                alunos.remove(aluno);
                return;
            }
        }
        System.out.println("ERRO: Não foi encontrado nenhum utilizador com o número mecanográfico " + n_mec);
    }

    public static void listarUtilizadores() {
        for (Utilizador aluno : alunos) {
            System.out.println(aluno);
        }
    }

    public static void adicionarLivro() {
        if (livros.size() < 100) {
            System.out.print("Titulo: "); String titulo = scanner.nextLine();
            System.out.print("Tipo de Empréstimo: "); String t_imprestimo = scanner.nextLine();
            livros.add(new Livro(titulo, t_imprestimo));
        } else {
            System.out.println("ERRO: Não é possível adicionar mais livros!");
        }
    }

    public static void listarLivros() {
        for (Livro livro : livros) {
            System.out.println(livro);
        }
    }

    public static void requisitarLivro() {
        System.out.print("Numero mec: "); int n_mec = scanner.nextInt();
        scanner.nextLine();
        System.out.print("ID Livro: "); int id = scanner.nextInt();
        scanner.nextLine();
        for (Utilizador aluno : alunos) {
            if (aluno.getNumMec() == n_mec) {
                if (aluno.getNumRequisitados()<3) {
                    for (Livro livro : livros) {
                        if (livro.getId() == id) {
                            if (livro.getTipoEmprestimo().equals("NORMAL")) {
                                aluno.requisitar(livro.getId());
                                livro.setTipoEmprestimo("CONDICIONAL");
                                return;
                            } else {
                                System.out.println("ERRO: O livro " + livro.getTitulo() + " não pode ser emprestado!");
                                return;
                            }
                        }
                    }
                    System.out.println("ERRO: Não foi encontrado nenhum livro com o ID " + id);
                    return;
                } else {
                    System.out.println("ERRO: O utilizador " + aluno.getNome() + " não pode requisitar mais livros!");
                    return;
                }  
            }
        }
        System.out.println("ERRO: Não foi encontrado nenhum utilizador com o número mecanográfico " + n_mec);
    }

    public static void devolverLivro() {
        System.out.print("Numero mec: "); int n_mec = scanner.nextInt();
        scanner.nextLine();
        System.out.print("ID Livro: "); int id = scanner.nextInt();
        scanner.nextLine();
        for (Utilizador aluno : alunos) {
            if (aluno.getNumMec() == n_mec) {
                for (Livro livro : livros) {
                    if (livro.getId() == id) {
                        aluno.devolver(livro.getId());
                        livro.setTipoEmprestimo("NORMAL");
                        return;
                    }
                }
                System.out.println("ERRO: Não foi encontrado nenhum livro com o ID " + id);
                return;
            }
        }
        System.out.println("ERRO: Não foi encontrado nenhum utilizador com o número mecanográfico " + n_mec);
    }

}
