CONFIG_SHELL=ksh LD_LIBRARY_PATH=/opt/quest/platform/${SYSID:?}/lib \
CC=gcc-4.3 CXX=g++-4.3 \
/opt/quest/source/lzma-4.32.7/configure --prefix=/opt/quest/platform/${SYSID:?}/lzma-4.32
