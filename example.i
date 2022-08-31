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
// Note that we support DATA_TYPE* argout typemaps in 1D, but not 2D or 3D. This
// is because of a quirk with the SWIG typemap syntax and cannot be avoided.
// Note that for these types of 1D typemaps, the Python function will take a
// single argument representing DIM1.
%apply (double* INPLACE_ARRAY2, int DIM1, int DIM2) {(double* seq, int n, int m)};
%include "src/example.h"