#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>

#include "delays.h"
#include "process.h"

int main(void)
{
  printf("Before the fork: PID = %d, PPID = %d\n", getpid(), getppid());

  pid_t ret = pfork();
  if (ret == 0)
  {
    execl("./child", "./child", NULL);
    printf("why doesn't this message show up?\n");
    return EXIT_FAILURE;
  }
  else
  {
    printf("I'm the parent: PID = %d, PPID = %d\n", getpid(), getppid());
    usleep(20000);
    pwait(NULL);
  }

  return EXIT_SUCCESS;
}

/*  The function execl in this program replaces the current process image with
    a new process. In this case, as execl only gets executed when ret == 0, the
    child process of this program is replaced by a external program called
    child.

    The only way to get the message "why doesn't this message show up?" is if
    execl fails. This happens when the file ./child does not exist.
*/