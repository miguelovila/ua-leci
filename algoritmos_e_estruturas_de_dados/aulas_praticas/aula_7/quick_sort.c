//
// (C) Tomás Oliveira e Silva, AED, November 2020
//

#include "sorting_methods.h"

void quick_sort(T *data,int first,int one_after_last)
{
  int i,j,one_after_small,first_equal,n_smaller,n_larger,n_equal;
  T pivot,tmp;

  if(one_after_last - first < 20)
    insertion_sort(data,first,one_after_last);
  else
  {
    //
    // select pivot (median of three, the pivot's position will be one_after_last-1)
    //
#   define POS1  (first)
#   define POS2  (one_after_last - 1)
#   define POS3  ((first + one_after_last) / 2)
#   define TEST(pos1,pos2)  do if(data[pos1] > data[pos2])                                      \
                               { tmp = data[pos1]; data[pos1] = data[pos2]; data[pos2] = tmp; } \
                               while(0)
    TEST(POS1,POS2);  // bitonic
    TEST(POS1,POS3);  // sort of
    TEST(POS2,POS3);  // 3 items
#   undef POS1
#   undef POS2
#   undef POS3
#   undef TEST
    //
    // 3-way partition. At the end of the while loop the items will be partitioned as follows:
    // |first  "smaller part"|one_after_small  "larger part"|first_equal  "equal part"|one_after_last
    //
    one_after_small = first;
    first_equal = one_after_last - 1;
    pivot = data[first_equal];
    i = first;
    while(i < first_equal)
      if(data[i] < pivot)
      { // place data[i] in the "smaller than the pivot" part of the array
        tmp = data[i];
        data[i] = data[one_after_small]; // tricky! this does the right thing when
        data[one_after_small] = tmp;     //   i == one_after_small and when i > one_after_small
        i++;
        one_after_small++;
      }
      else if(data[i] == pivot)
      { // place data[i] in the "equal to the pivot" part of the array
        first_equal--;
        tmp = data[i];               // this is known to be the pivot, but we do it in this way
        data[i] = data[first_equal]; //   to make life easier to those that need to adapt this
        data[first_equal] = tmp;     //   code so that it deals with more complex data items
      }
      else
      { // data[i] becomes automatically part of the "larger than the pivot" part of the array
        i++;
      }
    n_smaller = one_after_small - first;
    n_larger = first_equal - one_after_small;
    n_equal = one_after_last - first_equal;
    j = (n_equal < n_larger) ? n_equal : n_larger;
    for(i = 0;i < j;i++)
    { // move the "equal to the pivot" part of the array to the middle
      tmp = data[one_after_small + i];
      data[one_after_small + i] = data[one_after_last - 1 - i];
      data[one_after_last - 1 - i] = tmp;
    }
    //
    // recurse
    //
    quick_sort(data,first,first + n_smaller);
    quick_sort(data,first + n_smaller + n_equal,one_after_last);
  }
}
