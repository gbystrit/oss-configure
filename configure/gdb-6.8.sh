# vim: set tw=0:
CONFIG_SHELL="${CONFIG_SHELL:=ksh}" \
CC="${CC:=gcc-3.4}" \
CXX="${CXX:=g++-3.4}" \
CPPFLAGS=-I"/opt/quest/platform/${SYSID:?}/ncurses-5.7/include" \
LDFLAGS=-L"/opt/quest/platform/${SYSID:?}/ncurses-5.7/lib" \
/opt/quest/source/gdb-6.8/configure --prefix=/opt/quest/platform/${SYSID:?}/gdb-6.8 \
  --with-mpfr="/opt/quest/platform/${SYSID:?}/mpfr-2.3" \
  --with-gmp="/opt/quest/platform/${SYSID:?}/gmp-4.2" \

