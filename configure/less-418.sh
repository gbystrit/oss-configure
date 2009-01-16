# vim: set sw=2 tw=0:

. `dirname "${0}"`/setup/build-environment.sh

setup_dependencies ncurses-5.7

trace_and_run ${SOURCE}/less-418/configure --prefix=${ROOT}/less-418 \
  "${@}"

