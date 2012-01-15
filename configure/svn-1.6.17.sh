# vim: set sw=2 tw=0:

. `dirname "${0}"`/setup/gcc-build-environment.sh

setup_dependencies \
  libiconv-1.14 \
  zlib-1.2.5 \
  apr-1.4 \
  apr-util-1.4 \
  neon-0.29 \
  sqlite-3.7 \

HTTPD_APXS=${ROOT}/httpd-2.2/bin/apxs
if [ -x "${HTTPD_APXS}" ]; then
  HTTPD_OPTIONS="--with-apxs=${HTTPD_APXS}"
else
  HTTPD_OPTIONS="--without-apxs --without-apache"
fi

trace_and_run ${SOURCE}/svn-1.6.17/configure `root_prefixes "svn-1.6.17"` \
  --disable-nls                            \
  --with-apr=`make_api_dir "apr-1.4"`               \
  --with-apr-util=`make_api_dir "apr-util-1.4"`     \
  --with-neon=`make_api_dir "neon-0.29"`            \
  --with-sqlite=`make_api_dir "sqlite-3.7"`            \
  ${HTTPD_OPTIONS}                         \
  --with-ssl                               \
  --with-zlib=`make_api_dir "zlib-1.2.5"`           \
  --without-berkeley-db                    \
  "${@}"
