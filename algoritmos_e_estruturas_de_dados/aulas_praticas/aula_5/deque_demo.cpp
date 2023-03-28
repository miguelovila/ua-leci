//
// Tomás Oliveira e Silva, AED, November 2021
//
// Generic deque demo
//
// compile with
//   c++ -Wall -O2 -std=c++0x deque_demo.cpp
//

#include <cstdlib>
#include <iostream>

using std::rand;
using std::cout;
using std::endl;

#include "deque.h"

int main(int argc,char **argv)
{
  if(argc == 1 || (argc > 1 && argv[1][0] == '1'))
  {
    cout << "Queue implemented with a deque (insert_at_head+remove_tail)" << endl;
    deque<int> D(30);
    int i = 0;
    int o = 0;
    for(int n = 0;n < 1000000;n++)
    {
      if(D.size() == 0 || (D.is_full() == 0 && (rand() & 0x01000000) == 0))
      {
        D.insert_at_head(i);
        i++;
      }
      else
      {
        assert(D.remove_tail() == o);
        o++;
      }
      if(D.size() > 0)
        assert(D.peek_head() == i - 1 && D.peek_tail() == o);
    }
    cout << "  All is well [i=" << i << ",o=" << o << "]" << endl;
  }
  if(argc == 1 || (argc > 1 && argv[1][0] == '2'))
  {
    cout << "Queue implemented with a deque (insert_at_tail+remove_head)" << endl;
    deque<int> D(30);
    int i = 0;
    int o = 0;
    for(int n = 0;n < 1000000;n++)
    {
      if(D.size() == 0 || (D.is_full() == 0 && (rand() & 0x01000000) == 0))
      {
        D.insert_at_tail(i);
        i++;
      }
      else
      {
        assert(D.remove_head() == o);
        o++;
      }
      if(D.size() > 0)
        assert(D.peek_tail() == i - 1 && D.peek_head() == o);
    }
    cout << "  All is well [i=" << i << ",o=" << o << "]" << endl;
  }
  if(argc == 1 || (argc > 1 && argv[1][0] == '3'))
  {
    cout << "Stack implemented with a deque (insert_at_head+remove_head)" << endl;
    deque<int> D(30);
    int sp = 0,stack[30];
    for(int n = 0;n < 1000000;n++)
    {
      if(D.size() == 0 || (D.is_full() == 0 && (rand() & 0x01000000) == 0))
      {
        D.insert_at_head(n);
        stack[sp++] = n;
      }
      else
        assert(D.remove_head() == stack[--sp]);
      assert(D.size() == sp);
      if(D.size() > 0)
        assert(D.peek_head() == stack[sp - 1]);
    }
    cout << "  All is well [sp=" << sp << "]" << endl;
  }
  if(argc == 1 || (argc > 1 && argv[1][0] == '4'))
  {
    cout << "Stack implemented with a deque (insert_at_tail+remove_tail)" << endl;
    deque<int> D(30);
    int sp = 0,stack[30];
    for(int n = 0;n < 1000000;n++)
    {
      if(D.size() == 0 || (D.is_full() == 0 && (rand() & 0x01000000) == 0))
      {
        D.insert_at_tail(n);
        stack[sp++] = n;
      }
      else
        assert(D.remove_tail() == stack[--sp]);
      assert(D.size() == sp);
      if(D.size() > 0)
        assert(D.peek_tail() == stack[sp - 1]);
    }
    cout << "  All is well [sp=" << sp << "]" << endl;
  }
  return 0;
}
