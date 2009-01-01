# vim: set sw=2:

. /opt/quest/source/configure/setup-in-place.sh

setup_feature zlib-1.2.3

trace_and_run ./configure --prefix=${ROOT}/zlib-1.2.3

