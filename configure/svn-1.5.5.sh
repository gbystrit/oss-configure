# vim: set sw=2 tw=0:

. /opt/quest/source/configure/setup-build-environment.sh

setup_dependencies \
  libiconv-1.12 \
  zlib-1.2.3 \
  apr-1.3 \
  apr-util-1.3 \
  openssl-0.9 \
  neon-0.28 \

HTTPD_APXS=${ROOT}/httpd-2.2/bin/apxs
if [ -x "${HTTPD_APXS}" ]; then
  HTTPD_OPTIONS="--with-apxs=${HTTPD_APXS}"
else
  HTTPD_OPTIONS="--without-apxs --without-apache"
fi

trace_and_run ${SOURCE}/svn-1.5.5/configure --prefix=${ROOT}/svn-1.5 \
  --disable-nls                            \
  --with-apr=${ROOT}/apr-1.3               \
  --with-apr-util=${ROOT}/apr-util-1.3     \
  --with-neon=${ROOT}/neon-0.28            \
  ${HTTPD_OPTIONS}                         \
  --with-ssl                               \
  --with-zlib=${ROOT}/zlib-1.2.3           \
  --without-berkeley-db                    \
  "${@}"
