# vim: set tw=0:

. `dirname "${0}"`/setup/gcc-build-environment.sh

trace_and_run ${SOURCE}/swig-1.3.31/configure `root_prefixes "swig-1.3"` \
  "${@}"
