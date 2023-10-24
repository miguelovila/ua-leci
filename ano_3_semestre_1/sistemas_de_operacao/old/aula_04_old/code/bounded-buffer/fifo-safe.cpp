#include <stdio.h>
#include <unistd.h>
#include <stdint.h>
#include <libgen.h>
#include <stdlib.h>
#include <string.h>

#include "fifo.h"
#include "bwdelay.h"
#include "thread.h"

void fifoInit(FIFO *f, uint32_t sz, uint32_t d)
{
    /* init fifo */
    f->size = sz;
    f->in = f->out = 0;
    f->full = false;
    f->dummyDelay = d;
    memset(f->data, 0x0, N*sizeof(FIFO::item));
    
    /* init mutex and condition variables */
    cond_init(&f->notFull, NULL);
    cond_init(&f->notEmpty, NULL);

    mutex_init(&f->access, NULL);
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
    /* lock access to fifo */
    mutex_lock(&f->access);

    /* wait until fifo is not full */
    while (fifoIsFull(f))
    {
        cond_wait(&f->notFull, &f->access);
    }

    /* make insertion */
    f->data[f->in].id = id;
    f->data[f->in].v1 = v1;
    bwDelay(f->dummyDelay); // to enhance the probability of occurrence of race conditions
    f->data[f->in].v2 = v2;
    f->in = (f->in + 1) % f->size;
    f->full = (f->in == f->out);

    /* signal fifo is not empty */
    cond_broadcast(&f->notEmpty);

    /* unlock access before quitting */
    mutex_unlock(&f->access);
}

void fifoRetrieve(FIFO *f, uint32_t *idp, uint32_t *v1p, uint32_t *v2p)
{
    /* lock access to fifo */
    mutex_lock(&f->access);

    /* wait until fifo is not full */
    while (fifoIsEmpty(f))
    {
        cond_wait(&f->notEmpty, &f->access);
    }

    /* make retrieval */
    *idp = f->data[f->out].id;
    *v1p = f->data[f->out].v1;
    bwDelay(f->dummyDelay); // to enhance the probability of occurrence of race conditions
    *v2p = f->data[f->out].v2;
    f->out = (f->out + 1) % f->size;
    f->full = false;

    /* signal fifo is not empty */
    cond_broadcast(&f->notFull);

    /* unlock access before quitting */
    mutex_unlock(&f->access);
}

void fifoDestroy(FIFO *f)
{
    cond_destroy(&f->notFull);
    cond_destroy(&f->notEmpty);
    mutex_destroy(&f->access);
}
