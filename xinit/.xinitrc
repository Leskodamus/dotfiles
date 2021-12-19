[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# set WM to non-reparenting for java applications
export _JAVA_AWT_WM_NONREPARENTING=1

# apply correct qt theme
export QT_QPA_PLATFORMTHEME=qt5ct

# gpg and vi 
export GPG_TTY="tty"

# gnome-keyring and ssh
eval $(gnome-keyring-daemon --start)
export SSH_AUTH_SOCK

# start wm
exec dwm
