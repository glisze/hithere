/*
@rights-left@
 */

#include <config.h>
#include <stdio.h>
#include "../lib/version-etc.h"

int
main(void)
{
  puts ("Hi there!");
  /*  puts ("This is " PACKAGE_STRING "."); */
  version_etc( stdout, 0, PACKAGE, VERSION,  "Gunter Liszewski", NULL);
  
  emit_bug_reporting_address();
  return 0;
}
