# vim: set tw=0:
CONFIG_SHELL="${CONFIG_SHELL:=ksh}" \
CC="${CC:=gcc-3.4.3}" \
CXX="${CXX:=g++-3.4.3}" \
/opt/quest/source/tar-1.20/configure --prefix=/opt/quest/platform/${SYSID:?}/tar-1.20
