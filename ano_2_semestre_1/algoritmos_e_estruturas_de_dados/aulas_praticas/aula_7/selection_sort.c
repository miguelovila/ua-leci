//
// (C) Tomás Oliveira e Silva, AED, November 2020
//

#include "sorting_methods.h"

void selection_sort(T *data,int first,int one_after_last)
{
  int i,j,k;

  for(i = one_after_last - 1;i > first;i--)
  {
    for(j = first,k = 1;k <= i;k++)
      if(data[k] > data[j])
        j = k;
    if(j < i)
    {
      T tmp = data[i];
      data[i] = data[j];
      data[j] = tmp;
    }
  }
}
