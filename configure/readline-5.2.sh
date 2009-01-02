# vim: set sw=2 tw=0:

. /opt/quest/source/configure/setup-build-environment.sh

setup_dependencies \
  ncurses-5.7 \

trace_and_run ${SOURCE}/readline-5.2/configure --prefix=${ROOT}/readline-5.2 

