
DESTDIR="/opt/quest/platform/${SYSID:?}/bin"

cd /opt/quest/source/jam-2.5 && {
  make CC=gcc-3.4 && ./jam0 -sBINDIR="${DESTDIR}" install
}
