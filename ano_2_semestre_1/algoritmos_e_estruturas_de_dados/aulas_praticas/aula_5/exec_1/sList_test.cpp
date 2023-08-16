//
// Tomás Oliveira e Silva, AED, November 2021
//
// Generic singly-linked list test code
//
// compile with
//   c++ -Wall -O2 -std=c++0x sList_test.cpp
//

#include <cstdlib>
#include <iostream>
#include <iomanip>
#include "sList.h"

using std::rand;
using std::cout;
using std::endl;
using std::setw;

int main(void)
{
  sList<int> L;
  L.test_invariants();
  int i = 0;
  while(i < 1000000)
  {
    int j = 0;
    switch(rand() % 3)
    {
      case 0: // move (probability 1/3)
        j = 1;
        assert(L.move(-1 + rand() % (L.size() + 2)) == 0);
        break;
      case 1: // insert (probability: 1/3)
        if(L.size() < 10)
          switch(rand() % 8)
          {
            case 0: // insert after (probability: 1/3*3/8)
            case 1:
            case 2:
            // insert after
              if(L.position() < L.size())
              {
                j = 1;
                L.insert_after(i);
              }
              break;
            case 3: // insert before (probability: 1/3*3/8)
            case 4:
            case 5:
              if(L.position() >= 0)
              {
                j = 1;
                L.insert_before(i);
              }
              break;
            case 6: // insert before head (probability: 1/3*1/8)
              j = 1;
              L.insert_before_head(i);
              break;
            case 7: // insert after tail (probability: 1/3*1/8)
              j = 1;
              L.insert_after_tail(i);
              break;
          }
        break;
      case 2: // remove (probability: 1/3)
        if(L.size() > 0)
          switch(rand() % 6)
          {
            case 0: // current (probability: 1/3*2/6)
            case 1:
              if(L.position() >= 0 && L.position() < L.size())
              {
                j = 1;
                L.remove();
              }
              break;
            case 2: // next (probability: 1/3*2/6)
            case 3:
              if(L.position() >= -1 && L.position() < L.size() - 1)
              {
                j = 1;
                L.remove_next();
              }
              break;
            case 4: // head (probability: 1/3*1/6)
              j = 1;
              L.remove_head();
              break;
            case 5: // tail (probability: 1/3*1/6)
              j = 1;
              L.remove_tail();
              break;
          }
        break;
    }
    i += j;
    if(j != 0)
      L.test_invariants();
  }
  cout << "Final contents of the list:" << endl;
  L.move_to_head();
  L.test_invariants();
  for(int i = 0;i < L.size();i++)
  {
    cout << "  " << setw(2) << i << " " << setw(6) << L.value() << endl;
    L.move_to_next();
    L.test_invariants();
  }
  cout << "All went well!" << endl;
  return 0;
}
