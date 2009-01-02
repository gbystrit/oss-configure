# vim: set sw=2:

. /opt/quest/source/configure/setup-in-place.sh
PATH=${ROOT}/gcc-${GCC_VERSION}/bin:${PATH} export PATH
gcc -v

setup_dependencies \
  zlib-1.2.3 \

setup_feature openssl-0.9.8i

trace_and_run ./config no-shared zlib --prefix=${ROOT}/openssl-0.9 \
  ${CPPFLAGS} ${LDFLAGS} "${@}"

echo "Will start in 5 sec: make CC=${CC} MAKEDEPPROG=${CC}"
sleep 5
trace_and_run make

