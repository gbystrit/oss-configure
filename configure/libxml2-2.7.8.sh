# vim: set sw=2 tw=0:

. `dirname "${0}"`/setup/gcc-build-environment.sh

setup_dependencies \
  zlib-1.2.5 \
  libiconv-1.14 \

trace_and_run ${SOURCE}/libxml2-2.7.8/configure `root_lib_prefixes "libxml2-2.7"` \
  --disable-shared \
  --with-pic \
  "${@}"
