//
// Tomás Oliveira e Silva, AED, October 2021
//
// the functions for the extra exercises of class P.04
//

#include <stdio.h>

int g1(int n)
{
  int i,j,r = 0;

  for(i = 0;i <= n;i++)
    for(j = i;j >= 0;j--)
      r += i - j;
  return r;
}

int g2(int n)
{
  int r = 0;

  for(int i = 0;i < 2 * n;i += 2)
    for(int j = i;j <= 2 * n;j += 2)
      r += j;
  return r;
}

void g3(int n,int *a)
{
  for(int i = 1;i <= n;i++)
    for(int j = i;j <= n;j += i)
      a[j] = i;
}

int g4(int n)
{
  int r = 0;

  for(int i = 1;i <= n;i *= 2)
    r += i;
  return r;
}

int main(void)
{
  // place your code here
}
