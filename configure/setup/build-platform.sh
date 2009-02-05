# vim: set sw=2 tw=0:

. `dirname "${0}"`/setup/top.sh

: ${BUILD_PLATFORM=${SYSID:-"`tsc-platform`"}}
: ${BUILD_ABILIB=lib}

case ${BUILD_PLATFORM} in
  rh-40-amd64)
    case "${BUILD_ABI}" in
      32)
        CFLAGS=-m32
        CXXFLAGS=-m32
      ;;
      64)
        CFLAGS=-m64
        CXXFLAGS=-m64
        BUILD_ABILIB="lib64"
      ;;
      "")
        echo 'Specify BUILD_ABI as "'"32"'" or "'"64"'"' 1>&2
        exit 2
      ;;
      *)
        echo 'Unknown BUILD_ABI "'"${BUILD_ABI}"'"' 1>&2
        exit 3
      ;;
    esac
  ;;

  hp11-23-ia64)
    case "${BUILD_ABI}" in
      32)
      ;;
      64)
        CFLAGS=-mlp64
        CXXFLAGS=-mlp64
        BUILD_ABILIB="lib"
      ;;
      "")
        echo 'Specify BUILD_ABI as "'"32"'" or "'"64"'"' 1>&2
        exit 2
      ;;
      *)
        echo 'Unknown BUILD_ABI "'"${BUILD_ABI}"'"' 1>&2
        exit 3
      ;;
    esac
  ;;
  rh-*-x86 | sun-*-sparc | sun-*-x86 | mac-*-*)
  ;;
  *)
    echo 'Platform "'"${BUILD_PLATFORM}"'" not configured in "'"${SETUP}"/build-platform.sh'"' 1>&2
    exit 3
  ;;
esac

