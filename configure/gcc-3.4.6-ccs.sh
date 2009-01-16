# vim: set tw=0:

. `dirname "${0}"`/setup/build-environment.sh

setup_dependencies \
  libiconv-1.12

trace_and_run ${SOURCE}/gcc-3.4.6/configure --prefix=${ROOT}/gcc-3.4 \
  --enable-languages=c,c++ \
  --with-ld="/usr/ccs/bin/ld" \
  --with-as="/usr/ccs/bin/as" \
  --enable-shared \
  --enable-threads=posix \
  "${@}"
