# vim: set sw=2 tw=0:

. /opt/quest/source/configure/setup-build-environment.sh

setup_dependencies \
  apr-1.3 \
  libiconv-1.12 \
  expat-2.0 \
  zlib-1.2.3 \
  openssl-0.9 \

trace_and_run ${SOURCE}/apr-util-1.3.4/configure --prefix=${ROOT}/apr-util-1.3 \
  --enable-shared                              \
  --without-berkeley-db                        \
  --with-apr=${ROOT}/apr-1.3                   \
  --with-expat=${ROOT}/expat-2.0               \
  --without-pgsql                              \
  --without-mysql                              \
  --without-sqlite3                            \
  --without-sqlite2                            \
  --without-oracle                             \
  "${@}"

