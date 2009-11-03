# vim: set sw=2 tw=0:

. `dirname "${0}"`/setup/gcc-build-environment.sh

setup_dependencies \
  libiconv-1.12

trace_and_run ${SOURCE}/tar-1.20/configure `root_prefixes "tar-1.20"` \
  "${@}"

