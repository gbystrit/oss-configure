# vim: set sw=2 tw=0:

. `dirname "${0}"`/setup/build-environment.sh

setup_dependencies \
  libiconv-1.12

trace_and_run ${SOURCE}/tar-1.20/configure --prefix=${ROOT}/tar-1.20 \
  "${@}"

