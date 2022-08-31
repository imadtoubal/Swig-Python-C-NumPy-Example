#include <stdio.h>
#include <math.h>

#include "example.h"

double rms(double *seq, int n) {
    double mean = 0.0;
    for (int i = 0; i < n; i++) {
        mean += seq[i];
    }
    mean /= n;
    double rms = 0.0;
    for (int i = 0; i < n; i++) {
        rms += (seq[i] - mean) * (seq[i] - mean);
    }
    rms /= n;
    return sqrt(rms);
}

void binarize(double* seq, int n, int m) {
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < m; j++) {
            int index = i * m + j;
            seq[index] = seq[index] > 127 ? 255 : 0;
        }
    }
}