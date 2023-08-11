export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
export NNN_PLUG='d:dragdrop'

if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
      exec startx
fi
