#include <stdio.h>

int say(char hello[6], char world[6])
{
    int i;
    for (i=0; i<6; i=i+1)
        putchar(hello[i]);
    for (i=0; i<6; i=i+1)
        putchar(world[i]);
    putchar('\n');
    return 123;
}