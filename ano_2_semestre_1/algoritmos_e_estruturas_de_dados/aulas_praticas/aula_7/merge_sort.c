//
// (C) Tomás Oliveira e Silva, AED, November 2020
//

#include <stdio.h>
#include <stdlib.h>
#include "sorting_methods.h"

void merge_sort(T *data,int first,int one_after_last)
{
  int i,j,k,middle;
  T *buffer;

  if(one_after_last - first < 40) // do not allocate less than 40 bytes
    insertion_sort(data,first,one_after_last);
  else
  {
    middle = (first + one_after_last) / 2;
    merge_sort(data,first,middle);
    merge_sort(data,middle,one_after_last);
    buffer = (T *)malloc((size_t)(one_after_last - first) * sizeof(T));
    if(buffer == NULL)
    {
      fprintf(stderr,"merge_sort: malloc failed\n");
      exit(1);
    }
    buffer -= first;
    i = first;  // first input (first half)
    j = middle; // second input (second half)
    k = first;  // merged output
    while(k < one_after_last)
      if(j == one_after_last || (i < middle && data[i] <= data[j]))
        buffer[k++] = data[i++];
      else
        buffer[k++] = data[j++];
    for(i = first;i < one_after_last;i++)
      data[i] = buffer[i];
    free(buffer + first);
  }
}
