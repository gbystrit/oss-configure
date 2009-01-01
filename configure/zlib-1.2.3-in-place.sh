
feature="zlib-1.2.3"
source="/opt/quest/source/${feature}"

pwd=`pwd`
location=`basename "${pwd}"`

[ -d "${source}" ] || {
  echo "Source location ${source} not present"
  exit 2
}

[ "${location}" != "${feature}" ] && {
  echo "
  ${feature} needs to be built in-place. Make sure you do 
  the following before launching this script again:
    cp -r '/opt/quest/source/${feautre}' .
    cd '${feature}'
  "
  exit 2
}

rm -rf * .[!.]* && cp -r "${source}"/. . && {
  CONFIG_SHELL="${CONFIG_SHELL:=ksh}" \
  CC="${CC:=gcc-3.4}" \
  CXX="${CXX:=g++-3.4}" \
  ./configure --prefix=/opt/quest/platform/${SYSID:?}/${feature}
}
