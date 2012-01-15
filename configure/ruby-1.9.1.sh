# vim: set sw=2 tw=0:

. `dirname "${0}"`/setup/gcc-build-environment.sh

setup_dependencies \
  zlib-1.2.5 \
  openssl-0.9 \
  ncurses-5.7 \
  readline-5.2 \
  libiconv-1.14 \

# On HP-UX IA64, had to compile with the following settings:
#   GCC_VERSION=4.3 CFLAGS=-mlp64 CXXFLAGS=-mlp64 LDFLAGS=-L/opt/quest/platform/hp11-23-ia64/lib64
#
# For that to work, all dependent libraries had to be built with -mlp64 flag.

XLDFLAGS="${XLDFLAGS} -static-libgcc" export XLDFLAGS
# --disable-ipv6 is needed for OSF/1 4.0 build.
trace_and_run ${SOURCE}/ruby-1.9.1/configure `root_prefixes "ruby-1.9.1"` \
  --disable-option-checking \
  --enable-ipv6 \
  --disable-rpath \
  "${@}"
