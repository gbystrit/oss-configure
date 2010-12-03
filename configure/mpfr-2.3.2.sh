# vim: set tw=0:

. `dirname "${0}"`/setup/gcc-build-environment.sh

setup_dependencies \

trace_and_run ${SOURCE}/mpfr-2.3.2/configure `root_prefixes "mpfr${GCC_ABI}-2.3"` \
  --disable-shared \
  --with-gmp="${ROOT_PREFIX}/gmp-4.2" \
  "${@}"
