# vim: set tw=0:

. /opt/quest/source/configure/setup-build-environment.sh

setup_dependencies \
  libiconv-1.12 \
  openssl-0.9 \
  zlib-1.2.3 \
  expat-2.0 \
  apr-1.3 \
  apr-util-1.3 \

trace_and_run ${SOURCE}/httpd-2.2.11/configure --prefix=${ROOT}/httpd-2.2 \
  --without-rpath                      \
  --with-apr=${ROOT}/apr-1.3           \
  --with-apr-util=${ROOT}/apr-util-1.3 \
  --with-ssl=${ROOT}/openssl-0.9       \
  --with-z=${ROOT}/zlib-1.2.3          \
  --enable-shared                      \
  --enable-auth-anon                   \
  --enable-include                     \
  --enable-deflate                     \
  --enable-mime-magic                  \
  --enable-cern-meta                   \
  --enable-expires                     \
  --enable-headers                     \
  --enable-usertrack                   \
  --enable-unique-id                   \
  --disable-setenvif                   \
  --enable-proxy                       \
  --enable-proxy-connect               \
  --enable-proxy-ftp                   \
  --enable-proxy-http                  \
  --enable-ssl                         \
  --enable-http                        \
  --enable-dav                         \
  --enable-dav-fs                      \
  --enable-status                      \
  --enable-asis                        \
  --enable-info                        \
  --enable-suexec                      \
  --enable-cgi                         \
  --enable-cgid                        \
  --enable-vhost-alias                 \
  --enable-alias                       \
  --enable-rewrite                     \
  --enable-so                          \
  "${@}"
