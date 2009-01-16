# vim: set sw=2 tw=0:

. `dirname "${0}"`/setup/gcc-build-environment.sh

trace_and_run ${SOURCE}/check-0.9.5/configure `gcc_contrib_lib_prefixes "check-09"` \
  --disable-shared \
  "${@}"

