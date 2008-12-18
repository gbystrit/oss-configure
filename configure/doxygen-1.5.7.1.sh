# vim: set tw=0:
CONFIG_SHELL="${CONFIG_SHELL:=ksh}" \
CC="${CC:=gcc-3.4}" \
CXX="${CXX:=g++-3.4}" \
/opt/quest/source/doxygen-1.5.7.1/configure --prefix=/opt/quest/platform/${SYSID:?}/doxygen-1.5
