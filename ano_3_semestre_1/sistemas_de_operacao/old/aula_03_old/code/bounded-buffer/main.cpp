/*
 * An implementation of the bounded-buffer problem
 *
 * NC producers and NC consumers communicate through a fifo.
 * The fifo has a fixed capacity, defined at its creation.
 * NI items will be produced by the producers and consume by the consumers.
 * An item is composed of 2 equal integers, ranging from 1 to NI.
 * A busy waiting delay is inserted between the insertion/retrieval of the 2 integers in the fifo.
 */

#include <stdio.h>
#include <unistd.h>
#include <stdint.h>
#include <math.h>
#include <libgen.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/wait.h>

#include "process.h"
#include "fifo.h"

static void printUsage(FILE* fp, const char* cmd)
{
    fprintf(fp, "Synopsis %s [options]\n"
            "\t----------+--------------------------------------------\n"
            "\t  Option  |          Description                       \n"
            "\t----------+--------------------------------------------\n"
            "\t -i num   | number of items per producer (dfl: 1000)   \n"
            "\t -p num   | number of producers (dfl: 5)               \n"
            "\t -c num   | number of consumers (dfl: 5)               \n"
            "\t -s num   | capacity of the fifo (dfl: 100)            \n"
            "\t -d num   | delay in insertion/retrieval (dfl: 0)      \n"
            "\t -h       | this help                                  \n"
            "\t----------+--------------------------------------------\n", cmd);
}

//////////////////////////////////////////////////////////////////////

/*
 * Each producer will produce values from 1 to ni and will insert them into the fifo.
 * Note that the same value is placed into fields v1 and v2 of a fifo item.
 */
void producer(uint32_t id, FIFO *f, uint32_t ni)
{
    for (uint32_t i = 1; i <= ni; i++)
    {
        /* insert item into fifo and show it */
        fifoInsert(f, id, i, i);
        printf("\e[34;01mProducer %u insert (%u,%u,%u) into the fifo\e[0m\n", id, id, i, i);
    }
}

//////////////////////////////////////////////////////////////////////

/*
 * As the number of consumers can be different from the number of producers,
 * no way to know how many items will be retrieved by each consumer.
 * So, each consumer works in an infinite loop, retrieving items and printing them.
 * Note that if, in an item retrieved, values v1 and v2 are different, which should not happen,
 * the printing is done in red. Otherwise it appears in green.
 */
void consumer(uint32_t id, FIFO *f)
{
    while (true)
    {
        /* retrieve item from fifo */
        uint32_t pid, v1, v2;
        fifoRetrieve(f, &pid, &v1, &v2);

        /* print it */
        if (v1 == v2)
            printf("\e[32;01mConsumer %u retrieve (%u,%u,%u) from the fifo\e[0m\n", id, pid, v1, v2);
        else
            printf("\e[31;01mConsumer %u retrieve (%u,%u,%u) from the fifo\e[0m\n", id, pid, v1, v2);
    }
}

//////////////////////////////////////////////////////////////////////

int main (int argc, char *argv[])
{
    /* */
    uint32_t ni = 1000;   /* number of items */
    uint32_t np = 5;      /* number of producers */
    uint32_t nc = 5;      /* number of consumers */
    uint32_t bwd = 0;     /* busy waiting delay */
    uint32_t sz = 10;     /* effective size of the fifo */

    /* command line arguments */
    const char *optstr = "i:p:c:d:s:h";

    int option;
    do
    {
        switch ((option = getopt(argc, argv, optstr)))
        {
            case 'i': // number of items per producer
                ni = atoi(optarg);
                break;

            case 'p': // number of producers
                np = atoi(optarg);
                break;

            case 'c': // number of consumers
                nc = atoi(optarg);
                break;

            case 'd': // delay between insertions/retrievals
                bwd = atoi(optarg);
                break;

            case 's': // size of the fifo
                sz = atoi(optarg);
                break;

            case 'h':
                printUsage(stdout, basename(argv[0]));
                return 0;
                break;

            case -1:
                break;

            default:
                fprintf(stderr, "Not valid option\n");
                printUsage(stderr, basename(argv[0]));
                return EXIT_FAILURE;
        }
    } while (option >= 0);

    printf("Parameters: %d producers, %d consumers, %d items, %d of bwd\n", np, nc, ni, bwd);

    /* create the shared memory and init it as a fifo  */
    int shmid = pshmget(IPC_PRIVATE, sizeof(FIFO), IPC_CREAT | 0600);
    FIFO *theFifo = (FIFO *)pshmat(shmid, NULL, 0);
    fifoInit(theFifo, sz, bwd);

    /* launch child processes to play as consumers */
    pid_t cpid[nc];
    for (uint32_t i = 0; i < nc; i++)
    {
        if ((cpid[i] = pfork()) == 0)
        {
            consumer(i+1, theFifo);
            exit(EXIT_SUCCESS);
        }
    }

    /* launch child processes to play as producers */
    pid_t ppid[nc];
    for (uint32_t i = 0; i < np; i++)
    {
        if ((ppid[i] = pfork()) == 0)
        {
            producer(i+1, theFifo, ni);
            exit(EXIT_SUCCESS);
        }
    }

    /* wait for producers fo finish */
    for (uint32_t i = 0; i < np; i++)
    {
        waitpid(ppid[i], NULL, 0);
        printf("Producer %u finished\n", i+1);
    }

    /* wait for consumers fo finish */
    for (uint32_t i = 0; i < nc; i++)
    {
        waitpid(cpid[i], NULL, 0);
        printf("Consumer %u finished\n", i+1);
    }

    return 0;
}

