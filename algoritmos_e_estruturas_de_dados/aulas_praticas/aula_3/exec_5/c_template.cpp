//
// Tomás Oliveira e Silva, AED, October 2021
//
// example of a generic class (with a template)
//

#include <iostream>

using namespace std;

//
// warning: this code is just an example of how an integer parameter can appear in a class template
//          this is NOT a good way to define the maximum size of a stack!
//          it is FAR better to put max_size as a parameter (with a default value)
//          on the constructor member function of the stack class (do that as a homework exercise)
//          homework: to this!
//

template <typename T,int max_size>
class stack
{
  private:
    T d_data[max_size];
    int d_size;
  public:
    stack(void)
    { // constructor
      d_size = 0;
    }
    ~stack(void)
    { // destructor
      if(d_size > 0)
        cerr << "warning: the stack being destroyed is not empty" << endl;
    }
    void push(T v)
    { // put a thing in the stack
      if(d_size >= max_size)
        cerr << "push error: the stack is full" << endl; // nice place to throw an exception!
      else
        d_data[d_size++] = v;
    }
    void put(T v)
    { // same as push
      push(v);
    }
    void setAll(T v)
    {
      d_size = max_size;
      for(int i = 0; i < max_size; i++)
      {
        d_data[i] = v;
      }
    }
    T pop(void)
    { // get and remove a thing from the top of the stack (last in, first out!)
      T v;

      if(d_size <= 0)
      {
        cerr << "pop error: the stack is empty" << endl; // nice place to throw an exception!
        v = T(0); // this assumes that the compiler knows how to convert an integer to type T
      }
      else
        v = d_data[--d_size];
      return v;
    }
    T get(void)
    { // same as pop
      return pop();
    }
    double mean(void)
    {
      int sum = 0;
      for(int i = 0; i < d_size; i++)
      {
        sum += d_data[i];
      }
      return sum/d_size;
    }
    T top(void)
    { // get a thing from the top of the stack
      T v;

      if(d_size <= 0)
      {
        cerr << "top error: the stack is empty" << endl; // nice place to throw an exception!
        v = T(0); // this assumes that the compiler knows how to convert an integer to type T
      }
      else
        v = d_data[d_size - 1];
      return v;
    }
};

int main(void)
{
  stack<int,10> s; // a stack capable of holding 10 integers

  //cout << "push: 3" << endl;
  //s.push(3);
  //cout << "push: 7" << endl;
  //s.push(7);
  //cout << "pop: " << s.pop() << endl; // should print 7
  //cout << "top: " << s.top() << endl; // should print 3
  //cout << "pop: " << s.pop() << endl; // should print 3

  s.push(10); s.push(0);
  cout << "mean: " << s.mean() << endl; // should print 5

  s.setAll(100);
  cout << "mean: " << s.mean() << endl; // should print 100

  s.pop(); s.pop(); s.pop(); s.pop(); s.pop(); s.pop(); s.pop(); s.pop(); s.pop(); s.pop();

  s.push(11);
  s.push(9);
  cout << "mean: " << s.mean() << endl; // should print my calculus 1 final grade

  s.pop(); s.pop();
  s.pop(); // should print an exception

  return 0;
}
