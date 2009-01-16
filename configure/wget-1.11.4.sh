# vim: set tw=0:

. `dirname "${0}"`/setup/build-environment.sh

trace_and_run ${SOURCE}/wget-1.11.4/configure --prefix=${ROOT}/wget-1.11 \
  --disable-nls \
  --disable-rpath \
  "${@}"

