# vim: set sw=2 tw=0:

. `dirname "${0}"`/setup/in-place.sh

setup_feature python-2.6.1

setup_dependencies \
  zlib-1.2.5 \
  openssl-0.9 \
  ncurses-5.7 \
  readline-5.2 \
  libiconv-1.14 \
  sqlite-3.7 \

trace_and_run ./configure `root_prefixes "python-2.6"` \
  "${@}"
