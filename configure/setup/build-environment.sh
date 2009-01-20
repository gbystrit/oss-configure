# vim: set sw=2 tw=0:

. `dirname "${0}"`/setup/top.sh

ROOT="${TOP}/platform/${SYSID:?}"

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
: ${CC:=gcc-${GCC_VERSION}}
: ${CXX:=g++-${GCC_VERSION}}
: ${CPP:="${CC} -E"}

export GCC_VERSION CONFIG_SHELL CC CXX CPP

setup_dependencies() 
{
  for feature in "${@}"; do
    incdir="${ROOT}/${feature}/include"
    libdir="${ROOT}/${feature}/${BUILD_ABILIB:-lib}"

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

root_prefixes()
{
  echo --prefix=${ROOT}/${1}
}

root_lib_prefixes()
{
  echo `root_prefixes "${@}"` --libdir=${ROOT}/${1}/${BUILD_ABILIB:-lib}
}
