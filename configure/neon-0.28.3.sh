# vim: set sw=2 tw=0:

. `dirname "${0}"`/setup/build-environment.sh

setup_dependencies \
  libiconv-1.12 \
  zlib-1.2.3 \
  openssl-0.9 \
  expat-2.0 \

trace_and_run ${SOURCE}/neon-0.28.3/configure --prefix=${ROOT}/neon-0.28 \
  --with-pic \
  --enable-static \
  --disable-shared \
  --disable-nls \
  --with-ssl=openssl \
  "${@}"

