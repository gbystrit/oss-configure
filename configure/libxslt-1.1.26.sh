# vim: set sw=2 tw=0:

. `dirname "${0}"`/setup/gcc-build-environment.sh

setup_dependencies \
  zlib-1.2.5 \
  libiconv-1.14 \
  openssl-0.9 \
  libxml2-2.7 \

trace_and_run ${SOURCE}/libxslt-1.1.26/configure `root_lib_prefixes "libxslt-1.1"` \
  --disable-shared \
  --with-pic \
  --with-libxml-prefix=`make_abi_dir "libxml2-2.7"` \
  --without-crypto \
  "${@}"
