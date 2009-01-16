# vim: set sw=2 tw=0:

. `dirname "${0}"`/setup/gcc-build-environment.sh

trace_and_run ${SOURCE}/ncurses-5.7/configure `root_lib_prefixes "ncurses-5.7"` \
  --with-shared \
  --without-cxx \
  --without-cxx-binding \
  "${@}"

