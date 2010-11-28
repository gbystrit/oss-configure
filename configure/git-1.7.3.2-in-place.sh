# vim: set sw=2:

. `dirname "${0}"`/setup/in-place.sh
. `dirname "${0}"`/setup/gcc-build-environment.sh

setup_feature git-1.7.3.2
setup_dependencies \
  libiconv-1.12 \
  zlib-1.2.3 \
  expat-2.0 \

trace_and_run ./configure `root_lib_prefixes "git-1.7"` \
  --without-openssl
  "${@}"

