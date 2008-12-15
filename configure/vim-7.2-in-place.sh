
feature="vim-7.2"

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
./configure \
  --prefix=/opt/quest/platform/${SYSID:?}/vim-7.2 \
  --disable-xsmp                                  \
  --disable-xsmp-interact                         \
  --disable-mzschemeinterp                        \
  --disable-perlinterp                            \
  --disable-pythoninterp                          \
  --disable-tclinterp                             \
  --disable-rubyinterp                            \
  --enable-cscope                                 \
  --disable-workshop                              \
  --disable-netbeans                              \
  --disable-sniff                                 \
  --disable-multibyte                             \
  --disable-hangulinput                           \
  --disable-xim                                   \
  --disable-fontset                               \
  --disable-gui                                   \
  --disable-gtk-check                             \
  --disable-gtk2-check                            \
  --disable-gnome-check                           \
  --disable-motif-check                           \
  --disable-athena-check                          \
  --disable-nextaw-check                          \
  --disable-carbon-check                          \
  --disable-gtktest                               \
  --disable-acl                                   \
  --disable-gpm                                   \
  --disable-sysmouse                              \
  --disable-nls                                   \
  --without-x                                     \
  --without-gnome                                 \

