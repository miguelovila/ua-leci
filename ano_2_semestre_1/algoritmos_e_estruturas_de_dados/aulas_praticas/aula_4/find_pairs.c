//
// Tomás Oliveira e Silva, AED, October 2021
//
// program to find all pairs (i,j) such that a[i] + a[j] == v
//
// data collection (bash script)
//   #! /bin/bash
//   for n in 1000 1259 1585 1995 2512 3162 3981 5012 6310 7943 \
//            10000 12589 15849 19953 25119 31623 39811 50119 63096 79433 \
//            100000 125893 158489 199526 251189 316228 398107 501187 630957 794328 \
//            1000000 1258925 1584893 1995262 2511886 3162278 3981072 5011872 6309573 7943282 \
//            10000000 12589254 15848932 19952623 25118864 31622777 39810717 50118723 63095734 79432823 \
//            100000000; do
//     echo $n
//     ./a.out $n 2>/dev/null >>/run/user/1000/find_pairs.log
//   done
//
// data (execution times obtained on a Intel(R) Core(TM) i7-5500U CPU @ 2.40GHz with turbo boost enabled)
//
//          n     counter 1  counter 2  counter 3     time 1     time 2     time 3
//  ---------  ------------  ---------  ---------  ---------  ---------  ---------
//       1000        499500       2000        746  3.928e-03  1.305e-03  1.301e-04
//       1259        791911       2518        940  2.560e-03  1.464e-03  1.622e-04
//       1585       1255320       3170       1189  3.788e-03  1.317e-03  1.393e-04
//       1995       1989015       3990       1508  4.274e-03  1.833e-03  1.981e-04
//       2512       3153816       5024       1890  6.902e-03  2.610e-03  2.290e-04
//       3162       4997541       6324       2368  1.087e-02  2.199e-03  2.833e-04
//       3981       7922190       7962       2968  1.712e-02  3.040e-03  3.616e-04
//       5012      12557566      10024       3744  2.730e-02  3.759e-03  4.614e-04
//       6310      19904895      12620       4736  4.350e-02  4.560e-03  5.899e-04
//       7943      31541653      15886       5991  6.904e-02  5.630e-03  7.531e-04
//      10000      49995000      20000       7504  1.088e-01  7.027e-03  9.658e-04
//      12589      79235166      25178       9451  1.703e-01  8.677e-03  1.241e-03
//      15849     125587476      31698      11710  2.707e-01  1.083e-02  1.583e-03
//      19953     199051128      39906      14798  4.248e-01  1.342e-02  2.033e-03
//      25119     315469521      50238      18671  6.767e-01  1.620e-02  2.611e-03
//      31623     499991253      63246      23877  1.067e+00  1.957e-02  3.384e-03
//      39811     792437955      79622      29788  1.691e+00  2.428e-02  4.334e-03
//      50119    1255932021     100238      37597  2.686e+00  2.914e-02  5.514e-03
//      63096    1990521060     126192      47490  4.263e+00  3.468e-02  7.145e-03
//      79433    3154761028     158866      59547  6.760e+00  4.024e-02  9.054e-03
//     100000    4999950000     200000      74937  1.080e+01  4.797e-02  1.203e-02
//     125893    7924460778     251786      94445  1.714e+01  5.280e-02  1.494e-02
//     158489   12559302316     316978     118510  2.701e+01  5.958e-02  1.908e-02
//     199526   19905212575     399052     149820  4.284e+01  6.572e-02  2.439e-02
//     251189   31547831266     502378     188590  6.783e+01  7.158e-02  3.147e-02
//     316228   49999915878     632456     237075  1.076e+02  7.644e-02  4.015e-02
//     398107   79244392671     796214     298811  1.705e+02  7.982e-02  5.127e-02
//     501187  125593953891    1002374     375774  2.702e+02  8.308e-02  6.595e-02
//     630957  199053052446    1261914     473453  4.271e+02  8.686e-02  8.446e-02
//     794328  315478088628    1588656     595512  6.686e+02  8.830e-02  1.076e-01
//    1000000  499999500000    2000000     750247  1.061e+03  9.118e-02  1.385e-01
//    1258925             0    2517850     944065          0  1.024e-01  1.771e-01
//    1584893             0    3169786    1188500          0  1.025e-01  2.279e-01
//    1995262             0    3990524    1496974          0  1.079e-01  2.898e-01
//    2511886             0    5023772    1884962          0  1.167e-01  3.708e-01
//    3162278             0    6324556    2373047          0  1.228e-01  4.723e-01
//    3981072             0    7962144    2986776          0  1.320e-01  6.068e-01
//    5011872             0   10023744    3759151          0  1.522e-01  7.725e-01
//    6309573             0   12619146    4731063          0  1.716e-01  9.889e-01
//    7943282             0   15886564    5958158          0  1.923e-01  1.269e+00
//   10000000             0   20000000    7500669          0  2.236e-01  1.616e+00
//   12589254             0   25178508    9440734          0  2.723e-01  2.058e+00
//   15848932             0   31697864   11885281          0  3.290e-01  2.655e+00
//   19952623             0   39905246   14965013          0  4.012e-01  3.387e+00
//   25118864             0   50237728   18842933          0  5.017e-01  4.313e+00
//   31622777             0   63245554   23720447          0  6.458e-01  5.570e+00
//   39810717             0   79621434   29857405          0  8.460e-01  7.115e+00
//   50118723             0  100237446   37587109          0  1.116e+00  9.109e+00
//   63095734             0  126191468   47320735          0  1.518e+00  1.179e+01
//   79432823             0  158865646   59574503          0  2.058e+00  1.515e+01
//  100000000             0  200000000   75000746          0  2.878e+00  1.945e+01
//  ---------  ------------  ---------  ---------  ---------  ---------  ---------
//                n*(n-1)/2        2*n   0.75*n+e   1e-9*n^2   O(n) ?   1e-8*n*log(n)
//

