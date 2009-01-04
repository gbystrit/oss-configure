# vim: set sw=2:

. /opt/quest/source/configure/setup-in-place.sh
PATH=${ROOT}/gcc-${GCC_VERSION}/bin:${PATH} export PATH
gcc -v

setup_feature openssl-0.9.8i

# To build on Solaris, change ./config to ./Configure and add one of the 
# following options depending on the OS version and platfom:
#   sun-10-x86          solaris-x86-gcc
#   sun-9-sparc         solaris-sparcv9-gcc
#   sun-10-sparc        solaris-sparcv9-gcc
#   hp11-23-ia64        hpux-ia64-gcc

trace_and_run ./config no-shared no-zlib --prefix=${ROOT}/openssl-0.9 \
  ${CPPFLAGS} ${LDFLAGS} "${@}"

echo "Will start in 5 sec: make CC=${CC} MAKEDEPPROG=${CC}"
sleep 5
trace_and_run make

