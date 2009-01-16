# vim: set sw=2 tw=0:

. /opt/quest/source/configure/setup-build-environment.sh

setup_dependencies \
  libiconv-1.12 \
  zlib-1.2.3 \

trace_and_run ${SOURCE}/global-5.7.4/configure --prefix=${ROOT}/global-5.7 \
  "${@}"

