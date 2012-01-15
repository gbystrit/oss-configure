# vim: set sw=2 tw=0:

. `dirname "${0}"`/setup/gcc-build-environment.sh

trace_and_run ${SOURCE}/libiconv-1.14/configure `root_lib_prefixes "libiconv-1.14"` \
  --disable-shared \
  --with-pic \
  "${@}"
