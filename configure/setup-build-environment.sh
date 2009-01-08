# vim: set sw=2 tw=0:

TOP="/opt/quest"
SOURCE="${TOP}/source"
ROOT="${TOP}/platform/${SYSID:?}"

: ${GCC_VERSION:=3.4}
: ${CONFIG_SHELL:=ksh}
: ${CC:=gcc-${GCC_VERSION}}
: ${CXX:=g++-${GCC_VERSION}}

export GCC_VERSION CONFIG_SHELL CC CXX

setup_dependencies() 
{
  for feature in "${@}"; do
    incdir="${ROOT}/${feature}/include"
    libdir="${ROOT}/${feature}/lib"

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

trace_and_run()
{
  echo "=> ${@}" 1>&2
  "${@}"

  [ "${?}" -ne 0 ] && {
    echo "... command failed with code ${?}"
    exit "${?}"
  }
  true
}
