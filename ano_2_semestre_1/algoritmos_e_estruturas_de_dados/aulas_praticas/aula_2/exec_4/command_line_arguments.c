//
// Tomás Oliveira e Silva, AED, October 2021
//
// list all command line arguments
//

#include <stdio.h>
#include <stdlib.h>

int main(int argc,char *argv[argc])
{
  for(int i = 0;i < argc;i++)
    printf("argv[%2d] = \"%s\" = %lld\n",i,argv[i], atoll(argv[i]));
  return 0;
}
