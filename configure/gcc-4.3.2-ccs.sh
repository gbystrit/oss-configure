# vim: set tw=0:
CONFIG_SHELL="${CONFIG_SHELL:=ksh}" \
CC=gcc-${GCC_VERSION:=3.4} \
CXX=g++-${GCC_VERSION:=3.4} \
/opt/quest/source/gcc-4.3.2/configure \
  --prefix="/opt/quest/platform/${SYSID:?}/gcc-4.3" \
  --enable-languages=c,c++ \
  --with-gmp="/opt/quest/platform/${SYSID:?}/gmp-4.2" \
  --with-mpfr="/opt/quest/platform/${SYSID:?}/mpfr-2.3" \
  --without-gnu-ld --with-ld="/usr/ccs/bin/ld" \
  --without-gnu-as --with-as="/usr/ccs/bin/as" \
  --enable-shared \
  --enable-threads=posix \

