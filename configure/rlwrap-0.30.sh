# vim: set sw=2 tw=0:

. `dirname "${0}"`/setup/gcc-build-environment.sh

setup_dependencies \
  libiconv-1.12 \
  zlib-1.2.3 \
  readline-5.2 \

trace_and_run ${SOURCE}/rlwrap-0.30/configure `root_prefixes "rlwrap-0.30"` \
  "${@}"

