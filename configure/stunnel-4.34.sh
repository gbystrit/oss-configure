# vim: set tw=0:

. `dirname "${0}"`/setup/gcc-build-environment.sh

setup_dependencies \
  openssl-0.9 \

trace_and_run ${SOURCE}/stunnel-4.34/configure `root_prefixes "stunnel-4.34"` \
  "${@}"

