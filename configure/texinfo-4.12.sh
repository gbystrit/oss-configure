# vim: set sw=2 tw=0:

. `dirname "${0}"`/setup/build-environment.sh

setup_dependencies \
  libiconv-1.12

trace_and_run ${SOURCE}/texinfo-4.12/configure --prefix=${ROOT}/texinfo-4.12 \
  "${@}"
