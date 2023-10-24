#include <stdio.h>
#include <stdlib.h>

#include "thread.h"

int read_int(int min_val, int max_val, const char* prompt) {
    int v, done;
    do {
        printf("%s [%d,%d]: ", prompt, min_val, max_val);
        done = scanf("%d", &v);
        if (done != 1 || v < min_val || v > max_val) {
            printf("[Error] Invalid input!\n");
            scanf("%*s");
        }
    } while (done != 1);
    return v;
}

void* main_thread(void* arg) {
    int v= 0;
    if (arg != NULL) {
        v = *((int*)arg);
    }
    printf("[THREAD] Starting with value %d\n", v);
    int i_ctrl = read_int(10, 20, "[THREAD] Enter a value");
    for (int i = 0; i <= i_ctrl; i++) {
        printf("[THREAD] %d\n", v++);
    }
    printf("[THREAD] Finnished\n");
    return NULL;
}

int main(void) {
    pthread_t my_thread;
    int v = read_int(1, 9, "[ MAIN ] Enter a value");
    printf("[ MAIN ] Starting\n");
    thread_create(&my_thread, NULL, main_thread, (void*)&v);
    thread_join(my_thread, NULL);

    printf("%d", v);

    printf("[ MAIN ] Finnished\n");
    return 0;
}