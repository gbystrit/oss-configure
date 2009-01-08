# vim: set sw=2 tw=0:

. /opt/quest/source/configure/setup-build-environment.sh

trace_and_run ${SOURCE}/tar-1.20/configure --prefix=${ROOT}/tar-1.20 \
  "${@}"

