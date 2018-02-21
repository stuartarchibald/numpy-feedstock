#!/bin/bash

cp $RECIPE_DIR/test_fft.py numpy/fft/tests

if [ "$blas_impl" = "mkl" ]; then

printf "\n\n__mkl_version__ = \"$mkl\"\n" >> numpy/__init__.py

fi


$PYTHON -m pip install --no-deps --ignore-installed .
