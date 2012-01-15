# vim: set sw=2:

. `dirname "${0}"`/setup/in-place.sh
. `dirname "${0}"`/setup/gcc-build-environment.sh

setup_feature git-1.7.3.2
setup_dependencies \
  libiconv-1.14 \
  openssl-0.9 \
  zlib-1.2.5 \
  expat-2.0 \

trace_and_run ./configure `root_prefixes "git-1.7.3.2"` \
  --with-openssl \
  --with-perl=`make_top_dir "perl-5"`/bin/perl \
  "${@}"

