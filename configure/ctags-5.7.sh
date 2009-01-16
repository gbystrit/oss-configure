# vim: set sw=2 tw=0:

. `dirname "${0}"`/setup/build-environment.sh

trace_and_run ${SOURCE}/ctags-5.7/configure --prefix=${ROOT}/ctags-5.7 \
  "${@}"

