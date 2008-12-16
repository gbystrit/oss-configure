
feature="jam-2.5"

pwd=`pwd`
location=`basename "${pwd}"`

[ "${location}" != "${feature}" ] && {
  echo "
  ${feature} needs to be built in-place. Make sure you do 
  the following before launching this script again:
    cp -r '/opt/quest/source/${feautre}' .
    cd '${feature}'
  "
  exit 2
}
DESTDIR="/opt/quest/platform/${SYSID:?}/bin"
make CC=gcc-3.4 && ./jam0 -sBINDIR="${DESTDIR}" install
