# vim: set tw=0:

. `dirname "${0}"`/setup/build-environment.sh

setup_dependencies \
  libiconv-1.14 \
  gmp-4.2 \
  mpfr-3.1 \

trace_and_run ${SOURCE}/gcc-4.3.2/configure --prefix=${ROOT}/gcc-4.3 \
  --enable-languages=c,c++ \
  --with-gmp=`make_abi_dir "gmp-4.2"` \
  --with-mpfr=`make_abi_dir "mpfr-3.1"` \
  --with-gnu-ld --with-ld=`make_abi_dir "binutils-2.19"`/bin/ld \
  --with-gnu-as --with-as=`make_abi_dir "binutils-2.19"`/bin/as \
  --enable-shared \
  --enable-threads=posix \
  "${@}"
