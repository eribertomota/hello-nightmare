AC_PREREQ([2.69])
AC_INIT([hello-nightmare], [1.0-beta1], [eriberto@eriberto.pro.br])
AC_CONFIG_SRCDIR([hello-nightmare.c])
AC_CONFIG_HEADERS([config.h])

# Checks for programs.
AC_PROG_CC

# Checks for libraries.

# Checks for header files.
AC_CHECK_HEADERS([fcntl.h stdlib.h string.h unistd.h])

# Checks for typedefs, structures, and compiler characteristics.
AC_CHECK_MEMBERS([struct stat.st_rdev])

# Checks for library functions.
AC_FUNC_FORK
AC_FUNC_MALLOC
AC_CHECK_FUNCS([memset putenv strdup strerror])

AC_OUTPUT
