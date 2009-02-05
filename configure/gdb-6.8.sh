# vim: set tw=0:

. `dirname "${0}"`/setup/build-environment.sh

setup_dependencies \
  libiconv-1.12 \
  zlib-1.2.3 \

trace_and_run ${SOURCE}/gdb-6.8/configure `root_prefixes "gdb-6.8"` \
  --with-mpfr="${ROOT}/mpfr-2.3" \
  --with-gmp="${ROOT}/gmp-4.2" \
  --with-expat=no \
  --without-x \
  --disable-tui \
  --enable-build-warnings \
  --enable-gdb-build-warnings \
  "${@}"

