# vim: set sw=2 tw=0:

. `dirname "${0}"`/setup/build-environment.sh

setup_dependencies \
  libiconv-1.14 \
  zlib-1.2.5 \

trace_and_run ${SOURCE}/global-6.1/configure `root_prefixes "global-6.1"` \
  "${@}"

