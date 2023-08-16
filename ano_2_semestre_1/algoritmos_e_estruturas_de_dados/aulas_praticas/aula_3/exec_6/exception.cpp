//
// Tomás Oliveira e Silva, AED, October 2021
//
// example of the C++ exceptions mechanism
//

// C include file
#include <math.h>

// C++ include files
#include <cstdlib>
#include <iostream>
#include <iomanip>

using namespace std;

const double special_value = 1.2345;

double my_sqrt(double x)
{
  if(x == special_value)
    throw 3;   // int exception (with value 3)
  if(x < 0.0)
    throw x; // double exception (with value x, which is a negative number)
  return sqrt(x);
}

int main(void)
{
  cout << fixed << setw(17) << setprecision(15);
  try
  {
    double y = special_value;
    for(double x = 6.0;;x -= 1.0)
    {
#if 0
      y = x; // see what happens when this line is uncommented (#if 1 instead of #if 0)
#endif
      cout << y << " " << my_sqrt(y) << endl;
      y = x;
    }
  }
  catch(int i)
  {
    cout << "sqrt of the special_value [" << i << "]" << endl;
    exit(1);
  }
  catch(double d)
  {
    cout << "sqrt of a negative number [" << d << "]" << endl;
    exit(1);
  }
  return 0;
}
