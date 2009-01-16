# vim: set sw=2 tw=0:

. `dirname "${0}"`/setup/build-environment.sh

trace_and_run ${SOURCE}/sudo-1.7.0/configure --prefix=${ROOT}/sudo-1.7 \
  --disable-shared \
  --sysconfdir=/etc \
  --enable-static \
  --without-rpath \
  --with-ignore-dot \
  "${@}"

echo "Run the following commands as root after install:
  chown root:root ${ROOT}/sudo-1.7/bin/sudo 
  chmod 4755 ${ROOT}/sudo-1.7/bin/sudo 

"

echo "You can copy /etc/sudoers from ${TOP}/etc/sudoers and do:
  chown root:root /etc/sudoers
  chmod 440 /etc/sudoers
"
