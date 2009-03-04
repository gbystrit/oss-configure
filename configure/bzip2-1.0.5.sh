# vim: set sw=2 tw=0:

. `dirname "${0}"`/setup/in-place.sh
. `dirname "${0}"`/setup/gcc-build-environment.sh

PATH=${GCC_ROOT}/bin:${PATH} export PATH
gcc -v

setup_feature bzip2-1.0.5
setup_dependencies \
  libiconv-1.12

sleep 5
trace_and_run make install PREFIX=${ROOT}/bzip2-1.0
