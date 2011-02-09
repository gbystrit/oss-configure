# vim: set tw=0:

. `dirname "${0}"`/setup/gcc-build-environment.sh

setup_dependencies \
  libiconv-1.12 \
  zlib-1.2.3 \

trace_and_run ${SOURCE}/binutils-2.21/configure `root_prefixes "binutils${GCC_ABI}-2.21"` \
  "${@}"
