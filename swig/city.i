#ifdef SWIG
%module city
%{
#include "city.h"
%}
#endif

typedef unsigned int uint32;
typedef unsigned long uint64;

uint64 CityHash64(const char *buf, size_t len);
