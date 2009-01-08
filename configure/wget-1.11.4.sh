# vim: set tw=0:

. /opt/quest/source/configure/setup-build-environment.sh

/opt/quest/source/wget-1.11.4/configure --prefix=/opt/quest/platform/${SYSID:?}/wget-1.11
trace_and_run ${SOURCE}/wget-1.11.4/configure --prefix=${ROOT}/wget-1.11 \
  "${@}"

