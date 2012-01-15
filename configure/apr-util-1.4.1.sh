# vim: set sw=2 tw=0:

. `dirname "${0}"`/setup/gcc-build-environment.sh

setup_dependencies \
  apr-1.4 \
  libiconv-1.14 \
  expat-2.0 \
  zlib-1.2.5 \

trace_and_run ${SOURCE}/apr-util-1.4.1/configure `root_lib_prefixes "apr-util-1.4.1"` \
 --with-apr=`make_api_dir "apr-1.4"`           \
  --without-berkeley-db                        \
  --without-pgsql                              \
  --without-mysql                              \
  --without-sqlite3                            \
  --without-sqlite2                            \
  --without-oracle                             \
  "${@}"

#  --with-expat=${ROOT}/expat-2.0               \

