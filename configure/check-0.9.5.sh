# vim: set sw=2 tw=0:

. `dirname "${0}"`/setup/gcc-build-environment.sh

trace_and_run ${SOURCE}/check-0.9.5/configure `root_lib_prefixes "check-0.9"` \
  --disable-shared \
  --disable-timeout-tests \
  "${@}"

