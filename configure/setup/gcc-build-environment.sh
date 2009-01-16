# vim: set sw=2 tw=0:

unset CC CXX
export CFLAGS CXXFLAGS

. /opt/quest/source/configure/setup-platform-environment.sh
. /opt/quest/source/configure/setup-build-environment.sh

GCC_ROOT=${ROOT}/gcc-${GCC_VERSION}
GCC_CONTRIB=${GCC_ROOT}/contrib

gcc_contrib_lib_prefixes()
{
  echo --prefix=${GCC_CONTRIB}/${1} --libdir=${GCC_CONTRIB}/${1}/${BUILD_ABIDIR:-'lib'}
}
