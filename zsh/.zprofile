export PATH="$PATH:$HOME/.local/bin/"
export JAVA_HOME="/usr/lib/jvm/java-17-openjdk/"
export QT_QPA_PLATFORMTHEME=gtk2
export NNN_PLUG='d:dragdrop'

if [ -n "$DESKTOP_SESSION" ];then
    eval $(gnome-keyring-daemon --start)
    export SSH_AUTH_SOCK
fi

if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
      exec startx
fi
