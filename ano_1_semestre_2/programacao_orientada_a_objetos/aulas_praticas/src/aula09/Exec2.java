package aula09;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.HashSet;
import java.util.TreeSet;
import java.util.Collection;
import java.util.Iterator;

public class Exec2 {

  public static void main(String[] args) {
    Collection<Integer> col1 = new ArrayList<>();
    Collection<Integer> col2 = new LinkedList<>();
    Collection<Integer> col3 = new HashSet<>();
    Collection<Integer> col4 = new TreeSet<>();

    System.out.printf("Collection    1000    5000    10000    20000    40000    100000\n");
    System.out.print(writePerformance(col1));
    System.out.print(writePerformance(col2));
    System.out.print(writePerformance(col3));
    System.out.print(writePerformance(col4));
  }

  private static String writePerformance(Collection<Integer> col) {
    String title = String.format("%s\n",col.getClass().getSimpleName());
    String add = String.format("%s %4.1f %7.1f %8.1f %8.1f %8.1f %9.1f\n",
            "  add        ",
            checkPerformanceAdd(col, 1000),
            checkPerformanceAdd(col, 5000),
            checkPerformanceAdd(col, 10000),
            checkPerformanceAdd(col, 20000),
            checkPerformanceAdd(col, 40000),
            checkPerformanceAdd(col, 100000));
    String search = String.format("%s %4.1f %7.1f %8.1f %8.1f %8.1f %9.1f\n",
            "  search     ",
            checkPerformanceSearch(col, 1000),
            checkPerformanceSearch(col, 5000),
            checkPerformanceSearch(col, 10000),
            checkPerformanceSearch(col, 20000),
            checkPerformanceSearch(col, 40000),
            checkPerformanceSearch(col, 100000));
    String remove = String.format("%s %4.1f %7.1f %8.1f %8.1f %8.1f %9.1f\n",
            "  remove     ",
            checkPerformanceRemove(col, 1000),
            checkPerformanceRemove(col, 5000),
            checkPerformanceRemove(col, 10000),
            checkPerformanceRemove(col, 20000),
            checkPerformanceRemove(col, 40000),
            checkPerformanceRemove(col, 100000));
    return String.format("%s%s%s%s", title, add, search, remove);
  }

  private static double checkPerformanceAdd(Collection<Integer> col, int DIM) {
    double start, stop, delta, add;
    
    // Add
    start = System.nanoTime();
    for (int i = 0; i < DIM; i++)
      col.add(i);
    stop = System.nanoTime();
    delta = (stop - start) / 1e6;
    add = delta;

    col.clear();
    return add;
  }

  private static double checkPerformanceSearch(Collection<Integer> col, int DIM) {
    double start, stop, delta, search;
  
    for (int i = 0; i < DIM; i++)
      col.add(i);
 
    // Search
    start = System.nanoTime();
    for (int i = 0; i < DIM; i++) {
      int n = (int) (Math.random() * DIM);
      if (!col.contains(n))
        System.out.println("Not found???" + n);
    }
    stop = System.nanoTime();
    delta = (stop - start) / 1e6;
    search = delta;

    col.clear();
    return search;
  }

  private static double checkPerformanceRemove(Collection<Integer> col, int DIM) {
    double start, stop, delta, remove;
    for (int i = 0; i < DIM; i++)
      col.add(i);

    // Remove
    start = System.nanoTime();
    Iterator<Integer> iterator = col.iterator();
    while (iterator.hasNext()) {
      iterator.next();
      iterator.remove();
    }
    stop = System.nanoTime();
    delta = (stop - start) / 1e6;
    remove = delta;

    col.clear();
    return remove;
  }

}