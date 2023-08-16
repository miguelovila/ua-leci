//
// Tomás Oliveira e Silva, AED, October 2021
//
// example of function overloading (same function name, different argument numbers and/or data types)
//

#include <iostream>

using std::cout; // make this symbol from the std namespace directly visible

void show(const int i)
{
  cout << "int: "
       << i
       << std::endl;
}

void show(const double d)
{
  cout << "double: "
       << d
       << std::endl;
}

void show(const char *s,const char *h = "string: ") // second argument with default value
{
  cout << h
       << s
       << std::endl;
}

void show(const char c)
{
  cout << "char: "
       << c
       << std::endl;
}

void show(const int *p, const int size)
{
  cout << "array: [";
  for(int i = 0; i < size; i++)
    if (i == size - 1)
      cout << p[i] << "]" << std::endl;
    else
      cout << p[i] << ", ";
}

int main(void)
{
  int a[3] = {2, 7, -1};

  show(1.0);
  show("hello");
  show(-3);
  show("John","name: ");
  show('a');
  show(a, 3);
  return 0;
}
