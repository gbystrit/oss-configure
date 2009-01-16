# vim: set sw=2 tw=0:

. `dirname "${0}"`/setup/build-environment.sh

trace_and_run ${SOURCE}/libiconv-1.12/configure --prefix=${ROOT}/libiconv-1.12 \
  --disable-shared \
  --with-pic \
  "${@}"
