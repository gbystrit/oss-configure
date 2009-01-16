# vim: set sw=2 tw=0:

. `dirname "${0}"`/setup/build-environment.sh

trace_and_run ${SOURCE}/ncurses-5.7/configure --prefix=${ROOT}/ncurses-5.7 \
  --with-shared \
  --without-cxx \
  --without-cxx-binding \
  "${@}"

