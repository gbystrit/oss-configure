# vim: set sw=2:

. `dirname "${0}"`/setup/in-place.sh
. `dirname "${0}"`/setup/gcc-build-environment.sh

setup_feature jam-2.5

trace_and_run make CC="${CC}"
trace_and_run ./jam0 -sBINDIR="`make_top_dir`/bin" install
