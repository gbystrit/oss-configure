
feature="trio-1.13"

pwd=`pwd`
location=`basename "${pwd}"`

[ "${location}" != "${feature}" ] && {
  echo "
  ${feature} needs to be built in-place. Make sure you do 
  the following before launching this script again:
    cp -r '/opt/quest/source/${feautre}'
    cd '${feature}'
  "
  exit 2
}

CONFIG_SHELL="${CONFIG_SHELL:=ksh}" \
CC="${CC:=gcc-3.4.3}" \
CXX="${CXX:=g++-3.4.3}" \
./configure --prefix=/opt/quest/platform/${SYSID:?}/trio-1.13
