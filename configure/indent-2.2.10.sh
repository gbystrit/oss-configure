# vim: set sw=2 tw=0:

. `dirname "${0}"`/setup/gcc-build-environment.sh

setup_dependencies \
  zlib-1.2.3 \
  libiconv-1.12 \

trace_and_run ${SOURCE}/indent-2.2.10/configure `root_prefixes "indent-2.2"` \
  "${@}"
