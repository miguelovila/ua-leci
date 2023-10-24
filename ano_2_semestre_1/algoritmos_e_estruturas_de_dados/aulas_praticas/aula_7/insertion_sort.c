//
// (C) Tomás Oliveira e Silva, AED, November 2020
//

#include "sorting_methods.h"

void insertion_sort(T *data,int first,int one_after_last)
{
  int i,j;

  for(i = first + 1;i < one_after_last;i++)
  {
    T tmp = data[i];
    for(j = i;j > first && tmp < data[j - 1];j--)
      data[j] = data[j - 1];
    data[j] = tmp;
  }
}
