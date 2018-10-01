#include <string.h>

int multiply_long(long x, long y, long *z)

{

 *z = x * y;

 return 0;

}

int multiply_double(double *x, double *y, double *z)

{

 *z = (*x) * (*y);

 return 0;

}

int get_string(char *s, long len)

{

 strncpy(s, "Hello, world! This is a string to be copied.", len);

 return 0;

}