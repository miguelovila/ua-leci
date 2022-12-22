//
// (C) Tomás Oliveira e Silva, AED, November 2020
//

#include "sorting_methods.h"

void Shell_sort(T *data,int first,int one_after_last)
{
  int i,j,h;

  for(h = 1;h < (one_after_last - first) / 3;h = 3 * h + 1)
    ;
  while(h >= 1)
  { // for each stride h, use insertion sort
    for(i = first + h;i < one_after_last;i++)
    {
      T tmp = data[i];
      for(j = i;j - h >= first && tmp < data[j - h];j -= h)
        data[j] = data[j - h];
      data[j] = tmp;
    }
    h /= 3;
  }
}
