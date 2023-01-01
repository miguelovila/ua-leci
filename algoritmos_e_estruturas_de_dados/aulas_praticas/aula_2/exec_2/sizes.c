//
// Tomás Oliveira e Silva, AED, October 2021
//
// code to print the sizes (in bytes) of the fundamental data types -- the print_sizes() function
//

#include <stdio.h>
#include "sizes.h"

void print_sizes(void)
{
  printf("sizeof(void *) ...... %d\n",(int)sizeof(void *)); // size of any pointer
  printf("sizeof(void) ........ %d\n",(int)sizeof(void));   // by the C standard this is 1 and not 0
  printf("sizeof(char) ........ %d\n",(int)sizeof(char));   // should be 1
  printf("sizeof(short) ....... %d\n",(int)sizeof(short));
  printf("sizeof(int) ......... %d\n",(int)sizeof(int));
  printf("sizeof(long) ........ %d\n",(int)sizeof(long));
  printf("sizeof(long long) ... %d\n",(int)sizeof(long long));
  printf("sizeof(float) ....... %d\n",(int)sizeof(float));  // should be 4
  printf("sizeof(double) ...... %d\n",(int)sizeof(double)); // should be 8
}
