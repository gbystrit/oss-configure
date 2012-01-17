# vim: set sw=2 tw=0:

. `dirname "${0}"`/setup/gcc-build-environment.sh

setup_dependencies \
  zlib-1.2.5 \
  libiconv-1.14 \

trace_and_run ${SOURCE}/cvs-1.12.12/configure `root_prefixes "cvs-1.12.12"` \
  --with-external-zlib \
  "${@}"
