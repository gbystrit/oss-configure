# vim: set tw=0:

. `dirname "${0}"`/setup/gcc-build-environment.sh

setup_dependencies \
  libiconv-1.12 \
  gmp${GCC_ABI}-4.2 \
  mpfr${GCC_ABI}-2.3 \

trace_and_run ${SOURCE}/gcc-4.3.2/configure `root_prefixes "gcc${GCC_ABI}-4.3"` \
  --enable-languages=${GCC_LANGS:=c,c++} \
  --with-gmp="${ROOT}/gmp${GCC_ABI}-4.2" \
  --with-mpfr="${ROOT}/mpfr${GCC_ABI}-2.3" \
  --without-gnu-ld --with-ld="/usr/ccs/bin/ld" \
  --with-gnu-as --with-as="${ROOT}/binutils${GCC_ABI}-2.19/bin/as" \
  --enable-shared \
  --enable-threads=posix \
  "${@}"
