package aula09;

import java.util.ArrayList;
import java.util.Set;
import java.util.TreeSet;
import java.util.HashSet;
import java.util.Collections;
import aula06.Pessoa;
import aula07.exec2.*;

public class Exec1 {

    public static void main(String[] args) {
        a();
        b();
        c();
    }

    public static void a() {
        ArrayList<Integer> c1 = new ArrayList<>();
        for (int i = 10; i <= 100; i += 10)
            c1.add(i);
        System.out.println("Size: " + c1.size());
        for (int i = 0; i < c1.size(); i++)
            System.out.println("Elemento: " + c1.get(i));

        ArrayList<String> c2 = new ArrayList<>();
        c2.add("z");
        c2.add("b");
        c2.add("a");
        c2.add("c");
        System.out.println(c2.indexOf("Chuva"));
        System.out.println(c2);
        System.out.println(c2.indexOf("a"));
        Collections.sort(c2);
        System.out.println(c2.indexOf("a"));
        System.out.println(c2);
        c2.remove("z");
        c2.remove(0);
        System.out.println(c2);
    }

    public static void b() {
        Set<Pessoa> c3 = new HashSet<>();
        c3.add(new Pessoa("João", 123456789, new aula05.Data(1, 1, 2000)));
        c3.add(new Pessoa("Maria", 234942901, new aula05.Data(1, 1, 2010)));
        c3.add(new Pessoa("Pedro", 111111111, new aula05.Data(1, 1, 2000)));
        c3.add(new Pessoa("João", 222333444, new aula05.Data(1, 1, 2100)));
        c3.add(new Pessoa("Camila", 1111111111, new aula05.Data(1, 1, 2003)));
        c3.add(new Pessoa("Camila", 1111111111, new aula05.Data(1, 1, 2003)));
        c3.add(new Pessoa("Camila", 1111111111, new aula05.Data(1, 1, 2003)));

        for (Pessoa pessoa : c3) {
            System.out.println(pessoa);
        }
    }

    public static void c() {
        Set<Data> c4 = new TreeSet<>();
        c4.add(new DataDMY(1, 1, 2001));
        c4.add(new DataDMY(1, 4, 2004));
        c4.add(new DataDMY(1, 5, 2005));
        c4.add(new DataDMY(1, 6, 2000));
        c4.add(new DataDMY(1, 7, 2006));
        c4.add(new DataND(1, 8, 2007));

        for (Data data : c4) {
            System.out.println(data);
        }
    }
}