# vim: set sw=2 tw=0:

. `dirname "${0}"`/setup/build-environment.sh

setup_dependencies \
  libiconv-1.12

trace_and_run ${SOURCE}/bison-2.3/configure --prefix=${ROOT}/bison-2.3 \
  "${@}"
