#!/bin/bash

rm -rf build
mkdir build
cd build
cmake ..
make -j4
./uptune_tests

cd ../python
python setup.py develop --user
pip install ray --user
cd ../
