#!/bin/bash

swig -c++ -python -outdir ./ -o ./cc/city_wrap.cc ./swig/city.i
g++ -c -fpic ./cc/city.cc ./cc/city.h ./cc/city_wrap.cc -I/usr/include/python2.6
g++ -shared city.o city_wrap.o -o _city.so

