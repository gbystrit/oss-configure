# vim: set sw=2:

. `dirname "${0}"`/setup/in-place.sh
. `dirname "${0}"`/setup/gcc-build-environment.sh

setup_feature zlib-1.2.5

CFLAGS="${CFLAGS} -fPIC" export CFLAGS
trace_and_run ./configure `root_lib_prefixes "zlib-1.2.5"` \
  "${@}"

