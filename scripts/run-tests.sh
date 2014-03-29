#!/bin/bash -e
pwd
cd ../examples/calculator_aunit
pwd
make test
./obj/harness
