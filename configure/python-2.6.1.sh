# vim: set sw=2 tw=0:

. `dirname "${0}"`/setup/in-place.sh

setup_feature python-2.6.1

setup_dependencies \
  zlib-1.2.3 \
  openssl-0.9 \
  ncurses-5.7 \
  readline-5.2 \
  libiconv-1.12 \

trace_and_run ./configure `root_prefixes "python-2.6"` \
  "${@}"
