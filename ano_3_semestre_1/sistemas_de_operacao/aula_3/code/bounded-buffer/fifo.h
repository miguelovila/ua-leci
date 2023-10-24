/*
 * Definition of the FIFO data type and manipulating functions
 *
 * The fifo is defined for a maximum capacity of 100 items, but the effective can be lower (see the init function)
 */

#ifndef __SO_FSO_2324_IPC_FIFO__
#define __SO_FSO_2324_IPC_FIFO__

#include <stdint.h>
#include <stdlib.h>

#include "thread.h"

#define N 100


struct FIFO
{
    bool full;
    uint32_t size; // effective size of the FIFO
    uint32_t in, out;
    uint32_t dummyDelay; // magnitude of the delay added to enhance the probability of occurrence of race conditions
    struct item
    { 
        uint32_t id; // id of the producer
        uint32_t v1; // a general purpose value
        uint32_t v2; // another general purpose value
    } data[N]; 

    /* support for safeness, not used in the unsafe implementation */
    pthread_mutex_t access;
    pthread_cond_t notFull, notEmpty;
};

void fifoInit(FIFO *f, uint32_t sz, uint32_t delay);

bool fifoIsFull(FIFO *f);

bool fifoIsEmpty(FIFO *f);

void fifoInsert(FIFO *f, uint32_t id, uint32_t v1, uint32_t v2);

void fifoRetrieve(FIFO *f, uint32_t *idp, uint32_t *v1p, uint32_t *v2p);

void fifoDestroy(FIFO *f);

#endif // __SO_FSO_2324_IPC_FIFO__

