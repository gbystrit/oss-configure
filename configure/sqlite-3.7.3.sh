# vim: set sw=2 tw=0:

. `dirname "${0}"`/setup/build-environment.sh

setup_dependencies \

trace_and_run ${SOURCE}/sqlite-3.7.3/configure `root_prefixes "sqlite-3.7"` \
  "${@}"
