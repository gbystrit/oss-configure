# vim: set sw=2 tw=0:

. `dirname "${0}"`/setup/top.sh

: ${BUILD_PLATFORM=${SYSID:-"`tsc-platform`"}}
: ${BUILD_ABILIB=lib}

case ${BUILD_PLATFORM} in
  suse-11-x64 | rh-*-amd64 | sun-*-x86)
    case "${BUILD_ABI}" in
      32)
        CFLAGS=-m32
        CXXFLAGS=-m32
      ;;
      64)
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

  hp11-*-pa)
    case "${BUILD_ABI}" in
      32)
      ;;
      64)
        GCC_ABI=64
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

  aix-*-ppc)
    case "${BUILD_ABI}" in
      32)
        BUILD_ABILIB="lib"
        CFLAGS="-maix32"
        CXXFLAGS="-maix32"
        AR_OBJECT_FLAGS="-X32"
      ;;
      32-pthread)
        BUILD_ABILIB="lib/pthread"
        CFLAGS="-pthread -maix32"
        CXXFLAGS="-pthread -maix32"
        AR_OBJECT_FLAGS="-X32"
      ;;
      64)
        BUILD_ABILIB="lib64"
        CFLAGS="-maix64"
        CXXFLAGS="-maix64"
        AR_OBJECT_FLAGS="-X64"
      ;;
      64-pthread)
        BUILD_ABILIB="lib64/pthread"
        CFLAGS="-pthread -maix64"
        CXXFLAGS="-pthread -maix64"
        AR_OBJECT_FLAGS="-X64"
      ;;
      "")
        echo 'Specify BUILD_ABI as 32, 64, 32-pthread or 64-pthread' 1>&2
        exit 2
      ;;
      *)
        echo 'Unknown BUILD_ABI "'"${BUILD_ABI}"'"' 1>&2
        exit 3
      ;;
    esac
  ;;

  sun-*-sparc)
    case "${BUILD_ABI}" in
      32)
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

  rh-*-x86 | mac-*-* )
  ;;

  *)
    echo 'Platform "'"${BUILD_PLATFORM}"'" not configured in "'"${SETUP}"/build-platform.sh'"' 1>&2
    [ "${FORCE_PLATFORM}" != "true" ] && {
      echo 'TIP: Set FORCE_PLATFORM to "true" to proceed anyway.'
      exit 3
    }
  ;;
esac

