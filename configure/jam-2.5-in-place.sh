# vim: set sw=2:

. /opt/quest/source/configure/setup-in-place.sh

setup_feature jam-2.5

trace_and_run make CC="${CC}"
trace_and_run ./jam0 -sBINDIR="${ROOT}/bin" install
