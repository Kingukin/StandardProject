/**
 * @file main.c
 * @author test main file
 * @brief 
 * @version 
 * @date 
 * 
 * @copyright 
 * 
 */

#include "header.h"
#include <stdio.h>

/**
 * @brief main function
 * 
 * @param argc length of argv
 * @param argv array of parameters
 * @return int always 0
 */
int main(int argc, char const *argv[])
{
    int x = TestFunc(1);
    printf("Hello world! %d\n", x);
    return 0;
}
