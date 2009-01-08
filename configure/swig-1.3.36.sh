# vim: set tw=0:

. /opt/quest/source/configure/setup-build-environment.sh

trace_and_run ${SOURCE}/swig-1.3.36/configure --prefix=${ROOT}/swig-1.3 \
  "${@}"
