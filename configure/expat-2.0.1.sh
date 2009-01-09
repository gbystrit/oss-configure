# vim: set sw=2 tw=0:

. /opt/quest/source/configure/setup-build-environment.sh

trace_and_run ${SOURCE}/expat-2.0.1/configure --prefix=${ROOT}/expat-2.0 \
  --disable-shared \
  --with-pic \
  "${@}"

