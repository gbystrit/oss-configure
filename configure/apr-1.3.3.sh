# vim: set sw=2 tw=0:

. `dirname "${0}"`/setup/gcc-build-environment.sh

setup_dependencies \
  libiconv-1.12 \
  zlib-1.2.3 \
  expat-2.0 \

trace_and_run ${SOURCE}/apr-1.3.3/configure `root_lib_prefixes "apr-1.3"` \
  --enable-shared \
  "${@}"
