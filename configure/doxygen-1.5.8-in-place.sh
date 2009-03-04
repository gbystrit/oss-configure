# vim: set sw=2:

. `dirname "${0}"`/setup/in-place.sh
. `dirname "${0}"`/setup/gcc-build-environment.sh

setup_feature doxygen-1.5.8
setup_dependencies \
  libiconv-1.12 \
  zlib-1.2.3 \

PATH=${GCC_ROOT}/bin:${PATH} export PATH
gcc -v

trace_and_run ./configure --prefix ${ROOT}/doxygen-1.5 \
  "${@}"

sleep 5
trace_and_run make
