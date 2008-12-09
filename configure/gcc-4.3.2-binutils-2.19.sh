# vim: set tw=0:
CONFIG_SHELL=ksh CC=gcc-3.4 CXX=g++-3.4 /opt/quest/source/gcc-4.3.2/configure \
  --prefix="/opt/quest/platform/${SYSID:?}/gcc-4.3" \
  --enable-languages=c,c++ \
  --with-gmp="/opt/quest/platform/${SYSID:?}/gmp-4.2" \
  --with-mpfr="/opt/quest/platform/${SYSID:?}/mpfr-2.3" \
  --with-gnu-ld --with-ld="/opt/quest/platform/${SYSID:?}/binutils-2.19/bin/ld" \
  --with-gnu-as --with-as="/opt/quest/platform/${SYSID:?}/binutils-2.19/bin/as" \
  --enable-shared \
  --enable-threads=posix \

