# vim: set tw=0:
CONFIG_SHELL="${CONFIG_SHELL:=ksh}" \
CC="${CC:=gcc-3.4}" \
CXX="${CXX:=g++-3.4}" \
/opt/quest/source/swig-1.3.36/configure --prefix=/opt/quest/platform/${SYSID:?}/swig-1.3
