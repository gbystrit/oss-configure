# vim: set sw=2 tw=0:

. `dirname "${0}"`/setup/gcc-build-environment.sh

setup_dependencies \
  zlib-1.2.3 \
  ncurses-5.7 \
  readline-5.2 \
  libiconv-1.12 \

trace_and_run ${SOURCE}/postgresql-9.1.2/configure `root_lib_prefixes "postgresql-9.1"` \
  "${@}"
