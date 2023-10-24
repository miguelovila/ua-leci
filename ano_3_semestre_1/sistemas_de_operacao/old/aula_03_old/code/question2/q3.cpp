#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>

#include "process.h"

int main(void)
{
    int *shared_counter;
    int shmid = pshmget(IPC_PRIVATE, sizeof(int), IPC_CREAT | 0600);
    shared_counter = (int *)pshmat(shmid, NULL, 0);
    *shared_counter = 0;

    while (*shared_counter < 10 || *shared_counter > 20)
    {
        printf("Enter a value [10,20]: ");
        scanf("%d", shared_counter);
    }

    if (!fork() || !fork())
    {
        exit(EXIT_SUCCESS);
    }
    else
    {
        pwait(NULL);
    }

    pshmdt(shared_counter);
    pshmctl(shmid, IPC_RMID, NULL);

    return EXIT_SUCCESS;
}