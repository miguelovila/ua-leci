//
// Tomás Oliveira e Silva, AED, October 2021
//
// example of a class
//

#include <math.h>
#include <iostream>

using namespace std;

class person
{
  private:
    const static int max_size = 99;
    const static int debug = 0;
    char d_name[max_size + 1];
    char d_address[max_size + 1];
    char d_phone[max_size + 1];
    int  d_age;
  public:
    person(const char *name = "",const char *address = "",const char *phone = "", const int age = -1); // constructor
    ~person(void);                                          // destructor
    void set_name(const char *name);
    void set_address(const char *address);
    void set_phone(const char *phone);
    void set_age(const int age);
    const char *get_name(void);
    const char *get_address(void);
    const char *get_phone(void);
    const int get_age(void);
};

void person::set_name(const char *name)
{
  int i;

  //
  // in C and C++, strings are arrays of characters, terminated with a 0 (i.e., '\0')
  // so, to copy a string, we need to do it one char at a time
  // '\0' has the value 0, but is of type char
  // the input name is silently truncated if it is too large (this may cause trouble
  //   if utf-8 is used to encode the string characters)
  //
  for(i = 0;name[i] != '\0' && i < max_size;i++)
    d_name[i] = name[i];
  d_name[i] = '\0'; // always terminate the string properly
}

void person::set_address(const char *address)
{
  int i;

  for(i = 0;address[i] != '\0' && i < max_size;i++)
    d_address[i] = address[i];
  d_address[i] = '\0';
}

void person::set_phone(const char *phone)
{
  int i;

  for(i = 0;phone[i] != '\0' && i < max_size; i++)
    d_phone[i] = phone[i];
  d_phone[i] = '\0';
}

void person::set_age(const int age)
{
  if(age > 0)
  {
    d_age = age;
    return;
  }
  d_age = -1;
}

person::person(const char *name,const char *address, const char *phone, const int age)
{ // constructor
  if(debug != 0)
    cout << "person constructor called" << endl;
  this->set_name(name);
  this->set_address(address);
  this->set_phone(phone);
  this->set_age(age);
}

person::~person(void)
{ // destructor
  if(debug != 0)
    cout << "person destructor called" << endl;
}

inline const char *person::get_name(void)
{
  return d_name;
}

inline const char *person::get_address(void)
{
  return d_address;
}

inline const char *person::get_phone(void)
{
  return d_phone;
}

inline const int person::get_age(void)
{
  return d_age;
}

std::ostream & operator << (std::ostream &os,person &p)
{ // make the << operator also work with the person data type
  return os << "[Name]: "
            << p.get_name()
            << "  [Address]: "
            << p.get_address()
            << "  [Phone]: "
            << p.get_phone()
            << "  [Age]: "
            << p.get_age()
            << endl;
}

int main(void)
{
  person p = person("John Doe","no address","+351966671111", 23); // create a new object and then copy it to p
  person q("no name","no address","no phone number", -2);           // create a new object (no copy needed)

  cout << "Before change of address: " << p.get_name() << ", " << p.get_address() << ", " << p.get_phone() << ", " << p.get_age() << endl;
  p.set_address("bench 24, Central Park, New York");
  cout << "After change of address:  " << p.get_name() << ", " << p.get_address() << ", " << p.get_phone() << ", " << p.get_age() << endl;

  cout << q; // use the << operator (q is a person!)
  return 0;
}
