# vim: set sw=2 tw=0:

. /opt/quest/source/configure/setup-build-environment.sh

setup_dependencies \
  zlib-1.2.3 \
  openssl-0.9 \
  ncurses-5.7 \
  readline-5.2 \
  libiconv-1.12 \

# --disable-ipv6 is needed for OSF/1 4.0 build.
trace_and_run ${SOURCE}/ruby-1.8.6-p287/configure --disable-ipv6 --prefix="${ROOT}/ruby-1.8" \
  "${@}"
