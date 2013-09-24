# vim: set sw=2 tw=0:

. `dirname "${0}"`/setup/gcc-build-environment.sh

setup_dependencies \
  libiconv-1.12 \
  zlib-1.2.3 \
  apr-1.3 \
  apr-util-1.3 \
  neon-0.28 \

HTTPD_APXS=${ROOT}/httpd-2.2/bin/apxs
if [ -x "${HTTPD_APXS}" ]; then
  HTTPD_OPTIONS="--with-apxs=${HTTPD_APXS}"
else
  HTTPD_OPTIONS="--without-apxs --without-apache"
fi

trace_and_run ${SOURCE}/svn-1.5.5/configure `root_prefixes "svn-1.5.5"` \
  --disable-nls                            \
  --with-apr=`make_abi_dir "apr-1.3"`               \
  --with-apr-util=`make_abi_dir "apr-util-1.3"`     \
  --with-neon=`make_abi_dir "neon-0.28"`            \
  ${HTTPD_OPTIONS}                         \
  --with-ssl                               \
  --with-zlib=`make_abi_dir "zlib-1.2.3"`           \
  --without-berkeley-db                    \
  "${@}"
