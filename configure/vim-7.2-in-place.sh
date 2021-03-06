# vim: set sw=2:

. `dirname "${0}"`/setup/in-place.sh
. `dirname "${0}"`/setup/gcc-build-environment.sh

setup_feature vim-7.2
setup_dependencies ncurses-5.7

trace_and_run ./configure `root_prefixes "vim-7.2"` \
  --disable-xsmp                                    \
  --disable-xsmp-interact                           \
  --disable-mzschemeinterp                          \
  --disable-perlinterp                              \
  --disable-pythoninterp                            \
  --disable-tclinterp                               \
  --disable-rubyinterp                              \
  --enable-cscope                                   \
  --disable-workshop                                \
  --disable-netbeans                                \
  --disable-sniff                                   \
  --disable-multibyte                               \
  --disable-hangulinput                             \
  --disable-xim                                     \
  --disable-fontset                                 \
  --disable-gui                                     \
  --disable-gtk-check                               \
  --disable-gtk2-check                              \
  --disable-gnome-check                             \
  --disable-motif-check                             \
  --disable-athena-check                            \
  --disable-nextaw-check                            \
  --disable-carbon-check                            \
  --disable-gtktest                                 \
  --disable-acl                                     \
  --disable-gpm                                     \
  --disable-sysmouse                                \
  --disable-nls                                     \
  --without-x                                       \
  --without-gnome                                   \
  "${@}"
