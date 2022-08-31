# SWIG
This is an example of using C++ to write cutsom functions to extend numpy through
the SWIG interface. There are two example applications in this repo:
1. The first example in this repo calculates the root mean square
(RMS) of a sequence of numbers.
2. The second example takes as input a 2D array and binarizes it inplace.
## Getting started

Build
```bash
make
```

Test
```bash
make test
``` 

Clean
```bash
make clean
```

## References
1. [SWIG Documentation](https://swig.org/Doc1.3/SWIG)
2. [numpy.i: a SWIG Interface File for NumPy](https://numpy.org/doc/stable/reference/swig.interface-file.html)
3. [SWIG Tutorial](https://www.youtube.com/watch?v=J-iVTLp6M9I&t=2138s)