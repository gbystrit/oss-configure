# vim: set tw=0:

. `dirname "${0}"`/setup/gcc-build-environment.sh

setup_dependencies \
  libiconv-1.14 \
  zlib-1.2.5 \

trace_and_run ${SOURCE}/binutils-2.19/configure `root_lib_prefixes "binutils${GCC_ABI}-2.19"` \
  "${@}"
