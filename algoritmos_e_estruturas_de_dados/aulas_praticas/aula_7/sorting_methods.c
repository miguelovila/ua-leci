//
// (C) Tomás Oliveira e Silva, AED, December 2020
//
// sorting algorithms
//

#include <math.h>
#include <time.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "sorting_methods.h"
#include "./elapsed_time.h"

void show(T *data,int first,int one_after_last)
{
  int i;

  printf("[%2d,%2d]",first,one_after_last - 1);
  for(i = first;i < one_after_last;i++)
    printf(" %5d",data[i]);
  printf("\n");
}

int main(int argc,char *argv[argc])
{
  static struct
  {
    sort_function_t function;
    char *name;
  }
  functions[] =
  {
#define EXPAND(name)  { name,# name }
    EXPAND(bubble_sort),
    EXPAND(shaker_sort),
    EXPAND(insertion_sort),
    EXPAND(Shell_sort),
    EXPAND(quick_sort),
    EXPAND(merge_sort),
    EXPAND(heap_sort),
    EXPAND(tree_sort),
    EXPAND(rank_sort),
    EXPAND(selection_sort)
#undef EXPAND
  };
#define N_FUNCTIONS (int)(sizeof(functions) / sizeof(functions[0]))

  //
  // test the functions
  //
  if(argc == 2 && strcmp(argv[1],"-test") == 0)
  {
# define MAX_N   1000  // test array sizes up to this limit
# define N_TESTS  100  // number of tests to perform for each array size
    int i,j,k,n,first,one_after_last;
    T master[MAX_N],data[MAX_N];

    srand((unsigned int)time(NULL));
    for(n = 1;n <= MAX_N;n++)
    {
      for(i = 0;i < n;i++)
        master[i] = (T)((int)rand() % MAX_N);
      first = 0;
      one_after_last = n;
      for(j = 0;j < N_TESTS;j++)
      {
        fprintf(stderr,"%4d[%4d,%4d] \r",n,first,one_after_last);
        for(k = 0;k < N_FUNCTIONS;k++)
        {
          for(i = 0;i < first;i++)
            data[i] = (T)(-1);
          for(;i < one_after_last;i++)
            data[i] = master[i];
          for(;i < n;i++)
            data[i] = (T)(-1);
          (*functions[k].function)(data,first,one_after_last);
          if(data[first] < (T)(0) || (first > 0 && data[first - 1] != (T)(-1)) || (one_after_last < n && data[one_after_last] != (T)(-1)))
          {
            fprintf(stderr,"%s() failed for n=%d, first=%d, and one_after_last=%d (access error) --- 😒\n",functions[k].name,n,first,one_after_last);
            exit(1);
          }
          for(i = first + 1;i < one_after_last;i++)
            if(data[i] < data[i - 1])
            {
              show(data,first,one_after_last);
              fprintf(stderr,"%s() failed for n=%d, first=%d, and one_after_last=%d (sort error for i=%d) --- 😒\n",functions[k].name,n,first,one_after_last,i);
              exit(1);
            }
        }
        first = (int)rand() % (1 + (3 * n) / 4);
        do
          one_after_last = (int)rand() % (1 + n);
        while(one_after_last <= first);
      }
    }
    //
    // done
    //
    printf("No errors found --- 😀\n");
    return 0;
# undef MAX_N
# undef N_TESTS
  }
  //
  // measure the cpu time of all sorting routines
  //
  if(argc == 2 && strcmp(argv[1],"-measure") == 0)
  {
# define MAX_N             10000  // largest array size
# define N_MEASUREMENTS      100  // number of measurements to perform for each value of n
# define N_EXTRA              10  // half the number of extra measurements (to discard N_EXTRA possible outliers on each side)
# define MAX_TIME           60.0  // maximum amount of time, in seconds, spent in a value of n
    double v,w,t[N_MEASUREMENTS + 2 * N_EXTRA];
    int f_idx,n_idx,n,i,j;
    T *data;

    data = (T *)malloc((size_t)MAX_N * sizeof(T));
    if(data == NULL)
    {
      fprintf(stderr,"unable to allocate memory for the data array --- 😒\n");
      exit(1);
    }
    for(f_idx = 0;f_idx < N_FUNCTIONS;f_idx++)
    {
      char fp_name[100];
      sprintf(fp_name,"%s.txt",functions[f_idx].name);

      FILE *fp = fopen(fp_name,"w");
      if(fp == NULL)
      {
        fprintf(stderr,"unable to open file %s.txt --- 😒\n",functions[f_idx].name);
        exit(1);
      }

      fprintf(fp, "# %s\n",functions[f_idx].name);
      fprintf(fp, "#      n  min time  max time  avg time   std dev\n");
      fprintf(fp, "#------- --------- --------- --------- ---------\n");
      for(n_idx = 10;n_idx <= 80;n_idx++)
      {
        n = (int)round(pow(10.0,0.1 * (double)n_idx));
        if(n <= MAX_N)
        {
          srand((unsigned int)n_idx); // make sure are sorting routines receive the same data
          for(i = 0;i < N_MEASUREMENTS + 2 * N_EXTRA;i++)
          {
            for(j = 0;j < n;j++)
              data[j] = (T)rand();
            v = cpu_time();
            (*functions[f_idx].function)(data,0,n);
            v = cpu_time() - v;
            // insertion sort!
            for(j = i;j > 0 && t[j - 1] > v;j--)
              t[j] = t[j - 1];
            t[j] = v;
          }
          v = 0.0;
          for(i = N_EXTRA;i < N_EXTRA + N_MEASUREMENTS;i++)
            v += t[i];
          v /= (double)N_MEASUREMENTS;
          w = 0.0;
          for(i = N_EXTRA;i < N_EXTRA + N_MEASUREMENTS;i++)
            w += (t[i] - v) * (t[i] - v);
          w /= (double)N_MEASUREMENTS;
          fprintf(fp, "%8d %.3e %.3e %.3e %.3e\n",n,t[N_EXTRA],t[N_EXTRA + N_MEASUREMENTS - 1],v,sqrt(w));
          fflush(stdout);
          if((double)N_MEASUREMENTS * v >= MAX_TIME)
            break; // too much time spent on this value of n; skip the remaining ones
        }
      }
      fprintf(fp, "#------- --------- --------- --------- ---------\n");
      fprintf(fp,"\n\n");
      fclose(fp);
      fflush(stdout);
    }
    free(data);
    return 0;
# undef MAX_N
# undef N_MEASUREMENTS
# undef N_EXTRA
# undef MAX_TIME
  }
  //
  // usage message
  //
  fprintf(stderr,"usage: %s -test     # test all sorting routines\n",argv[0]);
  fprintf(stderr,"       %s -measure  # measure the CPU time of all sorting routines\n",argv[0]);
  return 1;
}
