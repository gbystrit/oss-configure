# vim: set sw=2 tw=0:

. `dirname "${0}"`/setup/gcc-build-environment.sh

setup_dependencies \
  openssl-0.9 \
  libiconv-1.12 \
  zlib-1.2.3 \
  expat-2.0 \

trace_and_run ${SOURCE}/neon-0.28.3/configure `root_lib_prefixes "neon-0.28"` \
  --with-pic \
  --enable-static \
  --disable-shared \
  --disable-nls \
  --with-ssl=openssl \
  --with-expat \
  "${@}"

