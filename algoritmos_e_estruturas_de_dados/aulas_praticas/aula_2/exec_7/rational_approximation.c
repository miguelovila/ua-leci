//
// Tomás Oliveira e Silva, AED, October 2021
//
// best rational approximation
//
// to do: add code to measure the execution time of
//   best_rational_approximation_slow()
// and of
//   best_rational_approximation_fast()
//

#include <math.h>
#include <stdio.h>
#include <stdlib.h>

#include "elapsed_time.h"

#ifndef DEBUG
#define DEBUG  0  // positive value to see partial results // negative value to see the number of "e < best_e" tests
#endif

typedef unsigned int uint;

int tests = 0;

typedef struct
{
  uint num;
  uint den;
}
fraction;

//
// brute force approach
//

fraction best_rational_approximation_slow(double x, uint max_den)
{
  double num,den,e,best_e;
  fraction best;
  tests = 0;

#if DEBUG > 0
  printf("# best_rational_approximation_slow(%.12f,%u)\n",x,max_den);
#endif
  best.num = 0u;
  best.den = 1u;
  best_e = x;
  for(den = 1.0;den <= (double)max_den;den += 1.0)
  {
    num = round(den * x);
    e = fabs(num / den - x);
    if(e < best_e)
    {
      best.num = (uint)num;
      best.den = (uint)den;
      best_e = e;
#if DEBUG > 0
      printf("#   %u/%u (%.15f)\n",best.num,best.den,best_e);
#endif
    }
  }
  tests = (int)den - 1;
  return best;
}

//
// see section 4.5 of "Concrete Mathematics", by Graham, Knuth and Patashnik
//
// if the continued fraction expansion of x has a large term this code with be "slow"
//

fraction best_rational_approximation_fast(double x, uint max_den)
{
  fraction best, f0, f1, f2; // f0=low, f1=mediant, f2=high
  double a, e, best_e;
  tests = 0;
#if DEBUG > 0
  printf("# best_rational_approximation_fast(%.12f,%u)\n",x,max_den);
#endif
  best.num = f0.num = 0u;
  best.den = f0.den = 1u;
  best_e = x;
  f2.num = 1u;
  f2.den = 0u;
  for(;;)
  {
    f1.num = f0.num + f2.num;
    f1.den = f0.den + f2.den;
    if(f1.den > max_den)
    {
      return best;
    }
    a = (double)f1.num / (double)f1.den;
    e = fabs(a - x);
    tests++;
    if(e < best_e)
    {
      best = f1;
      best_e = e;
#if DEBUG > 0
      printf("#   %u/%u (%.15f)\n",best.num,best.den,best_e);
#endif
    }
    if(a <= x)
      f0 = f1;
    else
      f2 = f1;
  }
}


//
// main program
//

int main(void)
{
  uint max_den;
  fraction f;
  double x, time;

  x = M_PI;
  printf("Best rational approximations to %18.16f\n",x);
  //
  // to avoid arithmetic overflow the loop
  //   for(max_den = 10u;max_den <= 1000000000u;max_den *= 10u)
  // was modified so that the termination test is done just before the multiplication by 10
  //
  // for 32-bit unsigned integers:
  //     10000000 * 10 =  100000000
  //    100000000 * 10 = 1000000000
  //   1000000000 * 10 = 1410065408 (and not 10000000000)
  //
  max_den = 10u;
  while(1)
  {
    printf("  maximum denominator: %u\n",max_den);
    time = cpu_time(); f = best_rational_approximation_slow(x,max_den); time = cpu_time() - time;
    printf("    slow: %u/%u (%13.6e) took: %8.6f",f.num,f.den,(double)f.num / (double)f.den - x, time);
#if DEBUG < 0
    printf(" tests: %d", tests);
#endif
    time = cpu_time(); f = best_rational_approximation_fast(x,max_den); time = cpu_time() - time;
    printf("\n    fast: %u/%u (%13.6e) took: %8.6f",f.num,f.den,(double)f.num / (double)f.den - x, time);
#if DEBUG < 0
    printf(" tests: %d\n", tests);
#else
    printf("\n");
#endif
    if(max_den == 1000000000u)
      break; // done!
    max_den *= 10u;
  }
  return 0;
}
