#include <stdio.h>
#include <math.h>

#include "example.h"

void add_sin(double r1, double r2, double *s)
{
    *s = sin(r1 + r2);
}