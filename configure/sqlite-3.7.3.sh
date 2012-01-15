# vim: set sw=2 tw=0:

. `dirname "${0}"`/setup/gcc-build-environment.sh

setup_dependencies \
  zlib-1.2.5 \
  ncurses-5.7 \
  readline-5.2 \
  libiconv-1.14 \

trace_and_run ${SOURCE}/sqlite-3.7.3/configure `root_lib_prefixes "sqlite-3.7.3"` \
  "${@}"
