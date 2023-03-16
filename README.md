# Standard Project with Makefile
This project is standard form of the various projects.

# Introduction
`inc/`: Include folder contains header files.

`obj/`: Object folder contains automatically generated object files.

`src/`: Source folder contains source files. Extensions must be unified.

`main.c`: Source file which has main function.

`Makefile`: Makefile

# Makefile Modification
`CC` is the compiler name. gcc for C, g++ for C++.

`SRC_EXT` is unified source file extension.

If you use external headers or library, you need to add them into `CFLAGS` and `LDFLAGS`.