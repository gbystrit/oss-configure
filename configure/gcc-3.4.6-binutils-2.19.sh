# vim: set tw=0:

. /opt/quest/source/configure/setup-build-environment.sh

setup_dependencies \
  libiconv-1.12

trace_and_run ${SOURCE}/gcc-3.4.6/configure --prefix=${ROOT}/gcc-3.4 \
  --enable-languages=c,c++ \
  --with-gnu-ld --with-ld="${ROOT}/binutils-2.19/bin/ld" \
  --with-gnu-as --with-as="${ROOT}/binutils-2.19/bin/as" \
  --enable-shared \
  --enable-threads=posix \
  "${@}"
