%module example

%{
#define SWIG_FILE_WITH_INIT
#include "src/example.h"
%}

%include "typemaps.i"
/* list functions to be interfaced: */
void add_sin(double r1, double r2, double *OUTPUT);
