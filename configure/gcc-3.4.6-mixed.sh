# vim: set tw=0:

. `dirname "${0}"`/setup/gcc-build-environment.sh

setup_dependencies \
  libiconv-1.12

trace_and_run ${SOURCE}/gcc-3.4.6/configure `root_prefixes "gcc${GCC_ABI}-3.4"` \
  --enable-languages=c,c++ \
  --without-gnu-ld --with-ld="/usr/ccs/bin/ld" \
  --with-gnu-as --with-as="${ROOT}/binutils${GCC_ABI}-2.19/bin/as" \
  --enable-shared \
  --enable-threads=posix \
  "${@}"
