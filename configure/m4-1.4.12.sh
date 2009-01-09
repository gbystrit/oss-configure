# vim: set sw=2 tw=0:

. /opt/quest/source/configure/setup-build-environment.sh

setup_dependencies \
  libiconv-1.12

trace_and_run ${SOURCE}/m4-1.4.12/configure --prefix=${ROOT}/m4-1.4 \
  "${@}"
