# vim: set tw=0:
CONFIG_SHELL="${CONFIG_SHELL:=ksh}" CC=gcc-3.4.3 CXX=g++-3.4.3 /opt/quest/source/gcc-3.4.6/configure \
  --prefix="/opt/quest/platform/${SYSID:?}/gcc-3.4" \
  --enable-languages=c,c++ \
  --with-ld="/usr/ccs/bin/ld" \
  --with-as="/usr/ccs/bin/as" \
  --enable-shared \
  --enable-threads=posix \
  
