# vim: set sw=2 tw=0:

. `dirname "${0}"`/setup/gcc-build-environment.sh

setup_dependencies \
  libiconv-1.14 \
  zlib-1.2.5 \
  apr-1.4 \
  apr-util-1.4 \
  neon-0.29 \
  sqlite-3.7 \

HTTPD_APXS=`make_top_dir "httpd-2.2"`/bin/apxs
if [ -x "${HTTPD_APXS}" ]; then
  HTTPD_OPTIONS="--with-apxs=${HTTPD_APXS}"
else
  HTTPD_OPTIONS="--without-apxs --without-apache"
fi

trace_and_run ${SOURCE}/svn-1.6.17/configure `root_prefixes "svn-1.6.17"` \
  --disable-nls                            \
  --with-apr=`make_abi_dir "apr-1.4"`               \
  --with-apr-util=`make_abi_dir "apr-util-1.4"`     \
  --with-neon=`make_abi_dir "neon-0.29"`            \
  --with-sqlite=`make_abi_dir "sqlite-3.7"`            \
  ${HTTPD_OPTIONS}                         \
  --with-ssl                               \
  --with-zlib=`make_abi_dir "zlib-1.2.5"`           \
  --without-berkeley-db                    \
  "${@}"
