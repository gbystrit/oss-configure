# vim: set tw=0:
CONFIG_SHELL="${CONFIG_SHELL:=ksh}" \
CC="${CC:=gcc-3.4}" \
CXX="${CXX:=g++-3.4}" \
/opt/quest/source/ruby-1.8.6-p287/configure --prefix=/opt/quest/platform/${SYSID:?}/ruby-1.8