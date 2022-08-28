%module example

%{
#define SWIG_FILE_WITH_INIT
#include "src/example.h"
%}

%include "numpy.i"

%init %{
import_array();
%}

%apply (double* IN_ARRAY1, int DIM1) {(double* seq, int n)};
%include "src/example.h"