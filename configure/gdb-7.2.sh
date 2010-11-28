# vim: set tw=0:

. `dirname "${0}"`/setup/gcc-build-environment.sh

setup_dependencies \
  libiconv-1.12 \
  zlib-1.2.3 \

trace_and_run ${SOURCE}/gdb-7.2/configure `root_prefixes "gdb-7.2"` \
  --with-mpfr="${ROOT}/mpfr-2.3" \
  --with-gmp="${ROOT}/gmp-4.2" \
  --with-expat=no \
  --without-x \
  --disable-tui \
  --enable-build-warnings \
  --enable-gdb-build-warnings \
  "${@}"

