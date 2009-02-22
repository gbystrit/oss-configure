# vim: set tw=0:

. `dirname "${0}"`/setup/build-environment.sh

trace_and_run ${SOURCE}/swig-1.3.31/configure --prefix=${ROOT}/swig-1.3 \
  "${@}"
