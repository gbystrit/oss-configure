CONFIG_SHELL="${CONFIG_SHELL:=ksh}" \
CC="${CC:=gcc-3.4.3}" \
CXX="${CXX:=g++-3.4.3}" \
/opt/quest/source/trio-1.13/configure --prefix=/opt/quest/platform/${SYSID:?}/trio-1.13
