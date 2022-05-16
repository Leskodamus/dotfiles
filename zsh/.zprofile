export PATH="$HOME/.local/bin:$PATH"
export JAVA_HOME="/usr/lib/jvm/default/"
export QT_QPA_PLATFORMTHEME=gtk2
export NNN_PLUG='d:dragdrop'

if [ -n "$DESKTOP_SESSION" ];then
    eval $(gnome-keyring-daemon --start)
    export SSH_AUTH_SOCK
fi

if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
      exec startx
fi
