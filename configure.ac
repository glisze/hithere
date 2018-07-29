AC_INIT([hithere],
	m4_esyscmd([scripts/git-version-gen VERSION \
	--prefix release\\/v ]),
	[no-bug-never-not-no-more@a.b.c], [hithere],
	[https://www.nowh.er/softies/hithere/])
AM_INIT_AUTOMAKE([-Wall -Werror gnits])
AC_PROG_CC
gl_EARLY
gl_INIT
AC_CONFIG_HEADERS([
	src/config.h
])
AC_CONFIG_FILES([
  Makefile
  src/Makefile
  lib/Makefile
])
AC_OUTPUT
