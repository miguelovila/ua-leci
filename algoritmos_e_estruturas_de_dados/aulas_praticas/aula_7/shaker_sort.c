//
// (C) Tomás Oliveira e Silva, AED, November 2020
//

#include "sorting_methods.h"

void shaker_sort(T *data,int first,int one_after_last)
{
  int i,i_low,i_high,i_last;

  i_low = first;
  i_high = one_after_last - 1;
  while(i_low < i_high)
  {
    // up pass
    for(i = i_last = i_low;i < i_high;i++)
      if(data[i] > data[i + 1])
      {
        T tmp = data[i];
        data[i] = data[i + 1];
        data[i + 1] = tmp;
        i_last = i;
      }
    i_high = i_last;
    // down pass
    for(i = i_last = i_high;i > i_low;i--)
      if(data[i] < data[i - 1])
      {
        T tmp = data[i];
        data[i] = data[i - 1];
        data[i - 1] = tmp;
        i_last = i;
      }
    i_low = i_last;
  }
}
