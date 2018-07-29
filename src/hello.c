#include <config.h>
#include <stdio.h>

int
main(void)
{
  puts ("Hi there!");
  /*  puts ("This is " PACKAGE_STRING "."); */
  emit_bug_reporting_address();
  return 0;
}
