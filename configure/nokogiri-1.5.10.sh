# vim: set sw=2 tw=0:

. `dirname "${0}"`/setup/gcc-build-environment.sh

setup_dependencies \
  zlib-1.2.5 \
  libiconv-1.14 \
  libxml2-2.7 \
  libxslt-1.1 \

trace_and_run gem install nokogiri -v 1.5.10 --no-rdoc --no-ri -- \
    --with-xslt-include=`make_include_dir "libxslt-1.1"` \
    --with-xslt-lib=`make_lib_dir "libxslt-1.1"` \
    --with-xml2-include=`make_include_dir "libxml2-2.7"`/libxml2 \
    --with-xml2-lib=`make_lib_dir "libxml2-2.7"` \
