# vim: set tw=0:

. `dirname "${0}"`/setup/in-place.sh
. `dirname "${0}"`/setup/gcc-build-environment.sh

setup_feature graphviz-2.28.0

trace_and_run ./configure `root_prefixes "graphviz-2.28"` \
  --enable-ruby=yes \
  --enable-perl=no \
  --enable-tcl=no \
  --with-included-ltdl \
  "${@}"
