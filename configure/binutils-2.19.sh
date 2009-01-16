# vim: set tw=0:

. `dirname "${0}"`/setup/build-environment.sh

setup_dependencies \
  libiconv-1.12 \
  zlib-1.2.3 \

trace_and_run ${SOURCE}/binutils-2.19/configure --prefix=${ROOT}/binutils-2.19 \
  "${@}"
