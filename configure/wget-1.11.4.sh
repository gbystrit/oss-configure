# vim: set tw=0:
CONFIG_SHELL="${CONFIG_SHELL:=ksh}" \
CC="${CC:=gcc-3.4}" \
CXX="${CXX:=g++-3.4}" \
/opt/quest/source/wget-1.11.4/configure --prefix=/opt/quest/platform/${SYSID:?}/wget-1.11