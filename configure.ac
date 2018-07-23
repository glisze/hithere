AC_INIT([hithere],
	m4_esyscmd([scripts/git-version-gen .tarball-version]),
	[no-bug-never-not-no-more@a.b.c], [hithere],
	[https://www.nowh.er/softies/hithere/])
AM_INIT_AUTOMAKE([-Wall -Werror gnits])
AC_PROG_CC
AC_CONFIG_HEADERS([src/config.h])
AC_CONFIG_FILES([
  Makefile
  src/Makefile
])
AC_OUTPUT

