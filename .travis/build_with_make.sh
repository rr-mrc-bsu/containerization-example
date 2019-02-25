#!/bin/bash

set -e # exit immediately on error

make all
test -e r-and-python.html
make clean