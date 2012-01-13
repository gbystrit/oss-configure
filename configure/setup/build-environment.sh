# vim: set sw=2 tw=0:

. `dirname "${0}"`/setup/top.sh

[ "${TOOLS_ROOT:+set}" != set ] && echo '${TOOLS_ROOT}: tools location, default '"${TOP}"'/platorm/<platform_id>'
[ "${SYSID:+set}" != set ] && echo '${SYSID}: platform id, default `tsc-platform`'
[ "${BUILD_ABI:+set}" != set ] && echo '${BUILD_ABI}: 32 or 64, default 32 on 32-bit platforms (none on 64-bit)'
[ "${DISABLE_FEATURE:+set}" != set ] && echo '${DISABLE_FEATURE}: temporarily turn off a required feature'

: ${TOOLS_ROOT:="${TOP}/platform/${SYSID:?}"}
: ${ROOT_PREFIX:="${TOOLS_ROOT}"}

ROOT=${TOOLS_ROOT}

trace_and_run()
{
  echo "=> ${@}" 1>&2
  eval "${@}"

  [ "${?}" -ne 0 ] && {
    echo "... command failed with code ${?}"
    exit "${?}"
  }
  true
}

figure_config_shell()
{
  for s in ${CONFIG_SHELL} bash ksh sh; do
    set entry `type ${s} 2>&1`
    [ "${?}" -eq 0 ] && {
      shift
      while [ "${#}" -gt 1 ]; do
        shift
      done
      [ -x "${1}" ] && {
        echo "${1}"
        return 0
      }
    }
  done
  return 1
}

trace_and_run CONFIG_SHELL=`figure_config_shell`
[ "${CONFIG_SHELL:+set}" != set ] && {
  echo "Cannot figure CONFIG_SHELL" 1>&2
  exit 5
}

: ${GCC_VERSION:=3.4}
: ${CC:=gcc${GCC_ABI}-${GCC_VERSION}}
: ${CXX:=g++${GCC_ABI}-${GCC_VERSION}}
: ${CPP:="${CC} -E"}
: ${AR:="ar${GCC_ABI} ${AR_OBJECT_FLAGS}"}
: ${RANLIB:="ranlib${GCC_ABI} ${AR_OBJECT_FLAGS}"}

export GCC_VERSION CONFIG_SHELL CC CXX CPP AR RANLIB 

setup_dependencies() 
{
  for feature in "${@}"; do
    feature=`filter_disabled_feature "${feature}"`
    [ "${feature:+set}" = set ] || {
      continue
    }
    incdir=`make_include_dir "${feature}"`
    libdir=`make_lib_dir "${feature}"`

    for d in ${incdir} ${libdir}; do
      [ -d "${d}" ] || {
        echo "Required \"${d}\" not present"
        exit 2
      }
    done

    CPPFLAGS="${CPPFLAGS} -I${incdir}"
    LDFLAGS="${LDFLAGS} -L${libdir}"
  done

  export CPPFLAGS LDFLAGS
}

make_top_dir()
{
  echo ${ROOT_PREFIX}/${1:-${FEATURE}}
}

make_api_dir()
{
  echo `make_top_dir ${1}`/${BUILD_ABI:-.}
}

make_lib_dir()
{
  echo `make_top_dir ${1}`/${BUILD_ABI:-.}/lib
}

make_include_dir()
{
  echo `make_top_dir ${1}`/${BUILD_ABI:-.}/include
}

root_prefixes()
{
  echo --prefix=`make_top_dir "${@}"`
}

root_lib_prefixes()
{
  echo --prefix=`make_api_dir "${@}"`
}

filter_disabled_feature()
{
  for item in ${DISABLE_FEATURE}; do
    [ "${item}" = "${1}" ] && {
      return 0
    }
  done

  echo ${1}
  return 0
}
