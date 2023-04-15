//
// (C) Tomás Oliveira e Silva, AED, November 2020
//

#include "sorting_methods.h"

void heap_sort(T *data,int first,int one_after_last)
{
  int i,j,k,n;
  T tmp;

  data += first - 1;          // adjust pointer (data[first] becomes data[1])
  n = one_after_last - first; // number of items to sort
  //
  // phase 1. heap construction
  //
  for(i = n / 2;i >= 1;i--)
    for(j = i;2 * j <= n;j = k)
    {
      k = (2 * j + 1 <= n && data[2 * j + 1] > data[2 * j]) ? 2 * j + 1 : 2 * j;
      if(data[j] >= data[k])
        break;
      tmp = data[j];
      data[j] = data[k];
      data[k] = tmp;
    }
  //
  // phase 2. sort
  //
  while(n > 1)
  {
    tmp = data[1]; // largest
    data[1] = data[n];
    data[n--] = tmp;
    for(j = 1;2 * j <= n;j = k)
    {
      k = (2 * j + 1 <= n && data[2 * j + 1] > data[2 * j]) ? 2 * j + 1 : 2 * j;
      if(data[j] >= data[k])
        break;
      tmp = data[j];
      data[j] = data[k];
      data[k] = tmp;
    }
  }
}
