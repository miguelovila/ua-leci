#include <stdio.h>
#include <unistd.h>
#include <stdint.h>
#include <libgen.h>
#include <stdlib.h>
#include <pthread.h>
#include <string.h>

#include "fifo.h"
#include "bwdelay.h"
#include "process.h"

void fifoInit(FIFO *f, uint32_t sz, uint32_t d)
{
    f->size = sz;
    f->in = f->out = 0;
    f->full = false;
    f->dummyDelay = d;
    memset(f->data, 0x0, N*sizeof(FIFO::item));
    
    /* init semaphores */
    f->sem = psemget(IPC_PRIVATE, 3, IPC_CREAT | 0600);
    for (uint32_t i = 0; i < f->size; i++) 
    {
        psem_up(f->sem, SLOTS);
    }
    psem_up(f->sem, LOCKER);
}

bool fifoIsFull(FIFO *f)
{
    return f->full;
}

bool fifoIsEmpty(FIFO *f)
{
    return !f->full && (f->in == f->out);
}

void fifoInsert(FIFO *f, uint32_t id, uint32_t v1, uint32_t v2)
{
    /* wait until fifo is not full */
    psem_down(f->sem, SLOTS);

    /* lock access to fifo */
    psem_down(f->sem, LOCKER);

    /* make insertion */
    f->data[f->in].id = id;
    f->data[f->in].v1 = v1;
    bwDelay(f->dummyDelay); // to enhance the probability of occurrence of race conditions
    f->data[f->in].v2 = v2;
    f->in = (f->in + 1) % f->size;
    f->full = (f->in == f->out);

    /* release access to fifo */
    psem_up(f->sem, LOCKER);

    /* notify there is one more item available */
    psem_up(f->sem, ITEMS);
}

void fifoRetrieve(FIFO *f, uint32_t *idp, uint32_t *v1p, uint32_t *v2p)
{
    /* wait until fifo is not empty */
    psem_down(f->sem, ITEMS);

    /* lock access to fifo */
    psem_down(f->sem, LOCKER);

    /* make retrieval */
    *idp = f->data[f->out].id;
    *v1p = f->data[f->out].v1;
    bwDelay(f->dummyDelay); // to enhance the probability of occurrence of race conditions
    *v2p = f->data[f->out].v2;
    f->out = (f->out + 1) % f->size;
    f->full = false;

    /* release access to fifo */
    psem_up(f->sem, LOCKER);

    /* notify there is one more slot available */
    psem_up(f->sem, SLOTS);
}

