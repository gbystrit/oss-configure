# vim: set tw=0:

. `dirname "${0}"`/setup/gcc-build-environment.sh

trace_and_run ${SOURCE}/wget-1.11.4/configure `root_prefixes "wget-1.11"` \
  --disable-nls \
  --disable-rpath \
  "${@}"

