# vim: set tw=0:

. /opt/quest/source/configure/setup-build-environment.sh

setup_dependencies \
  ncurses-5.7 \

${SOURCE}/gdb-6.8/configure --prefix=${ROOT}/gdb-6.8 \
  --with-mpfr="${ROOT}/mpfr-2.3" \
  --with-gmp="${ROOT}/gmp-4.2" \

