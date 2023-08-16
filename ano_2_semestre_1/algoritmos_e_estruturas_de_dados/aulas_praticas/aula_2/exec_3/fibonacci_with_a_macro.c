//
// Tomás Oliveira e Silva, AED, October 2021
//
// computation of Fibonacci numbers (with a macro to avoid repeating similar lines)
//

#include <math.h>
#include <stdio.h>
#include <assert.h>

#include "elapsed_time.h"


typedef signed long long s64; // 64-bit signed integer


//
// Four implementations
//

s64 F_v1(s64 n)
{
  assert(n >= (s64)0);
  return (n < (s64)2) ? n : F_v1(n - (s64)1) + F_v1(n - (s64)2);
}

s64 F_v2(s64 n)
{
  static s64 Fv[101] = { (s64)0,(s64)1 };

  assert(n >= (s64)0 && n <= (s64)100);
  if(n > (s64)1 && Fv[n] == (s64)0)
    Fv[n] = F_v2(n - (s64)1) + F_v2(n - (s64)2);
  return Fv[n];
}

s64 F_v3(s64 n)
{
  s64 a,b,c;

  assert(n >= (s64)0);
  if(n < (s64)2)
    return n;
  for(a = (s64)0,b = (s64)1;n > (s64)1;n--)
  {
    c = a + b;
    a = b;
    b = c;
  }
  return b;
}

s64 F_v4(s64 n)
{
  const double c1 = 0.44721359549995793928;
  const double c2 = 0.48121182505960344750;

  assert(n >= (s64)0);
  return (s64)round(c1 * exp((double)n * c2));
}


//
// main program
//

int main(void)
{
  double dt1 = 0.0,dt2 = 0.0,dt3 = 0.0,dt4 = 0.0;
  s64 n,f;

  printf("  n v                   Fn      time\n");
  printf("--- - -------------------- ---------\n");
  for(n = (s64)0;n <= (s64)100;n++)
  {
#define measure(id)  if(n < (s64)40 || dt ## id < 10.0)                         \
                     {                                                          \
                       dt ## id = cpu_time();                                   \
                       f = F_v ## id(n);                                        \
                       dt ## id = cpu_time() - dt ## id;                        \
                       printf("%3d " # id " %20lld %9.6f\n",(int)n,f,dt ## id); \
                     }
    measure(1);
    measure(2);
    measure(3);
    measure(4);
#undef measure
    printf("--- - -------------------- ---------\n");
  }
  return 0;
}
