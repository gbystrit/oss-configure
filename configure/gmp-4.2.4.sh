ABI="${ABI:=32}" \
CONFIG_SHELL="${CONFIG_SHELL:=ksh}" \
CC=gcc-3.4 \
CXX=g++-3.4 \
/opt/quest/source/gmp-4.2.4/configure --prefix=/opt/quest/platform/${SYSID:?}/gmp-4.2 --disable-shared
