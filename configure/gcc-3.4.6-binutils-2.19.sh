# vim: set tw=0:
CONFIG_SHELL="${CONFIG_SHELL:=ksh}" \
CC="${CC:=gcc-${GCC_VERSION:=3.4.3}}" \
CXX="${CC:=g++-${GCC_VERSION:=3.4.3}}" \
/opt/quest/source/gcc-3.4.6/configure \
  --prefix="/opt/quest/platform/${SYSID:?}/gcc-3.4" \
  --enable-languages=c,c++ \
  --with-gnu-ld --with-ld="/opt/quest/platform/${SYSID:?}/binutils-2.19/bin/ld" \
  --with-gnu-as --with-as="/opt/quest/platform/${SYSID:?}/binutils-2.19/bin/as" \
  --enable-shared \
  --enable-threads=posix \
  
