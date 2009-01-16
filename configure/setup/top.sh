# vim: set sw=2 tw=0:

case "${0}" in
  /*)
  ;;
  *)
    echo 'Please invoke "'"${0}"'" with an absolute path.'
    exit 5
  ;;
esac

CONFIG_INVOKER=`basename "${0}"`

components="${0}"
while true; do
  case `basename "${components}"` in
    ${CONFIG_INVOKER} | setup) 
    ;;
    configure) 
      CONFIGURE="${components}"
    ;;
    source)
      SOURCE="${components}"
    ;;
    *)
      break
    ;;
  esac
  components=`dirname "${components}"`
done

SETUP="${CONFIGURE}/setup"
TOP="${components}"

: ${SYSID:="`tsc-platform`"}
