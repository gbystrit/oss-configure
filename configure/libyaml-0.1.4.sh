# vim: set sw=2 tw=0:

. `dirname "${0}"`/setup/gcc-build-environment.sh

trace_and_run ${SOURCE}/yaml-0.1.4/configure `root_lib_prefixes "yaml-0.1.4"` \
  --disable-shared \
  --with-pic \
  "${@}"
