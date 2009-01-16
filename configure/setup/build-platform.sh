# vim: set sw=2 tw=0:

. `dirname "${0}"`/setup/top.sh

: ${BUILD_PLATFORM="`tsc-platform`"}
: ${BUILD_ABILIB="lib"}

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
  rh-*-x86)
  ;;
  *)
    echo 'Platform "'"${BUILD_PLATFORM}"'" not configured in "'"${SETUP}"/platform.sh'"' 1>&2
    exit 3
  ;;
esac

