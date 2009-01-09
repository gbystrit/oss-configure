# vim: set sw=2 tw=0:

. /opt/quest/source/configure/setup-build-environment.sh

setup_dependencies \
  zlib-1.2.3 \
  openssl-0.9 \
  ncurses-5.7 \
  readline-5.2 \
  libiconv-1.12 \

# On HP-UX IA64, had to compile with the following settings:
#   GCC_VERSION=4.3 CFLAGS=-mlp64 CXXFLAGS=-mlp64 LDFLAGS=-L/opt/quest/platform/hp11-23-ia64/lib64
#
# For that to work, all dependent libraries had to be built with -mlp64 flag.

LDFLAGS="${LDFLAGS} -static-libgcc" export LDFLAGS
# --disable-ipv6 is needed for OSF/1 4.0 build.
trace_and_run ${SOURCE}/ruby-1.8.6-p287/configure --prefix="${ROOT}/ruby-1.8" \
  --disable-ipv6 \
  --disable-rpath \
  "${@}"