#include <time.h>
#include <stdio.h>
#include <stdlib.h>
#include "../P02/elapsed_time.h"

static long long counter1,counter2,counter3;

void find_pairs_v1(int *a,int n,int v)
{ // arbitrary input, try all distinct pairs
  int i,j;

  fprintf(stderr,"find_pairs_v1 output:\n");
  for(i = 0;i < n;i++)
    for(j = i + 1;j < n;j++)
    {
      counter1++;
      if(a[i] + a[j] == v)
        fprintf(stderr,"  %d %d\n",a[(a[i] <= a[j]) ? i : j],a[(a[i] <= a[j]) ? j : i]);
    }
}

void find_pairs_v2(int *a,int n,int v)
{ // positive input, use a lot of memory to speed things up
  char *pc;
  int i;

  if(v < 0)
    return;
  fprintf(stderr,"find_pairs_v2 output:\n");
  pc = (char *)calloc((size_t)(v + 1),sizeof(char));
  for(i = 0;i < n;i++)
  {
    counter2++;
    if(a[i] >= 0 && a[i] <= v)
      pc[a[i]] = 1;
  }
  for(i = 0;i < n;i++)
  {
    counter2++;
    if(a[i] >= 0 && 2 * a[i] < v && pc[v - a[i]] != 0)
      fprintf(stderr,"  %d %d\n",a[i],v - a[i]);
  }
  free(pc);
}

int int_cmp(const void *p1,const void *p2)
{
  if(*(int *)p1 < *(int *)p2)
    return -1;
  if(*(int *)p1 > *(int *)p2)
    return +1;
  return 0;
}

void find_pairs_v3(int *a,int n,int v)
{ // arbitrary input, sort input (call it last!)
  int i,j;

  fprintf(stderr,"find_pairs_v3 output:\n");
  qsort(a,n,sizeof(int),int_cmp); // sort a[]; the last argument is a pointer to a function!
  for(i = 0,j = n - 1;j > i;i++)
  {
    while(j > i && a[i] + a[j] > v)
    {
      counter3++;
      j--;
    }
    if(j > i && a[i] + a[j] == v)
      fprintf(stderr,"  %d %d\n",a[i],a[j]);
  }
}

int main(int argc,char **argv)
{
  double dt0, dt1,dt2,dt3;
  int i,j,n,*a;
  long long v;

  srand((unsigned int)time(NULL)); // "seed" the pseudo-random number generator
  n = (argc < 2) ? 1000 : atoi(argv[1]);
  if(n < 10 || n > 100000000)
    return 1; // bad command line argument
  //
  // initialize a[] with pseudo-random values
  //
  a = (int *)malloc((size_t)n * sizeof(int));
  if(a == NULL)
    return 2; // memory allocation failed
  for(i = 0;i < n;i++)
    a[i] = random() & 0x1FFFFFFF;
  //
  // choose distinct random indices
  //
  i = random() % n;
  do
    j = random() % n;
  while(j == i);
  //
  // choose desired sum
  //
#if 1
  v = a[i] + a[j]; // "random" but known to exist
#else
  v = 0x0FFFFFFF;  // fixed (for benchmarking purposes, find_pairs_v2() uses 256MiB)
#endif
  //
  // run algorithms
  //
  dt0 = cpu_time();
  if(n <= 1000000)
    find_pairs_v1(a,n,v);
  dt1 = cpu_time();
  find_pairs_v2(a,n,v);
  dt2 = cpu_time();
  find_pairs_v3(a,n,v);
  dt3 = cpu_time();
  printf("\n");
  printf("        n     version 1  version 2  version 3\n");
  printf("---------  ------------  ---------  ---------\n");
  printf("%9d  %12lld  %9lld  %9lld\n",n,counter1,counter2,counter3);
  printf("              %9.3e  %9.3e  %9.3e\n",dt1 - dt0,dt2 - dt1,dt3 - dt2);
  printf("---------  ------------  ---------  ---------\n");
  return 0; // ok
}
