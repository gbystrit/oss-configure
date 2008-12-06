# vim: set tw=0:
CC=gcc-3.4.3 CXX=g++-3.4.3 /opt/quest/source/gcc-4.3.2/configure \
  --prefix="/opt/quest/platform/rh-30-x86/gcc-4.3" \
  --enable-languages=c,c++ \
  --with-gmp="/opt/quest/platform/rh-30-x86/gmp-4.2" \
  --with-mpfr="/opt/quest/platform/rh-30-x86/mpfr-2.3" \
  --with-gnu-ld --with-ld="/opt/quest/platform/rh-30-x86/binutils-2.19/bin/ld" \
  --with-gnu-as --with-as="/opt/quest/platform/rh-30-x86/binutils-2.19/bin/as" \
  
