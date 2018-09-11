/*
# Hello Nightmare
# Copyright (C) 2018-2019  Joao Eriberto Mota Filho <eriberto@eriberto.pro.br>
#
#           DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#                   Version 2, December 2004
#
# Everyone is permitted to copy and distribute verbatim or modified
# copies of this license document, and changing it is allowed as long
# as the name is changed.
# 
#           DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#  TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
#
# 0. You just DO WHAT THE FUCK YOU WANT TO.
#
# --------------------------------------------------------------
# ----> IF YOU NEED, YOU CAN USE THIS PROGRAM UNDER BSD LICENSE.
# --------------------------------------------------------------
*/

#include <stdio.h>
#include <stdlib.h>
#include <curses.h>

int execv();
int access();
char engpath[] = "/usr/local/share/hello-nightmare/engine";

int main (int argc, char *argv[])
{
    // Test if file exists
    FILE *fp;
    fp = fopen(engpath,"r");

    if(fp == NULL){
       printf("\nERROR: I can't find %s.\n\n", engpath);
       exit(1);
    }

    // Call the external engine
    argv[0] = engpath;
    execv( argv[0], argv );
}
