# vim: set sw=2:

. `dirname "${0}"`/setup/build-environment.sh

setup_feature() 
{
  feature="${1}"
  source="${SOURCE}/${feature}"

  FEATURE="${2}"

  pwd=`pwd`
  location=`basename "${pwd}"`

  [ -d "${source}" ] || {
    echo "Source location ${source} not present"
    exit 2
  }

  [ "${location}" != "${feature}" ] && {
    echo "
    ${feature} needs to be built in-place. Make sure you are
    in an empty directory named ${feature} before launching 
    this script again.
    "

    exit 2
  }

  trace_and_run rm -rf * .[!.]* 
  trace_and_run cp -r "${source}"/. . 
}
