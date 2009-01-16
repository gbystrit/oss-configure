# vim: set sw=2 tw=0:

. `dirname "${0}"`/setup/gcc-build-environment.sh

trace_and_run ${SOURCE}/libiconv-1.12/configure `root_lib_prefixes "libiconv-1.12"` \
  --disable-shared \
  --with-pic \
  "${@}"
