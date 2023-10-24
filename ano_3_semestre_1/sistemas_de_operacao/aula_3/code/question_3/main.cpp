#include <stdio.h>
#include <stdlib.h>
#include "thread.h"
#include <sys/wait.h>

/*
// Helper functions
*/

int getNumericInput(int min_val, int max_val) {
    int value, done;
    do {
        printf("Insert a value [%d,%d]: ", min_val, max_val);
        done = scanf("%d", &value);
        if (value >= min_val && value <= max_val && done) {
            return value;
        }
    } while (1);
}

/*
// Thread and shared variable
*/

static pthread_cond_t conditions[2] = {PTHREAD_COND_INITIALIZER, PTHREAD_COND_INITIALIZER};
int value = 0;
pthread_mutex_t mutex;

void *thread_main(void* arg) {
    int idx = *(int*) arg;
    mutex_lock(&mutex);
    printf("[THREAD | TID: %d] Started receiving value %d\n", gettid(), value);
    while (value > 1)
    {
        while (value % 2 != idx) {
            cond_wait(&conditions[idx], &mutex);
        }
        printf("[THREAD | TID: %d] Value is %d\n", gettid(), value);
        value--;
        cond_broadcast(&conditions[value % 2]);
    }
    mutex_unlock(&mutex);
    return 0;
}

/*
// Main function
*/

int main(void) {
    value = getNumericInput(10, 20);
    mutex_init(&mutex, NULL);
    int a[2];
    pthread_t thr[2];
    for (int i = 0; i < 2; i++) {
        a[i] = i;
        thread_create(thr + i, NULL, thread_main, a + i);
    }
    for (int i = 0; i < 2; i++) {
        thread_join(thr[i], NULL);
    }
    printf("[ MAIN ] Done!\n");
    return EXIT_SUCCESS;
}



















/*
    void *decrementEven(void *par) {
        pthread_exit(EXIT_SUCCESS);
    }

    void *decrementOdd(void *par) {

        pthread_exit(EXIT_SUCCESS);
    }

    pthread_t thr_decrement_even;
    if (pthread_create(&thr_decrement_even, NULL, decrementEven, NULL) != 0) {
        fprintf(stderr, "Fail launching decrementEven thread");
        return EXIT_FAILURE;
    }

    pthread_t thr_decrement_odd;
    if (pthread_create(&thr_decrement_odd, NULL, decrementOdd, NULL) != 0) {
        fprintf(stderr, "Fail launching decrementOdd thread");
        return EXIT_FAILURE;
    }

    if (pthread_join(&thr_decrement_even, NULL) != 0) {
        fprintf(stderr, "Fail joinning thread");
        return EXIT_FAILURE;
    }

    if (pthread_join(&thr_decrement_odd, NULL) != 0) {
        fprintf(stderr, "Fail joinning thread");
        return EXIT_FAILURE;
    }
    */