# vim: set sw=2 tw=0:

. `dirname "${0}"`/setup/build-environment.sh

setup_dependencies \
  libiconv-1.12 \
  zlib-1.2.3 \

trace_and_run ${SOURCE}/global-5.7.4/configure `root_prefixes "global-5.7"` \
  "${@}"

