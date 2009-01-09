# vim: set sw=2 tw=0:

. /opt/quest/source/configure/setup-build-environment.sh

setup_dependencies \
  libiconv-1.12

trace_and_run ${SOURCE}/flex-2.5.35/configure --prefix=${ROOT}/flex-2.5 \
  "${@}"
