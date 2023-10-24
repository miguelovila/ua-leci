#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>

#include "process.h"

int main(void)
{
	int *pcounter;

	int shmid = pshmget(IPC_PRIVATE, sizeof(int), IPC_CREAT | 0600);

	pcounter = (int *)pshmat(shmid, NULL, 0);
	*pcounter = 1;

	if (pfork())
	{
		// Parent
		pwait(NULL);
		while (*pcounter != 1)
		{
			(*pcounter)--;
			printf("(%d) %d\n", getpid(), *pcounter);
		}
	}
	else
	{
		// Child
		int countTo = 0;
		while (countTo < 10 || countTo > 20)
		{
			printf("Enter a value between 10 and 20: ");
			scanf("%d", &countTo);
		}
		while (*pcounter != countTo + 1)
		{
			printf("(%d) %d\n", getpid(), *pcounter);
			(*pcounter)++;
		}
		exit(EXIT_SUCCESS);
	}

	pshmdt(pcounter);
	pshmctl(shmid, IPC_RMID, NULL);

	return EXIT_SUCCESS;
}