#include <stdint.h>
#include <stdlib.h>
#include <math.h>

#include "bwdelay.h"

void bwDelay(uint32_t n)
{
    if (n == 0) return;
    uint32_t v = rand() % n;
    double b = 0.0;
    double c = 0.0;
    /* generate time delay */
    for (uint32_t i = 0; i < v; i++)
    {
        b = cos(c + M_PI / 4);
        c = sqrt(fabs(b));
    }
}

