#!/bin/bash

cp $RECIPE_DIR/test_fft.py numpy/fft/tests

if [ "$blas_impl" = "mkl" ]; then

printf "\n\n__mkl_version__ = \"$mkl\"\n" >> numpy/__init__.py

fi

<<<<<<< HEAD
# site.cfg comes from blas devel package (e.g. mkl-devel)
cp $PREFIX/site.cfg site.cfg

if [[ ${HOST} =~ .*darwin.* ]]; then
    export LDFLAGS="${LDFLAGS} -undefined dynamic_lookup"
fi

# $PYTHON setup.py config
# $PYTHON setup.py build
=======
>>>>>>> all pip
$PYTHON -m pip install --no-deps --ignore-installed .
