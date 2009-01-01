# vim: set sw=2 tw=0:

. /opt/quest/source/configure/setup-build-environment.sh

${SOURCE}/ncurses-5.7/configure --prefix=${ROOT}/ncurses-5.7 \
  --without-cxx \
  --without-cxx-binding \

