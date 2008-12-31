CONFIG_SHELL="${CONFIG_SHELL:=ksh}" 
LD_LIBRARY_PATH=/opt/quest/platform/${SYSID:?}/lib \
CC="${CC:=gcc-${GCC_VERSION:=3.4}}" \
CXX="${CXX:=g++-${GCC_VERSION:=3.4}}" \
/opt/quest/source/ncurses-5.7/configure --prefix=/opt/quest/platform/${SYSID:?}/ncurses-5.7 \
  --without-cxx \
  --without-cxx-binding \

