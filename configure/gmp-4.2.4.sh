# vim: set tw=0:

. `dirname "${0}"`/setup/gcc-build-environment.sh

setup_dependencies \

ABI="${BUILD_ABI}" trace_and_run ${SOURCE}/gmp-4.2.4/configure `root_prefixes "gmp${GCC_ABI}-4.2"` \
  --disable-shared \
  "${@}"

