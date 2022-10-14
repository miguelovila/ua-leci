//
// Tomás Oliveira e Silva, AED, October 2021
//
// program to print a table of the squares and square roots of some integers
//
// on GNU/Linux, run the command
//   man 3 printf
// to see the manual page of the printf function
//

#include <math.h>
#include <stdio.h>

void do_it(int N)
{
  int i;
  double rad_i, sin_i, cos_i;
  const double dtconst = (M_PI/180);
  FILE *file_pointer; file_pointer = fopen("table.txt", "w");
  
  fprintf(file_pointer, " n n*n      sqrt(n)         sin(n)       cos(n)\n");
  fprintf(file_pointer, "-- --- ----------------- ------------ ------------\n");

  printf(" n n*n      sqrt(n)         sin(n)       cos(n)\n");
  printf("-- --- ----------------- ------------ ------------\n");
  
  for(i = 0;i <= N;i++){
    rad_i = i*dtconst;
    sin_i = sin(rad_i);
    cos_i = cos(rad_i);
    
    fprintf(file_pointer, "%2d %3d %17.15f %12.9f %12.9f\n",i,i * i,sqrt((double)i),sin_i,cos_i);
    
    printf("%2d %3d %17.15f %12.9f %12.9f\n",i,i * i,sqrt((double)i),sin_i,cos_i);
  }
  
  fclose(file_pointer);
}

int main(void)
{
  do_it(90);
  return 0;
}
