#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>

#include "delays.h"
#include "process.h"

// Never-nester supremacy :)

int main(void)
{
    pid_t pid = fork();
    if (pid)
    {
        // Parent Section
        pwait(NULL);
        for (int i = 11; i <= 20; i++)
        {
            printf("[ PARENT ] %d\n", i);
        }
        return 0;
    }
    // Child Section
    for (int i = 1; i <= 10; i++)
    {
        printf("[  CHILD ] %d\n", i);
    }
    return 0;
}