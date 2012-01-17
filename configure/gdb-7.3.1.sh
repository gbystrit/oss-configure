# vim: set tw=0:

. `dirname "${0}"`/setup/gcc-build-environment.sh

setup_dependencies \
  libiconv-1.14 \
  zlib-1.2.5 \

trace_and_run ${SOURCE}/gdb-7.3.1/configure `root_prefixes "gdb-7.3.1"` \
  --with-mpfr=no \
  --with-gmp=no \
  --with-expat=no \
  --without-x \
  --disable-tui \
  --enable-build-warnings \
  --enable-gdb-build-warnings \
  "${@}"

