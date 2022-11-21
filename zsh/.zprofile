export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
export GTK_THEME=Adwaita:dark

if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
      exec startx
fi
