//
// Tomás Oliveira e Silva, AED, November 2021
//
// Generic queue (First In First Out) demo
//
// compile with
//   c++ -Wall -O2 -std=c++0x lQueue_demo.cpp
//

#include <cstdlib>
#include <iostream>

using std::rand;
using std::cout;
using std::endl;

#include "lQueue.h"

int main(void)
{
  lQueue<int> Q;
  int i = 0;
  int o = 0;
  for(int n = 0;n < 1000000;n++)
  {
    if(Q.size() == 0 || (Q.size() < 20 && (rand() & 0x01000000) == 0))
    {
      Q.enqueue(i);
      i++;
    }
    else
    {
      assert(Q.dequeue() == o);
      o++;
    }
    if(Q.size() > 0)
      assert(Q.peek() == o);
  }
  while(Q.size() > 0)
    cout << Q.dequeue() << endl;
  cout << "All is well [i=" << i << ",o=" << o << "]" << endl;
  return 0;
}
