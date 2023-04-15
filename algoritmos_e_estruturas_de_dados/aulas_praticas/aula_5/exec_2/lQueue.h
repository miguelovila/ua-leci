//
// Tomás Oliveira e Silva, AED, November 2021
//
// Generic queue (First In First Out) implementation based on an linked list
//

#ifndef _AED_lQueue_
#define _AED_lQueue_

#include <cassert>

template <typename T>
class lQueue
{
  private:
    class lNode
    {
      public:
        T value;
        lNode *next;
    };
  private:
    int n_nodes;
    lNode *head;
    lNode *tail;
    lNode *current;
    int pos;
  public:
    lQueue(void)
    {
      
    }
    ~lQueue(void)
    {
    }
    void clear(void)
    {
    }
    int size(void) const
    {
    }
    int is_full(void) const
    {
    }
    int is_empty(void) const
    {
    }
    void enqueue(T &v)
    {
    }
    T dequeue(void)
    {
    }
    T peek(void)
    {
    }
};

#endif
