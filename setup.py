#!/usr/bin/env python

import numpy
from setuptools import Extension, setup

# Obtain the numpy include directory.  This logic works across numpy versions.
try:
    numpy_include = numpy.get_include()
except AttributeError:
    numpy_include = numpy.get_numpy_include()

example_module = Extension('_example',
                           sources=['example_wrap.cxx', 'src/example.cpp'],
                           include_dirs=['src', numpy_include],
                           )

setup (name = 'example',
       version = '0.1',
       author      = "SWIG Docs",
       description = """Simple swig example from docs""",
       ext_modules = [example_module],
       py_modules = ["example"],
       )
