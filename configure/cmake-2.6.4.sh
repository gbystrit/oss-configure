# vim: set sw=2 tw=0:

. `dirname "${0}"`/setup/gcc-build-environment.sh

trace_and_run ${SOURCE}/cmake-2.6.4/configure `gcc_contrib_lib_prefixes "cmake-2.6"` \
  --disable-shared \
  "${@}"

