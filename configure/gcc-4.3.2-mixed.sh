# vim: set tw=0:

. `dirname "${0}"`/setup/build-environment.sh

setup_dependencies \
  libiconv-1.12 \
  gmp-4.2 \
  mpfr-2.3 \

trace_and_run ${SOURCE}/gcc-4.3.2/configure --prefix=${ROOT}/gcc-4.3 \
  --enable-languages=c,c++ \
  --with-gmp="${ROOT}/gmp-4.2" \
  --with-mpfr="${ROOT}/mpfr-2.3" \
  --without-gnu-ld --with-ld="/usr/ccs/bin/ld" \
  --with-gnu-as --with-as="${ROOT}/binutils-2.19/bin/as" \
  --enable-shared \
  --enable-threads=posix \
  "${@}"
