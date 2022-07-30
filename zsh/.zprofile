# nnn plugins
export NNN_PLUG='d:dragdrop'

# Start wm ("autologin")
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
      exec startx
fi

