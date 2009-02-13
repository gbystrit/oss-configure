# vim: set tw=0:

. `dirname "${0}"`/setup/build-environment.sh

setup_dependencies \
  libiconv-1.12 \
  zlib-1.2.3 \

GDB_VERSION=5.3
trace_and_run ${SOURCE}/gdb-${GDB_VERSION}/configure `root_prefixes "gdb-${GDB_VERSION}"` \
  --program-suffix=-${GDB_VERSION} \
  --with-expat=no \
  --without-x \
  --disable-tui \
  "${@}"

