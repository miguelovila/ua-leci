//
// Tomás Oliveira e Silva, AED, October 2021
//
// computation of Fibonacci numbers
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
// A higher precision implementation
//

typedef signed __int128 s128;

s128 F(s64 n)
{
  s128 a,b,c;

  assert(n >= (s64)0);
  if(n < (s64)2)
    return (s128)n;
  for(a = (s128)0,b = (s128)1;n > (s64)1;n--)
  {
    c = a + b;
    a = b;
    b = c;
  }
  return b;
}

static void printf_s128(s128 n)
{
  if(n >= (s128)10)
    printf_s128(n / (s128)10);
  printf("%d",(int)(n % (s128)10));
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
    if(n < (s64)40 || dt1 < 10.0) { dt1 = cpu_time(); f = F_v1(n); dt1 = cpu_time() - dt1; printf("%3d 1 %20lld %9.6f\n",(int)n,f,dt1); }
    if(n < (s64)40 || dt2 < 10.0) { dt2 = cpu_time(); f = F_v2(n); dt2 = cpu_time() - dt2; printf("%3d 2 %20lld %9.6f\n",(int)n,f,dt2); }
    if(n < (s64)40 || dt3 < 10.0) { dt3 = cpu_time(); f = F_v3(n); dt3 = cpu_time() - dt3; printf("%3d 3 %20lld %9.6f\n",(int)n,f,dt3); }
    if(n < (s64)40 || dt4 < 10.0) { dt4 = cpu_time(); f = F_v4(n); dt4 = cpu_time() - dt4; printf("%3d 4 %20lld %9.6f\n",(int)n,f,dt4); }
    printf("%3d x ",(int)n); printf_s128(F(n)); printf("\n");
    printf("--- - -------------------- ---------\n");
  }
  return 0;
}
