# vim: set sw=2:

. `dirname "${0}"`/setup/in-place.sh
. `dirname "${0}"`/setup/gcc-build-environment.sh

PATH=${GCC_ROOT}/bin:${PATH} export PATH
gcc -v

setup_feature openssl-0.9.8s

# To build on Solaris, change ./config to ./Configure and add one of the 
# following options depending on the OS version and platfom:
#   sun-10-x86          solaris-x86-gcc
#   sun-8-sparc         solaris-sparcv9-gcc
#   sun-9-sparc         solaris-sparcv9-gcc
#   sun-10-sparc        solaris-sparcv9-gcc
#   hp11-23-ia64        hpux64-ia64-gcc

trace_and_run ./config shared no-zlib `root_lib_prefixes "openssl-0.9.8s"` \
  ${CPPFLAGS} ${LDFLAGS} "${@}"

echo "Will start in 5 sec: make CC=${CC} MAKEDEPPROG=${CC}"
sleep 5
trace_and_run make 
