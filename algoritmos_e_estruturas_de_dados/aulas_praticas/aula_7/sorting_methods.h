//
// (C) Tomás Oliveira e Silva, AED, November 2020
//

#ifndef _SORTING_METHODS_

#define _SORTING_METHODS_

typedef int T;
typedef void (*sort_function_t)(T *data,int first,int one_after_last);

void bubble_sort   (T *data,int first,int one_after_last);
void shaker_sort   (T *data,int first,int one_after_last);
void insertion_sort(T *data,int first,int one_after_last);
void Shell_sort    (T *data,int first,int one_after_last);
void quick_sort    (T *data,int first,int one_after_last);
void merge_sort    (T *data,int first,int one_after_last);
void heap_sort     (T *data,int first,int one_after_last);
void tree_sort     (T *data,int first,int one_after_last);
void rank_sort     (T *data,int first,int one_after_last);
void selection_sort(T *data,int first,int one_after_last);

#endif
