//
// Tomás Oliveira e Silva, AED, November 2021
//
// matched-parenthesis verification
//

#include <iostream>
#include "aStack.h"

using std::cout;
using std::cerr;
using std::endl;

int check_parenthesis(const char *s)
{
  aStack<char> stack;
  for(; *s; s++)
  {
    if(*s == '(' || *s == ')')
    {
      char p = *s;
      char t;
      if(p == '(')
        stack.push(p);
      else
      {
        if(stack.is_empty())
          return -1;
        t = stack.top();
        if(p == ')' && t == '(')
          stack.pop();
        else
          return -1;
      }
    }
  }
  return (stack.is_empty()) ? 0 : -1;
}

int main(int argc,char **argv)
{
  if(argc == 1)
  {
    cerr << "usage: " << argv[0] << " [arguments...]" << endl;
    cerr << "example: " << argv[0] << " 'abc(def)ghi' 'x)(y'" << endl;
    return 1;
  }
  for(int i = 1;i < argc;i++)
  {
    cout << argv[i] << endl;
    if(check_parenthesis(argv[i]) == 0)
      cout << "  good" << endl;
    else
      cout << "  bad" << endl;
  }
  return 0;
}
