//
// Tomás Oliveira e Silva, AED, October 2021
//
// another example of a class
//

#include <iostream>

using namespace std;

class dot
{
  private:
    double x;
    double y;
  public:
    dot(double x,double y) { this->x = x; this->y = y; }
    ~dot(void) { }
    double get_x(void) { return x; };
    double get_y(void) { return y; };
    void set_x(double x) { this->x = x; };
    void set_y(double y) { this->y = y; };
    dot operator + (dot &d) { return dot(this->x + d.x,this->y + d.y); }
    dot operator - (dot &d) { return dot(this->x - d.x,this->y - d.y); }
};
std::ostream & operator << (std::ostream &os,dot &d)
{
  return os << "(" << d.get_x() << "," << d.get_y() << ")\n";
}

int main(void)
{
  dot d1(2,3);
  dot d2 = dot(4,5);
  dot d3 = d1 + d2;
  cout << d1 << d2 << d3;
  d3 = d1 - d2;
  cout << d3;
  return 0;
}
