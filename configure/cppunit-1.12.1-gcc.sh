# vim: set sw=2 tw=0:

. /opt/quest/source/configure/setup-gcc-build-environment.sh

trace_and_run ${SOURCE}/cppunit-1.12.1/configure `gcc_contrib_lib_prefixes "cppunit-1.12"` \
  --disable-shared \
  "${@}"

