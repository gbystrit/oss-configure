# vim: set sw=2 tw=0:

. /opt/quest/source/configure/setup-build-environment.sh

setup_dependencies \
  zlib-1.2.3 \
  openssl-0.9 \

trace_and_run ${SOURCE}/ruby-1.8.6-p287/configure --prefix="${ROOT}/ruby-1.8" \

