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

#include "thread.h"
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

void producer(uint32_t id, FIFO *f, uint32_t ni)
{
    for (uint32_t i = 1; i <= ni; i++)
    {
        /* insert item into fifo and show it */
        fifoInsert(f, id, i, i);
        printf("\e[34;01mProducer %u insert (%u,%u,%u) into the fifo\e[0m\n", id, id, i, i);
    }
}

struct producerData 
{
    uint32_t id;
    FIFO *f;
    uint32_t ni;
};

void *producerThread(void *arg)
{
    producerData *p = (producerData*)arg;
    producer(p->id, p->f, p->ni);
    thread_exit(NULL);
    return NULL;
}

//////////////////////////////////////////////////////////////////////

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

struct consumerData 
{
    uint32_t id;
    FIFO *f;
};

void *consumerThread(void *arg)
{
    consumerData *p = (consumerData*)arg;
    consumer(p->id, p->f);
    thread_exit(NULL);
    return NULL;
}

//////////////////////////////////////////////////////////////////////

FIFO *theFifo = NULL;

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

    /* create the shared memory and init the fifo in there  */
    theFifo = (FIFO*)malloc(sizeof(FIFO));
    fifoInit(theFifo, sz, bwd);

    /* launching child threads to play as consumers */
    pthread_t cthr[nc];
    for (uint32_t i = 0; i < nc; i++)
    {
        consumerData *data = new consumerData;
        *data = {i+1, theFifo};
        thread_create(&cthr[i], NULL, consumerThread, data);
    }

    /* launching child threads to play as producers */
    pthread_t pthr[np];
    for (uint32_t i = 0; i < np; i++)
    {
        producerData *data = new producerData;
        *data = {i+1, theFifo, ni};
        thread_create(&pthr[i], NULL, producerThread, data);
    }

    /* wait for producers to finish */
    for (uint32_t i = 0; i < np; i++)
    {
        thread_join(pthr[i], NULL);
        printf("Producer %u finished\n", i+1);
    }

    /* wait for consumers to finish */
    for (uint32_t i = 0; i < nc; i++)
    {
        thread_join(cthr[i], NULL);
        printf("Consumer %u finished\n", i+1);
    }

    /* destroy fifo */
    fifoDestroy(theFifo);
    return 0;
}

