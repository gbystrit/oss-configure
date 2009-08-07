# vim: set sw=2:

. `dirname "${0}"`/setup/in-place.sh

setup_feature valgrind-3.4.1

trace_and_run ./configure `root_prefixes "valgrind-3.4"` \
  "${@}"
