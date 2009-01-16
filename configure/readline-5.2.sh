# vim: set sw=2 tw=0:

. `dirname "${0}"`/setup/gcc-build-environment.sh

setup_dependencies \
  ncurses-5.7 \

trace_and_run ${SOURCE}/readline-5.2/configure `root_lib_prefixes "readline-5.2"` \
  "${@}"

