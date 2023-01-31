//
// Tomás Oliveira e Silva, AED, October 2021
//
// program to print a table of the squares and square roots of some integers (C++ version)
//

#ifndef ALSO_USE_PRINTF
# define ALSO_USE_PRINTF  0
#endif

#include <math.h>
#if ALSO_USE_PRINTF != 0
# include <stdio.h>
#endif
#include <iostream>
#include <iomanip>

using namespace std; // make all symbols of the std namespace directly visible

void do_it(int N)
{
  cout << " n n*n      sqrt(n)          cbrt(n)\n"
       << "-- --- ----------------- -----------------\n";
  for(int i = 1;i <= N;i++)
  {
    cout << setw(2) << i
         << " "
         << setw(3) << i * i
         << " "
         << fixed << setw(17) << setprecision(15) << sqrt(double(i))
         << " "
         << fixed << setw(17) << setprecision(15) << cbrt(double(i))
         << endl;
#if ALSO_USE_PRINTF != 0
    // same as above, but now using the printf function
    printf("%2d %3d %17.15f\n",i,i * i,sqrt(double(i), cbrt(double(i))));
#endif
  }
}

int main(void)
{
  do_it(10);
}
