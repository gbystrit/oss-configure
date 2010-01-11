# vim: set sw=2:

. `dirname "${0}"`/setup/in-place.sh
. `dirname "${0}"`/setup/gcc-build-environment.sh

PATH=${GCC_ROOT}/bin:${PATH} export PATH
setup_feature cntlm-0.35.1 cntlm-0.35

trace_and_run ./configure `root_prefixes` \
  "${@}"

prefix=`make_prefix`

SYSCONFDIR="${prefix}/etc"
BINDIR="${prefix}/bin"
MANDIR="${prefix}/man"

echo "Will start in 5 sec: make SYSCONFDIR='${SYSCONFDIR}'"
sleep 5
trace_and_run make SYSCONFDIR="${SYSCONFDIR}" && {
  echo "Run as install user:" 
  echo "make install BINDIR='${BINDIR}' MANDIR='${MANDIR}' SYSCONFDIR='${SYSCONFDIR}'"
}
