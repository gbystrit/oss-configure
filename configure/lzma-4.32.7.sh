CONFIG_SHELL="${CONFIG_SHELL:=ksh}" 
LD_LIBRARY_PATH=/opt/quest/platform/${SYSID:?}/lib \
CC="${CC:=gcc-${GCC_VERSION:=4.3}}" \
CXX="${CC:=g++-${GCC_VERSION:=4.3}}" \
/opt/quest/source/lzma-4.32.7/configure --prefix=/opt/quest/platform/${SYSID:?}/lzma-4.32
