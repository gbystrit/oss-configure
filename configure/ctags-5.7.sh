# vim: set sw=2 tw=0:

. /opt/quest/source/configure/setup-build-environment.sh

trace_and_run ${SOURCE}/ctags-5.7/configure --prefix=${ROOT}/ctags-5.7 \
  "${@}"

