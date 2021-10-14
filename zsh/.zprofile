export PATH="$PATH:$HOME/.local/bin/"
export JAVA_HOME="/usr/lib/jvm/java-16-openjdk/"

if [ -n "$DESKTOP_SESSION" ];then
    eval $(gnome-keyring-daemon --start)
    export SSH_AUTH_SOCK
fi

if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
      exec startx
fi
